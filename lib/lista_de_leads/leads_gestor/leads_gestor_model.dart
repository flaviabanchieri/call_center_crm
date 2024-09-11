import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets_compartilhados/header/header_widget.dart';
import '/widgets_compartilhados/sidenav/sidenav_widget.dart';
import 'leads_gestor_widget.dart' show LeadsGestorWidget;
import 'package:flutter/material.dart';

class LeadsGestorModel extends FlutterFlowModel<LeadsGestorWidget> {
  ///  Local state fields for this page.

  int view = 1;

  List<String> emAndamento = ['Thais Robertson', 'João Rocha', 'Anna Silva'];
  void addToEmAndamento(String item) => emAndamento.add(item);
  void removeFromEmAndamento(String item) => emAndamento.remove(item);
  void removeAtIndexFromEmAndamento(int index) => emAndamento.removeAt(index);
  void insertAtIndexInEmAndamento(int index, String item) =>
      emAndamento.insert(index, item);
  void updateEmAndamentoAtIndex(int index, Function(String) updateFn) =>
      emAndamento[index] = updateFn(emAndamento[index]);

  List<String> entrarEmContato = ['Maria Roca', 'Luis de Sá'];
  void addToEntrarEmContato(String item) => entrarEmContato.add(item);
  void removeFromEntrarEmContato(String item) => entrarEmContato.remove(item);
  void removeAtIndexFromEntrarEmContato(int index) =>
      entrarEmContato.removeAt(index);
  void insertAtIndexInEntrarEmContato(int index, String item) =>
      entrarEmContato.insert(index, item);
  void updateEntrarEmContatoAtIndex(int index, Function(String) updateFn) =>
      entrarEmContato[index] = updateFn(entrarEmContato[index]);

  List<dynamic> listaLeadEntrarEmContato = [];
  void addToListaLeadEntrarEmContato(dynamic item) =>
      listaLeadEntrarEmContato.add(item);
  void removeFromListaLeadEntrarEmContato(dynamic item) =>
      listaLeadEntrarEmContato.remove(item);
  void removeAtIndexFromListaLeadEntrarEmContato(int index) =>
      listaLeadEntrarEmContato.removeAt(index);
  void insertAtIndexInListaLeadEntrarEmContato(int index, dynamic item) =>
      listaLeadEntrarEmContato.insert(index, item);
  void updateListaLeadEntrarEmContatoAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaLeadEntrarEmContato[index] =
          updateFn(listaLeadEntrarEmContato[index]);

  String? listaCodigoProduto = '';

  bool? exibirPesquisaEntrarEmContato = false;

  List<String> listaNomeLead = [];
  void addToListaNomeLead(String item) => listaNomeLead.add(item);
  void removeFromListaNomeLead(String item) => listaNomeLead.remove(item);
  void removeAtIndexFromListaNomeLead(int index) =>
      listaNomeLead.removeAt(index);
  void insertAtIndexInListaNomeLead(int index, String item) =>
      listaNomeLead.insert(index, item);
  void updateListaNomeLeadAtIndex(int index, Function(String) updateFn) =>
      listaNomeLead[index] = updateFn(listaNomeLead[index]);

  List<dynamic> listaLeadEmProgresso = [];
  void addToListaLeadEmProgresso(dynamic item) =>
      listaLeadEmProgresso.add(item);
  void removeFromListaLeadEmProgresso(dynamic item) =>
      listaLeadEmProgresso.remove(item);
  void removeAtIndexFromListaLeadEmProgresso(int index) =>
      listaLeadEmProgresso.removeAt(index);
  void insertAtIndexInListaLeadEmProgresso(int index, dynamic item) =>
      listaLeadEmProgresso.insert(index, item);
  void updateListaLeadEmProgressoAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaLeadEmProgresso[index] = updateFn(listaLeadEmProgresso[index]);

  List<dynamic> listaLeadAguardandoAprovacao = [];
  void addToListaLeadAguardandoAprovacao(dynamic item) =>
      listaLeadAguardandoAprovacao.add(item);
  void removeFromListaLeadAguardandoAprovacao(dynamic item) =>
      listaLeadAguardandoAprovacao.remove(item);
  void removeAtIndexFromListaLeadAguardandoAprovacao(int index) =>
      listaLeadAguardandoAprovacao.removeAt(index);
  void insertAtIndexInListaLeadAguardandoAprovacao(int index, dynamic item) =>
      listaLeadAguardandoAprovacao.insert(index, item);
  void updateListaLeadAguardandoAprovacaoAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaLeadAguardandoAprovacao[index] =
          updateFn(listaLeadAguardandoAprovacao[index]);

  List<dynamic> listaLeadConcluido = [];
  void addToListaLeadConcluido(dynamic item) => listaLeadConcluido.add(item);
  void removeFromListaLeadConcluido(dynamic item) =>
      listaLeadConcluido.remove(item);
  void removeAtIndexFromListaLeadConcluido(int index) =>
      listaLeadConcluido.removeAt(index);
  void insertAtIndexInListaLeadConcluido(int index, dynamic item) =>
      listaLeadConcluido.insert(index, item);
  void updateListaLeadConcluidoAtIndex(int index, Function(dynamic) updateFn) =>
      listaLeadConcluido[index] = updateFn(listaLeadConcluido[index]);

  bool carregando = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Lista de Nomes Lead)] action in LeadsGestor widget.
  ApiCallResponse? apiListaNomeLeads;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in LeadsGestor widget.
  ApiCallResponse? listaIniciarEntrarEmContato;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in LeadsGestor widget.
  ApiCallResponse? listaIniciarLeadEmProgresso;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in LeadsGestor widget.
  ApiCallResponse? listaIniciarLeadAguandoAprovacao;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in LeadsGestor widget.
  ApiCallResponse? listaIniciarLeadConcluido;
  // Model for Sidenav component.
  late SidenavModel sidenavModel;
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for DropDownProdutos widget.
  String? dropDownProdutosValue;
  FormFieldController<String>? dropDownProdutosValueController;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownProdutos widget.
  ApiCallResponse? apiResultLeadEntrarEmContatoFiltro;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownProdutos widget.
  ApiCallResponse? apiResultLeadEmAndamentoFiltro;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownProdutos widget.
  ApiCallResponse? apiResultLeadAguardandoConfirmacaoFiltro;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownProdutos widget.
  ApiCallResponse? apiResultLeadConcluidoFiltro;
  // State field(s) for DropDownOrigem widget.
  String? dropDownOrigemValue;
  FormFieldController<String>? dropDownOrigemValueController;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownOrigem widget.
  ApiCallResponse? apiResultLeadEntrarEmContatoFiltroOrigem;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownOrigem widget.
  ApiCallResponse? apiResultLeadEmAndamentoFiltroOrigem;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownOrigem widget.
  ApiCallResponse? apiResultLeadAguardandoConfirmacaoFiltroOrigem;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownOrigem widget.
  ApiCallResponse? apiResultLeadConcluidoFiltroOrigem;
  // State field(s) for DropDownLead widget.
  String? dropDownLeadValue;
  FormFieldController<String>? dropDownLeadValueController;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownLead widget.
  ApiCallResponse? apiResultLeadEntrarEmContatoFiltroNome;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownLead widget.
  ApiCallResponse? apiResultLeadEmAndamentoFiltroNome;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownLead widget.
  ApiCallResponse? apiResultLeadAguardandoConfirmacaoFiltroNome;
  // Stores action output result for [Backend Call - API (Filtra leads)] action in DropDownLead widget.
  ApiCallResponse? apiResultLeadConcluidoFiltroNome;

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
