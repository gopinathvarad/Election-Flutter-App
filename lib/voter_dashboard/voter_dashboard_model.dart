import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'voter_dashboard_widget.dart' show VoterDashboardWidget;
import 'package:flutter/material.dart';

class VoterDashboardModel extends FlutterFlowModel<VoterDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ConstiutencySelected widget.
  String? constiutencySelectedValue;
  FormFieldController<String>? constiutencySelectedValueController;
  // State field(s) for PartySelected widget.
  String? partySelectedValue;
  FormFieldController<String>? partySelectedValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
