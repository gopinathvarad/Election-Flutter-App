import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'voter_signin_widget.dart' show VoterSigninWidget;
import 'package:flutter/material.dart';

class VoterSigninModel extends FlutterFlowModel<VoterSigninWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for ConstituencyDN widget.
  String? constituencyDNValue;
  FormFieldController<String>? constituencyDNValueController;
  // State field(s) for EmailTextfield widget.
  FocusNode? emailTextfieldFocusNode;
  TextEditingController? emailTextfieldTextController;
  String? Function(BuildContext, String?)?
      emailTextfieldTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailTextfieldFocusNode?.dispose();
    emailTextfieldTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
