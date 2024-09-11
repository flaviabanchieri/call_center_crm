import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets_compartilhados/header/header_widget.dart';
import '/widgets_compartilhados/sidenav/sidenav_widget.dart';
import 'dart:async';
import 'info_lead_widget.dart' show InfoLeadWidget;
import 'package:flutter/material.dart';

class InfoLeadModel extends FlutterFlowModel<InfoLeadWidget> {
  ///  Local state fields for this page.

  bool mostrarDadosPessoais = false;

  String? urlCheckout;

  double? vlrProduto = 0.0;

  DateTime? dataInicial;

  DateTime? dataFinal;

  ///  State fields for stateful widgets in this page.

  // Model for Sidenav component.
  late SidenavModel sidenavModel;
  // Model for header component.
  late HeaderModel headerModel;
  // Stores action output result for [Backend Call - API (Click to Call)] action in Button widget.
  ApiCallResponse? fazerligacao;
  Completer<List<ViewLeadRow>>? requestCompleter3;
  Completer<List<ViewLigacoesRow>>? requestCompleter2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProdutoRow>? queryListaProdutosUrl;
  Completer<List<ViewLeadComprovantesRow>>? requestCompleter1;
  // Stores action output result for [Backend Call - API (Relatorio Faturamento)] action in btn_aprovar_venda widget.
  ApiCallResponse? apiFaturamentoUsuario;
  // Stores action output result for [Backend Call - API (Quantidade de vendas por atendente)] action in btn_aprovar_venda widget.
  ApiCallResponse? apiQuantifadeVendas;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // Stores action output result for [Backend Call - API (gravacoes)] action in IconButton widget.
  ApiCallResponse? apiResult218;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    headerModel.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
