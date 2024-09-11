import '/flutter_flow/flutter_flow_util.dart';
import 'arquivo_widget.dart' show ArquivoWidget;
import 'package:flutter/material.dart';

class ArquivoModel extends FlutterFlowModel<ArquivoWidget> {
  ///  Local state fields for this component.

  String? url;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
