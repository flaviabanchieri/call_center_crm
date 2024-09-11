import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'lead_open_widget.dart' show LeadOpenWidget;
import 'package:flutter/material.dart';

class LeadOpenModel extends FlutterFlowModel<LeadOpenWidget> {
  ///  Local state fields for this component.

  bool? mostrarReagendar = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Terminar Ligacao)] action in Button widget.
  ApiCallResponse? terminarLigacao;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
