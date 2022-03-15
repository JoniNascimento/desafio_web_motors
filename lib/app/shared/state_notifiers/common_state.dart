import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'common_state.freezed.dart';



/// USE CASE
/// when you have a state notifier with a simple state like, initial, loading,
/// success and failed 
/// 
/// HOW TO USE
///
/// typedef ExampleState = CommonState<ExampleFailed, ExampleSuccessful, bool>;
///
///`bool` the [booleanOptions] is a second argument from success
/// when you need check something
///

@freezed
abstract class CommonState<Failed, Success>
    with _$CommonState<Failed, Success> {
  const factory CommonState.initial() = CommonStateInitial;
  const factory CommonState.loading() = CommonStateLoading;
  const factory CommonState.failed(Failed fail) = CommonStateFailed;
  const factory CommonState.successful(Success success, bool booleanOption) =
      CommonStateSuccessful;
}
