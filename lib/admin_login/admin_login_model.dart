import '/flutter_flow/flutter_flow_util.dart';
import 'admin_login_widget.dart' show AdminLoginWidget;
import 'package:flutter/material.dart';

class AdminLoginModel extends FlutterFlowModel<AdminLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AdminLoginName widget.
  FocusNode? adminLoginNameFocusNode;
  TextEditingController? adminLoginNameTextController;
  String? Function(BuildContext, String?)?
      adminLoginNameTextControllerValidator;
  // State field(s) for AdminPass widget.
  FocusNode? adminPassFocusNode;
  TextEditingController? adminPassTextController;
  late bool adminPassVisibility;
  String? Function(BuildContext, String?)? adminPassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    adminPassVisibility = false;
  }

  @override
  void dispose() {
    adminLoginNameFocusNode?.dispose();
    adminLoginNameTextController?.dispose();

    adminPassFocusNode?.dispose();
    adminPassTextController?.dispose();
  }
}
