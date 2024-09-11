import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets_compartilhados/header/header_widget.dart';
import '/widgets_compartilhados/sidenav/sidenav_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'detalhes_atendente_model.dart';
export 'detalhes_atendente_model.dart';

class DetalhesAtendenteWidget extends StatefulWidget {
  const DetalhesAtendenteWidget({
    super.key,
    required this.atendenteId,
  });

  final String? atendenteId;

  @override
  State<DetalhesAtendenteWidget> createState() =>
      _DetalhesAtendenteWidgetState();
}

class _DetalhesAtendenteWidgetState extends State<DetalhesAtendenteWidget>
    with TickerProviderStateMixin {
  late DetalhesAtendenteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhesAtendenteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultRelatorioFiltro = await RelatorioLigacoesCall.call(
        atendente: valueOrDefault<String>(
          widget.atendenteId,
          '0',
        ),
      );

      _model.vendas = await QuantidadeDeVendasPorAtendenteCall.call(
        atendente: valueOrDefault<String>(
          widget.atendenteId,
          '0',
        ),
      );

      _model.queryCountLigacoesEmAndamentoPesquisa =
          await CountRelatorioLigacoesCall.call(
        status: 'Entrar em contato',
        atendente: valueOrDefault<String>(
          widget.atendenteId,
          '0',
        ),
      );

      _model.apiResultRelatorioCountFiltro =
          await CountRelatorioLigacoesCall.call(
        atendente: valueOrDefault<String>(
          widget.atendenteId,
          '0',
        ),
      );

      _model.apiResultRelatorioTempoLigacaoFiltro =
          await RelatorioTempoLigacoesCall.call(
        atendente: valueOrDefault<String>(
          widget.atendenteId,
          '0',
        ),
      );

      _model.apiResultRelatorioMediaTempoLigacaoFiltro =
          await RelatorioMediaTempoLigacaoCall.call(
        atendente: valueOrDefault<String>(
          widget.atendenteId,
          '0',
        ),
      );

      _model.pesquisaApiFaturamento = await RelatorioFaturamentoCall.call(
        usuario: valueOrDefault<String>(
          widget.atendenteId,
          '0',
        ),
      );

      _model.supabaseAtendente = await UsuarioTable().queryRows(
        queryFn: (q) => q.eq(
          'user',
          widget.atendenteId,
        ),
      );
      _model.vendasRealizadas = getJsonField(
        (_model.vendas?.jsonBody ?? ''),
        r'''$''',
      );
      _model.faturamento = getJsonField(
        (_model.pesquisaApiFaturamento?.jsonBody ?? ''),
        r'''$''',
      );
      _model.ligacoesRealizadas = getJsonField(
        (_model.apiResultRelatorioCountFiltro?.jsonBody ?? ''),
        r'''$''',
      );
      _model.tempoMedio = getJsonField(
        (_model.apiResultRelatorioMediaTempoLigacaoFiltro?.jsonBody ?? ''),
        r'''$''',
      ).toString().toString();
      _model.nome = valueOrDefault<String>(
        _model.supabaseAtendente?.first.nome,
        'Nome',
      );
      _model.email = valueOrDefault<String>(
        _model.supabaseAtendente?.first.email,
        'Email',
      );
      _model.img = valueOrDefault<String>(
        _model.supabaseAtendente?.first.foto,
        'Nome',
      );
      _model.codigo = valueOrDefault<String>(
        _model.supabaseAtendente?.first.codigoPayt,
        'Sem código',
      );
      safeSetState(() {});
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 90.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 90.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 90.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 90.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UsuarioRow>>(
      future: UsuarioTable().querySingleRow(
        queryFn: (q) => q.eq(
          'user',
          widget.atendenteId,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UsuarioRow> detalhesAtendenteUsuarioRowList = snapshot.data!;

        final detalhesAtendenteUsuarioRow =
            detalhesAtendenteUsuarioRowList.isNotEmpty
                ? detalhesAtendenteUsuarioRowList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.sidenavModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const SidenavWidget(),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.headerModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const HeaderWidget(
                            page: 'Atendente',
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 72.0,
                                                  height: 72.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        fadeInDuration:
                                                            const Duration(
                                                                milliseconds:
                                                                    500),
                                                        fadeOutDuration:
                                                            const Duration(
                                                                milliseconds:
                                                                    500),
                                                        imageUrl:
                                                            valueOrDefault<
                                                                String>(
                                                          detalhesAtendenteUsuarioRow
                                                              ?.foto,
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aeternum-8xc5av/assets/w6b2te58678n/default-avatar-icon-of-social-media-user-vector.jpg',
                                                        ),
                                                        width: 44.0,
                                                        height: 44.0,
                                                        fit: BoxFit.cover,
                                                        errorWidget: (context,
                                                                error,
                                                                stackTrace) =>
                                                            Image.asset(
                                                          'assets/images/error_image.jpg',
                                                          width: 44.0,
                                                          height: 44.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                0.0, 4.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            detalhesAtendenteUsuarioRow
                                                                ?.nome,
                                                            'Nome',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              detalhesAtendenteUsuarioRow
                                                                  ?.email,
                                                              'Email',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              'Código: ${valueOrDefault<String>(
                                                                detalhesAtendenteUsuarioRow
                                                                    ?.codigoPayt,
                                                                'Sem código',
                                                              )}',
                                                              'Sem código',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            height: 2.0,
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  12.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .receipt_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 44.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .vendasRealizadas
                                                                    ?.toString(),
                                                                '0',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Vendas ralizadas',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation1']!),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  12.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .ssid_chart_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 44.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                formatNumber(
                                                                  _model
                                                                      .faturamento,
                                                                  formatType:
                                                                      FormatType
                                                                          .custom,
                                                                  currency:
                                                                      'R\$',
                                                                  format: '',
                                                                  locale: '',
                                                                ),
                                                                '0',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Faturamento',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation2']!),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  12.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.phone,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 44.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .ligacoesRealizadas
                                                                    ?.toString(),
                                                                '0',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Ligações ralizadas',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation3']!),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  12.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .timelapse_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 44.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .tempoMedio,
                                                                '00:00:00',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Tempo medio por ligação',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation4']!),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    width: 100.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  padding: const EdgeInsets.all(4.0),
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Vendas',
                                                    ),
                                                    Tab(
                                                      text: 'Ligações',
                                                    ),
                                                    Tab(
                                                      text: 'Produtos',
                                                    ),
                                                    Tab(
                                                      text: 'Leads',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      16.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Data',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  Expanded(
                                                                    flex: 4,
                                                                    child: Text(
                                                                      'Produto',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    flex: 4,
                                                                    child: Text(
                                                                      'Lead',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Faturamento',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  VendasViewRow>>(
                                                            future:
                                                                VendasViewTable()
                                                                    .queryRows(
                                                              queryFn: (q) =>
                                                                  q.eq(
                                                                'usuario',
                                                                widget
                                                                    .atendenteId,
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<VendasViewRow>
                                                                  listViewVendasViewRowList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .separated(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                  0,
                                                                  5.0,
                                                                  0,
                                                                  0,
                                                                ),
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewVendasViewRowList
                                                                        .length,
                                                                separatorBuilder: (_,
                                                                        __) =>
                                                                    const SizedBox(
                                                                        height:
                                                                            10.0),
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewVendasViewRow =
                                                                      listViewVendasViewRowList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            1.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                0.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            offset:
                                                                                const Offset(
                                                                              0.0,
                                                                              1.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                flex: 2,
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    dateTimeFormat(
                                                                                      "dd/MM/yyyy",
                                                                                      listViewVendasViewRow.lastLigacaoCreatedAt,
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    ),
                                                                                    '01/01/2001',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                flex: 4,
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    listViewVendasViewRow.nomeProduto,
                                                                                    'produto',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                flex: 4,
                                                                                child: Text(
                                                                                  'Maria Silva',
                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                flex: 2,
                                                                                child: Text(
                                                                                  'R\$329,90',
                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 4,
                                                                    child: Text(
                                                                      'Lead',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 4,
                                                                      child:
                                                                          Text(
                                                                        'Observacao',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Tag',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Produto',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        FutureBuilder<
                                                            List<
                                                                ViewLigacoesRow>>(
                                                          future:
                                                              ViewLigacoesTable()
                                                                  .queryRows(
                                                            queryFn: (q) =>
                                                                q.eq(
                                                              'user_id',
                                                              widget
                                                                  .atendenteId,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<ViewLigacoesRow>
                                                                listViewViewLigacoesRowList =
                                                                snapshot.data!;

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewViewLigacoesRowList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewViewLigacoesRow =
                                                                    listViewViewLigacoesRowList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          1.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              0.0,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          offset:
                                                                              const Offset(
                                                                            0.0,
                                                                            1.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            flex:
                                                                                4,
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                listViewViewLigacoesRow.leadNome,
                                                                                                'Lead',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Expanded(
                                                                              flex: 4,
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  listViewViewLigacoesRow.observacao,
                                                                                  'obs.',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Expanded(
                                                                              flex: 2,
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  listViewViewLigacoesRow.statusLigacao,
                                                                                  'status',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Expanded(
                                                                              flex: 2,
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  listViewViewLigacoesRow.nomeProduto,
                                                                                  'produto',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 4,
                                                                    child: Text(
                                                                      'Produto',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Vendas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Faturamento',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        FutureBuilder<
                                                            List<ViewLeadRow>>(
                                                          future:
                                                              ViewLeadTable()
                                                                  .queryRows(
                                                            queryFn: (q) =>
                                                                q.eq(
                                                              'produto_codigo',
                                                              '1',
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<ViewLeadRow>
                                                                listViewViewLeadRowList =
                                                                snapshot.data!;

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewViewLeadRowList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewViewLeadRow =
                                                                    listViewViewLeadRowList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          1.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              0.0,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          offset:
                                                                              const Offset(
                                                                            0.0,
                                                                            1.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            flex:
                                                                                4,
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                            child: Text(
                                                                                              'Produto X - Compre 3 pague 2',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Expanded(
                                                                              flex: 2,
                                                                              child: Text(
                                                                                '633',
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Expanded(
                                                                              flex: 2,
                                                                              child: Text(
                                                                                'R\$329,90',
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 4,
                                                                    child: Text(
                                                                      'Nome',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Status',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Origem',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Produto',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ))
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        'Situação',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          1.0),
                                                              child: Container(
                                                                width: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          0.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      offset:
                                                                          const Offset(
                                                                        0.0,
                                                                        1.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        List<
                                                                            ViewLeadRow>>(
                                                                      future: ViewLeadTable()
                                                                          .queryRows(
                                                                        queryFn:
                                                                            (q) =>
                                                                                q.eq(
                                                                          'usuario',
                                                                          widget
                                                                              .atendenteId,
                                                                        ),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: CircularProgressIndicator(
                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                  FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<ViewLeadRow>
                                                                            listViewViewLeadRowList =
                                                                            snapshot.data!;

                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              listViewViewLeadRowList.length,
                                                                          itemBuilder:
                                                                              (context, listViewIndex) {
                                                                            final listViewViewLeadRow =
                                                                                listViewViewLeadRowList[listViewIndex];
                                                                            return Container(
                                                                              width: 100.0,
                                                                              height: 51.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 4,
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          listViewViewLeadRow.nomeLead,
                                                                                          'Lead',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: Text(
                                                                                          () {
                                                                                            if (listViewViewLeadRow.status == 1) {
                                                                                              return 'Entrar em contato';
                                                                                            } else if (listViewViewLeadRow.status == 2) {
                                                                                              return 'Em progresso';
                                                                                            } else if (listViewViewLeadRow.status == 3) {
                                                                                              return 'Aguardando aprovação do gestor';
                                                                                            } else {
                                                                                              return 'Concluido';
                                                                                            }
                                                                                          }(),
                                                                                          style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            listViewViewLeadRow.origem,
                                                                                            'origem',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            listViewViewLeadRow.nomeProduto,
                                                                                            'Produto',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            () {
                                                                                              if ((listViewViewLeadRow.status == 4) && listViewViewLeadRow.aprovacaoGestor!) {
                                                                                                return 'Venda aprovada';
                                                                                              } else if ((listViewViewLeadRow.status == 4) && !listViewViewLeadRow.aprovacaoGestor!) {
                                                                                                return 'Venda não aprovada';
                                                                                              } else {
                                                                                                return 'Aguardando';
                                                                                              }
                                                                                            }(),
                                                                                            'Aguardando',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 20.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
