import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_senha_widget.dart' show AlterarSenhaWidget;
import 'package:flutter/material.dart';

class AlterarSenhaModel extends FlutterFlowModel<AlterarSenhaWidget> {
  ///  Local state fields for this page.

  String? erro;

  String? msgErro;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for password_confirmed widget.
  FocusNode? passwordConfirmedFocusNode;
  TextEditingController? passwordConfirmedTextController;
  late bool passwordConfirmedVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmedTextControllerValidator;
  // Stores action output result for [Backend Call - API (Alterar Senha)] action in Button widget.
  ApiCallResponse? retornoAlterarSenha;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmedVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmedFocusNode?.dispose();
    passwordConfirmedTextController?.dispose();
  }
}
