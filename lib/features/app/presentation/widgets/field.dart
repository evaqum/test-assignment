import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formz/formz.dart';

enum HFieldErrorBehavior {
  neverShow,
  showOnLostFocus,
  showDirty,
  showAll,
  forceShow,
}

enum HFieldType { phone, other }

class HField extends StatefulWidget {
  final FormzInput<String, Object> inputValue;
  final HFieldErrorBehavior errorBehavior;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final String label;
  final List<TextInputFormatter>? inputFormatters;
  final HFieldType type;
  final TextInputAction? textInputAction;
  final String? intialValue;

  const HField({
    super.key,
    required this.label,
    required this.inputValue,
    this.errorBehavior = HFieldErrorBehavior.showOnLostFocus,
    this.type = HFieldType.other,
    this.onChanged,
    this.keyboardType,
    this.inputFormatters,
    this.textInputAction,
    this.intialValue,
  });

  @override
  State<HField> createState() => _HFieldState();
}

class _HFieldState extends State<HField> {
  late final FocusNode _focusNode;
  late final TextEditingController _textEditingController;
  late bool _hasFocus;
  bool _interactedWith = false;
  @override
  void initState() {
    super.initState();

    _focusNode = FocusNode();
    _textEditingController = TextEditingController(
      text: widget.intialValue ?? widget.inputValue.value,
    );
    _hasFocus = _focusNode.hasFocus;

    _focusNode.addListener(() {
      if (_hasFocus != _focusNode.hasFocus) {
        setState(() => _hasFocus = _focusNode.hasFocus);
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();

    super.dispose();
  }

  Color? get _effectiveFillColor {
    final showError = switch (widget.errorBehavior) {
      HFieldErrorBehavior.showOnLostFocus => !_hasFocus && _interactedWith && widget.inputValue.error != null,
      HFieldErrorBehavior.showDirty => widget.inputValue.displayError != null,
      HFieldErrorBehavior.showAll => widget.inputValue.error != null,
      HFieldErrorBehavior.neverShow => false,
      HFieldErrorBehavior.forceShow => true,
    };

    return showError ? const Color(0x55EB5757) : null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      focusNode: _focusNode,
      textInputAction: widget.textInputAction,
      inputFormatters: [
        ...?widget.inputFormatters,
        if (widget.type == HFieldType.phone) _PhoneNumberInputFormatter(),
      ],
      // onChanged: (email) => bloc.add(
      //   RoomBookFormEvent.clientEmailChanged(email),
      // ),
      onTap: () {
        if (!_interactedWith) {
          if (widget.type == HFieldType.phone) {
            _textEditingController.text = _PhoneNumberInputFormatter.phoneMask;
            _textEditingController.selection = TextSelection(
              baseOffset: _PhoneNumberInputFormatter.initialCursorPosition,
              extentOffset: _PhoneNumberInputFormatter.initialCursorPosition,
            );
          }
          _interactedWith = true;
        }
      },
      onChanged: widget.type == HFieldType.phone
          ? (value) {
              final phoneNumber = value.replaceAll(RegExp(r'[^0-9]'), '').substring(1);
              widget.onChanged?.call(phoneNumber);
            }
          : widget.onChanged,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.label,
        fillColor: _effectiveFillColor,
      ),
    );
  }
}

class _PhoneNumberInputFormatter extends TextInputFormatter {
  static const phoneMask = '+7 (***) ***-**-**';
  static final nonDigitsRe = RegExp(r'[^0-9]');

  static int get initialCursorPosition {
    return phoneMask.indexOf('*');
  }

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final oldText = oldValue.text;
    final newText = newValue.text;

    final oldDigits = oldText.substring(2).replaceAll(nonDigitsRe, '');
    var inputDigits = newText.substring(2).replaceAll(nonDigitsRe, '');
    if (newText.length < oldText.length && inputDigits.isNotEmpty) {
      if (oldDigits.length == inputDigits.length) {
        inputDigits = inputDigits.substring(0, inputDigits.length - 1);
      }
    }

    var finalText = phoneMask;

    for (var i = 0; i < inputDigits.length; i++) {
      finalText = finalText.replaceFirst('*', inputDigits[i]);
    }

    var cursor = finalText.indexOf('*');
    if (cursor == -1) {
      cursor = finalText.length;
    }

    return TextEditingValue(
      text: finalText,
      selection: TextSelection(
        baseOffset: cursor,
        extentOffset: cursor,
      ),
    );
  }
}
