import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'load_widget.dart' show LoadWidget;
import 'package:flutter/material.dart';

class LoadModel extends FlutterFlowModel<LoadWidget> {
  ///  Local state fields for this page.

  int? permissao = 0;

  bool? passwordDefault = false;

  DateTime? dataInicial;

  DateTime? dataFinal;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Load widget.
  List<UsuarioRow>? consultaUsuario;
  // Stores action output result for [Backend Call - API (Quantidade de Leads por periodo)] action in Load widget.
  ApiCallResponse? apiQuantidadeLeadsLoad;
  // Stores action output result for [Backend Call - API (Quantidade Leads Concluido)] action in Load widget.
  ApiCallResponse? apiCountLeadConcluidoLoad;
  // Stores action output result for [Backend Call - API (Quantidade Vendas Realizadas)] action in Load widget.
  ApiCallResponse? apiResultQuantidadeVendasLoad;
  // Stores action output result for [Backend Call - API (Faturamento Mensal)] action in Load widget.
  ApiCallResponse? apiResultFaturamentoMensalLoad;
  // Stores action output result for [Backend Call - Query Rows] action in Load widget.
  List<ConfiguracoesRow>? queryConfiguracaoInicialLoad;
  // Stores action output result for [Backend Call - API (Quantidade de Leads Atendente)] action in Load widget.
  ApiCallResponse? retuurnCountLeadsAtendenteLoad;
  // Stores action output result for [Backend Call - Query Rows] action in Load widget.
  List<LigacoesRow>? queryQuantidadeLigacoes;
  // Stores action output result for [Backend Call - API (Quantidade de Leads concluidos por Atendente)] action in Load widget.
  ApiCallResponse? retornoApiLeadsConcluidosAtendente;
  // Stores action output result for [Backend Call - API (Quantidade de vendas por atendente)] action in Load widget.
  ApiCallResponse? apiReturQuantidadeVendasAtendente;
  // Stores action output result for [Backend Call - API (Relatorio Faturamento)] action in Load widget.
  ApiCallResponse? faturamentoAtendente;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
