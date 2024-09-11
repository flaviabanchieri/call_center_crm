import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets_compartilhados/header/header_widget.dart';
import '/widgets_compartilhados/sidenav/sidenav_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int? countPonto = 0;

  List<RankingRow> listaHanking = [];
  void addToListaHanking(RankingRow item) => listaHanking.add(item);
  void removeFromListaHanking(RankingRow item) => listaHanking.remove(item);
  void removeAtIndexFromListaHanking(int index) => listaHanking.removeAt(index);
  void insertAtIndexInListaHanking(int index, RankingRow item) =>
      listaHanking.insert(index, item);
  void updateListaHankingAtIndex(int index, Function(RankingRow) updateFn) =>
      listaHanking[index] = updateFn(listaHanking[index]);

  int? countAgendamento = 0;

  int? countAtrasados = 0;

  String? nomeLead = 'Nome Lead';

  String? telefoneLead;

  String? nomeProduto;

  String? origemLead;

  int? idLead;

  int? minutosProximoAgendamento;

  int? leadCarrinhoAbandonado;

  int? leadCartaoCancelado;

  int? leadPix;

  int? outrosLeads;

  double? faturamento = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Obter ultimo usuario ponto)] action in HomePage widget.
  ApiCallResponse? apiRetornoUsuarioPonto;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<RankingRow>? listaHankingInicial;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ViewLeadRow>? retornoLeadsAgendadosHoje;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ViewLeadRow>? queryLeadCarrinhoAbandonado;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ViewLeadRow>? queryLeadCartaoCancelado;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ViewLeadRow>? queryLeadPix;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ViewLeadRow>? queryLeadUpsell;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ViewLeadRow>? queryLeadAgendaAtrasada;
  // Model for Sidenav component.
  late SidenavModel sidenavModel;
  // Model for header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    headerModel.dispose();
  }
}
