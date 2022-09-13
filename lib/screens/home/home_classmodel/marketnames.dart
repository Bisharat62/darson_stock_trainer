class Marketnames {
  String? title;
  String? subtitle;
  String? value;
  Marketnames({this.title, this.subtitle, this.value});
  @override
  String toString() {
    return ('title  : $title , subtitle : $subtitle , Value : $value');
  }
}

List<Marketnames> market_list = [
  Marketnames(
    title: 'REG',
    subtitle: 'PSO',
    value: '168.30',
  ),
  Marketnames(
    title: 'REG',
    subtitle: 'HASCOL',
    value: '-16.5',
  ),
  Marketnames(
    title: 'REG',
    subtitle: 'GGL',
    value: '-22.54',
  ),
  Marketnames(
    title: 'REG',
    subtitle: 'PAEL',
    value: '15.2',
  ),
  Marketnames(
    title: 'REG',
    subtitle: 'SUGAR',
    value: '65.00',
  ),
  Marketnames(
    title: 'REG',
    subtitle: 'MCB',
    value: '13.60',
  ),
];
