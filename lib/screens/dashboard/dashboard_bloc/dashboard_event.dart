part of 'dashboard_bloc.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
}

class DashboardLoadApiEvent extends DashboardEvent {
  @override
  List<Object> get props => [];
}
