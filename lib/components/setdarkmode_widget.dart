import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'setdarkmode_model.dart';
export 'setdarkmode_model.dart';

class SetdarkmodeWidget extends StatefulWidget {
  const SetdarkmodeWidget({super.key});

  @override
  State<SetdarkmodeWidget> createState() => _SetdarkmodeWidgetState();
}

class _SetdarkmodeWidgetState extends State<SetdarkmodeWidget> {
  late SetdarkmodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetdarkmodeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (Theme.of(context).brightness == Brightness.dark)
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.light_mode_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  setDarkModeSetting(context, ThemeMode.light);
                },
              ),
            if (Theme.of(context).brightness == Brightness.light)
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.dark_mode_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  setDarkModeSetting(context, ThemeMode.dark);
                },
              ),
            if (Theme.of(context).brightness == Brightness.dark)
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setDarkModeSetting(context, ThemeMode.light);
                },
                child: Text(
                  'Set light mode',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            if (Theme.of(context).brightness == Brightness.light)
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setDarkModeSetting(context, ThemeMode.dark);
                },
                child: Text(
                  'Set dark mode',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
