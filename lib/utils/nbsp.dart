const _nbsp = '\u00a0';

extension NbspX on String {
  String withNbsp() => replaceAll(' ', _nbsp);
}
