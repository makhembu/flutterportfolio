import '/flutter_flow/flutter_flow_util.dart';
import 'resume_widget.dart' show ResumeWidget;
import 'package:flutter/material.dart';

class ResumeModel extends FlutterFlowModel<ResumeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
