import '/flutter_flow/flutter_flow_util.dart';
import 'arquivo_visualizar_widget.dart' show ArquivoVisualizarWidget;
import 'package:flutter/material.dart';

class ArquivoVisualizarModel extends FlutterFlowModel<ArquivoVisualizarWidget> {
  ///  Local state fields for this component.

  String? url;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
