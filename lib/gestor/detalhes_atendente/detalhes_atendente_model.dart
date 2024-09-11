import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets_compartilhados/header/header_widget.dart';
import '/widgets_compartilhados/sidenav/sidenav_widget.dart';
import 'detalhes_atendente_widget.dart' show DetalhesAtendenteWidget;
import 'package:flutter/material.dart';

class DetalhesAtendenteModel extends FlutterFlowModel<DetalhesAtendenteWidget> {
  ///  Local state fields for this page.

  double? vendasRealizadas;

  double? faturamento;

  int? ligacoesRealizadas;

  String? tempoMedio;

  String? nome;

  String? email;

  String? img;

  String? codigo;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Relatorio Ligacoes)] action in detalhesAtendente widget.
  ApiCallResponse? apiResultRelatorioFiltro;
  // Stores action output result for [Backend Call - API (Quantidade de vendas por atendente)] action in detalhesAtendente widget.
  ApiCallResponse? vendas;
  // Stores action output result for [Backend Call - API (Count Relatorio Ligacoes)] action in detalhesAtendente widget.
  ApiCallResponse? queryCountLigacoesEmAndamentoPesquisa;
  // Stores action output result for [Backend Call - API (Count Relatorio Ligacoes)] action in detalhesAtendente widget.
  ApiCallResponse? apiResultRelatorioCountFiltro;
  // Stores action output result for [Backend Call - API (Relatorio Tempo Ligacoes)] action in detalhesAtendente widget.
  ApiCallResponse? apiResultRelatorioTempoLigacaoFiltro;
  // Stores action output result for [Backend Call - API (Relatorio Media Tempo Ligacao)] action in detalhesAtendente widget.
  ApiCallResponse? apiResultRelatorioMediaTempoLigacaoFiltro;
  // Stores action output result for [Backend Call - API (Relatorio Faturamento)] action in detalhesAtendente widget.
  ApiCallResponse? pesquisaApiFaturamento;
  // Stores action output result for [Backend Call - Query Rows] action in detalhesAtendente widget.
  List<UsuarioRow>? supabaseAtendente;
  // Model for Sidenav component.
  late SidenavModel sidenavModel;
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    headerModel.dispose();
    tabBarController?.dispose();
  }
}
