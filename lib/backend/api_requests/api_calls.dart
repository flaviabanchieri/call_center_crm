import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AlterarSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = 'gestorteste@gmail.com',
    String? password = '123456',
    String? userToken =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6InB2V1I0b0xRSzh1ZXZvb2kiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2dsa2FtaWtieXRpZGJjdWFrZ2NjLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiI4YzgxZDcwZS1mY2JlLTQ2YzAtYWZmMS1hZWVhODEwMzUzOWQiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzIzMTQwNTkxLCJpYXQiOjE3MjMxMzY5OTEsImVtYWlsIjoiZ2VzdG9ydGVzdGVAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6Imdlc3RvcnRlc3RlQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicGhvbmVfdmVyaWZpZWQiOmZhbHNlLCJzdWIiOiI4YzgxZDcwZS1mY2JlLTQ2YzAtYWZmMS1hZWVhODEwMzUzOWQifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTcyMzEzMDE0OH1dLCJzZXNzaW9uX2lkIjoiYTQ5YTUwZDItYTU5NC00MjBlLWFmNzYtZWI3OTQ5YWNlYzgyIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.fI0LHJpglLwJu5ABNGxGKWi-bBNJTWmGDjtsGjxUd2Y',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Alterar Senha',
      apiUrl: 'https://glkamikbytidbcuakgcc.supabase.co/auth/v1/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
        'Authorization': 'Bearer $userToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error_code''',
      ));
  static String? msgError(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class ObterUltimoUsuarioPontoCall {
  static Future<ApiCallResponse> call({
    String? user = 'cb31a893-f6a5-418c-80e8-cf4cdcbf6d9f',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$user"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Obter ultimo usuario ponto',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/ultimo_usuario_ponto',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? clockIn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].clock_in''',
      ));
  static String? clockOut(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].clock_out''',
      ));
  static String? user(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user''',
      ));
}

class QuantidadeDeLeadsPorPeriodoCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '2024-09-01 00:00:00',
    String? dataFinal = '2024-09-30 23:23:59',
  }) async {
    final ffApiRequestBody = '''
{
  "datafinal": "$dataFinal",
  "datainicial": "$dataInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quantidade de Leads por periodo',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/contar_leads',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuantidadeLeadsConcluidoCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '2024-08-01 00:00:00',
    String? dataFinal = '2024-08-31 00:00:00',
  }) async {
    final ffApiRequestBody = '''
{
  "datafinal": "$dataFinal",
  "datainicial": "$dataInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quantidade Leads Concluido',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/contar_leads_concluidos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuantidadeVendasRealizadasCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '2024-08-01 00:00:00',
    String? dataFinal = '2024-08-31 00:00:00',
  }) async {
    final ffApiRequestBody = '''
{
  "datafinal": "$dataFinal",
  "datainicial": "$dataInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quantidade Vendas Realizadas',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/contar_vendas_realizadas',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FaturamentoMensalCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '2024-08-01 00:00:00',
    String? dataFinal = '2024-08-31 00:00:00',
  }) async {
    final ffApiRequestBody = '''
{
  "datafinal": "$dataFinal",
  "datainicial": "$dataInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Faturamento Mensal',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/faturamento_mensal',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuantidadeDeLeadsAtendenteCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '2024-08-01 00:00:00',
    String? dataFinal = '2024-08-31 00:00:00',
    String? atendente = 'cb31a893-f6a5-418c-80e8-cf4cdcbf6d9e',
  }) async {
    final ffApiRequestBody = '''
{
  "atendente": "$atendente",
  "datafinal": "$dataFinal",
  "datainicial": "$dataInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quantidade de Leads Atendente',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/contar_leads_atendente',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuantidadeDeLeadsConcluidosPorAtendenteCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '2024-08-01 00:00:00',
    String? dataFinal = '2024-08-31 00:00:00',
    String? atendente = 'cb31a893-f6a5-418c-80e8-cf4cdcbf6d9e',
  }) async {
    final ffApiRequestBody = '''
{
  "atendente": "$atendente",
  "datafinal": "$dataFinal",
  "datainicial": "$dataInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quantidade de Leads concluidos por Atendente',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/contar_leads_concluidos_atendentes',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuantidadeDeVendasPorAtendenteCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '2024-08-01 00:00:00',
    String? dataFinal = '2024-08-31 00:00:00',
    String? atendente = 'cb31a893-f6a5-418c-80e8-cf4cdcbf6d9e',
  }) async {
    final ffApiRequestBody = '''
{
  "atendente": "$atendente",
  "datafinal": "$dataFinal",
  "datainicial": "$dataInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quantidade de vendas por atendente',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/contar_vendas_realizadas_atendente',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListaDeNomesLeadCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Lista de Nomes Lead',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/lista_nome_lead',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FiltraLeadsCall {
  static Future<ApiCallResponse> call({
    String? nomeLead = '',
    String? produto = '',
    String? origem = '',
    int? status = 1,
  }) async {
    final ffApiRequestBody = '''
{
  "p_nome_lead": "$nomeLead",
  "p_codigo_produto": "$produto",
  "p_origem": "$origem",
  "p_status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Filtra leads',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/filtra_view_lead',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? datacriacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static int? idlead(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_lead''',
      ));
  static String? nomelead(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_lead''',
      ));
  static String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].telefone''',
      ));
  static String? produtocodigo(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].produto_codigo''',
      ));
  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  static String? origem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].origem''',
      ));
  static String? usuario(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].usuario''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
}

class RelatorioLigacoesCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '',
    String? dataFinal = '',
    String? atendente = '',
    String? produto = '',
    String? origem = '',
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_atendente": "$atendente",
  "p_data_final": "$dataFinal",
  "p_data_inicial": "$dataInicial",
  "p_origem": "$origem",
  "p_produto": "$produto",
  "p_status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Relatorio Ligacoes',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/relatorio_ligacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CountRelatorioLigacoesCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '',
    String? dataFinal = '',
    String? atendente = '',
    String? produto = '',
    String? origem = '',
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_atendente": "$atendente",
  "p_data_final": "$dataFinal",
  "p_data_inicial": "$dataInicial",
  "p_origem": "$origem",
  "p_produto": "$produto",
  "p_status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Count Relatorio Ligacoes',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/relatorio_ligacao_count',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RelatorioTempoLigacoesCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '',
    String? dataFinal = '',
    String? atendente = '',
    String? produto = '',
    String? origem = '',
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_atendente": "$atendente",
  "p_data_final": "$dataFinal",
  "p_data_inicial": "$dataInicial",
  "p_origem": "$origem",
  "p_produto": "$produto",
  "p_status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Relatorio Tempo Ligacoes',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/relatorio_tempo_ligacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RelatorioMediaTempoLigacaoCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '',
    String? dataFinal = '',
    String? atendente = '',
    String? produto = '',
    String? origem = '',
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_atendente": "$atendente",
  "p_data_final": "$dataFinal",
  "p_data_inicial": "$dataInicial",
  "p_origem": "$origem",
  "p_produto": "$produto",
  "p_status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Relatorio Media Tempo Ligacao',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/relatorio_media_ligacao',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RelatorioFaturamentoCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '',
    String? dataFinal = '',
    String? produto = '',
    String? usuario = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_data_final": "$dataFinal",
  "p_data_inicial": "$dataInicial",
  "p_produto": "$produto",
  "p_usuario": "$usuario"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Relatorio Faturamento',
      apiUrl:
          'https://glkamikbytidbcuakgcc.supabase.co/rest/v1/rpc/relatorio_faturamento',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdsa2FtaWtieXRpZGJjdWFrZ2NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2MDk3ODcsImV4cCI6MjAzODE4NTc4N30.HKoJgyjRufokGbSNnSEWEoZdXADzfbyC2gdAyIQ-RyU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClickToCallCall {
  static Future<ApiCallResponse> call({
    String? dialString = '0',
    String? lineId = '7203c74f-4d2f-420a-b991-170786f96e39',
    String? userId = '',
    String? userEmail = '',
    int? lead,
  }) async {
    final ffApiRequestBody = '''
{
  "dialString": "$dialString",
  "from": {
    "lineId": "$lineId"
  },
  "autoAnswer": true,
  "phoneNumberId": "$lineId",
  "userId": "$userId",
  "userEmail": "$userEmail",
  "leadId": $lead
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Click to Call',
      apiUrl:
          'https://n8n-n8n.7jlhvw.easypanel.host/webhook/63948bc8-ce73-4e3b-a2e0-ef3fe97c9ca4',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? initiatorId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].body.initiatorId''',
      ));
}

class TerminarLigacaoCall {
  static Future<ApiCallResponse> call({
    String? userEmail = '',
    String? userId = '',
    String? leadId = '',
    String? status = '',
    String? obs = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userEmail": "$userEmail",
  "userId": "$userId",
  "leadId": "$leadId",
  "status": "$status",
  "observacao": "$obs"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Terminar Ligacao',
      apiUrl:
          'https://n8n-n8n.7jlhvw.easypanel.host/webhook/dcd8e416-19cb-4bf7-b795-aaa39512f1f9',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GravacoesCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? recordingId = '',
    String? ligacaoId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "body": {
    "userId": "$userId",
    "recordingId": "$recordingId",
    "ligacaoId": "$ligacaoId"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'gravacoes',
      apiUrl:
          'https://n8n-n8n.7jlhvw.easypanel.host/webhook/c4758ca0-a69d-420e-96d5-645c3708b3b1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
