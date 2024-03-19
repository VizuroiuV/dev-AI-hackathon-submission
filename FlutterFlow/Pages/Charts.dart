import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'charts_model.dart';
export 'charts_model.dart';

class ChartsWidget extends StatefulWidget {
  const ChartsWidget({super.key});

  @override
  State<ChartsWidget> createState() => _ChartsWidgetState();
}

class _ChartsWidgetState extends State<ChartsWidget> {
  late ChartsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF42FCEA),
        body: SafeArea(
          top: true,
          child: Container(
            width: 385,
            height: 664,
            decoration: BoxDecoration(
              color: Color(0xFF42FCEA),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Power  Saving Tips',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                ),
                Icon(
                  Icons.lightbulb_outline_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 36,
                ),
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: EcowiseTipsCall.call(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final listViewEcowiseTipsResponse = snapshot.data!;
                        return Builder(
                          builder: (context) {
                            final ecoTips = getJsonField(
                              listViewEcowiseTipsResponse.jsonBody,
                              r'''$.tipsResponse''',
                            ).toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: ecoTips.length,
                              itemBuilder: (context, ecoTipsIndex) {
                                final ecoTipsItem = ecoTips[ecoTipsIndex];
                                return Container(
                                    width: 100,
                                    height: 100,
                                    color: Colors.green);
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Consumptions');
                  },
                  text: 'Done',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF2DB7AB),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
