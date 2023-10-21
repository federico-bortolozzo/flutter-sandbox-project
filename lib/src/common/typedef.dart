/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
typedef NavigateCallback = void Function(
  String routeName,
  Map<String, String> queryParameters,
);
typedef ErrorDialogCallback = void Function(String? message);