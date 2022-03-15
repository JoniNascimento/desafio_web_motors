import 'package:desafio_web_motors/app/feature/main_list/components/vehicle_card.dart';
import 'package:desafio_web_motors/app/feature/main_list/providers/main_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainListScreen extends ConsumerStatefulWidget {
  const MainListScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MainListScreen> createState() => _MainListScreenState();
}

class _MainListScreenState extends ConsumerState<MainListScreen> {
  
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  
  @override
  void initState() {
    ref.read(mainVehicleListStateNotifierProvider.notifier).getVechiclesList(1);
    super.initState();
  }
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Revendedor')),
        body: Container(
          color: Colors.grey,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12),
          child: Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(mainVehicleListStateNotifierProvider);
              return state.maybeWhen(
                  successful: (success, _) {
                    return SmartRefresher(
                      controller: _refreshController,
                      enablePullUp: true,
                      onRefresh: () {
                        _refreshController.refreshCompleted();                      
                      },
                      onLoading: () {
                        ref
                            .read(mainVehicleListStateNotifierProvider.notifier)
                            .getVechiclesList(currentPage);
                        if (success.isNotEmpty) {
                          _refreshController.loadComplete();
                        } else {
                          _refreshController.loadFailed();
                        }                      
                          currentPage++;
                      },
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            final vehicle = success[index];
                            return VechicleCard(
                              vehicle: vehicle,
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 12,
                              ),
                          itemCount: success.length),
                    );
                  },
                  orElse: () => Container());
            },
          ),
        ));
  }
}
