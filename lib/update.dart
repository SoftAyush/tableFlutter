import 'package:flutter/material.dart';

class UpdateWidget extends StatefulWidget {
  const UpdateWidget({super.key});

  @override
  State<UpdateWidget> createState() => _UpdateWidgetState();
}

class _UpdateWidgetState extends State<UpdateWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final foodNameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    foodNameController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, -1),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
        child: Container(
          width: 630,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xFF606A85),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contact Information',
                        // style: AppTheme.of(context).title2.override(
                        //   fontFamily: 'Poppins',
                        //   color: const Color(0xFFCAC3FF),
                        //   fontSize: 16,
                        //   fontWeight: FontWeight.w500,
                        // ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: 2,
                      decoration: const BoxDecoration(
                        color: Color(0xFF606A85),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Food Name',
                              // style: AppTheme.of(context).bodyText2.override(
                              //   fontFamily: 'Poppins',
                              //   color: const Color(0xFFCAC3FF),
                              //   fontSize: 14,
                              // ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(29, 0, 0, 0),
                                child: TextFormField(
                                  controller: foodNameController,
                                  autofocus: false,
                                  obscureText: false,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  decoration: InputDecoration(
                                    labelText: 'Enter Food Name',
                                    labelStyle: const TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFFCAC3FF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    hintStyle:const TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFFE5E7EB),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF6F61EF),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFF2A2A3A),
                                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                                  ),
                                  style:const TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFFE5E7EB),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  cursorColor: const Color(0xFF6F61EF),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your name';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Center(
                          // Center the button
                          child: ElevatedButton(
                            onPressed: () {
                              _formKey.currentState!.validate();
                              // addNewContactInfo();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6F61EF),
                              foregroundColor: const Color(0xFFFFFFFF),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                              // textStyle: AppTheme.of(context).bodyText2.override(
                              //   fontFamily: 'Plus Jakarta Sans',
                              //   fontSize: 14,
                              //   fontWeight: FontWeight.w500,
                              // ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text('Save'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
