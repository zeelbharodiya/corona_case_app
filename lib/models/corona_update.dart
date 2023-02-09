
class Corona {
  final int activecase;
  final String country;
  final int lastupdate;
  final int newcase;
  final int newdeath;
  final int totalcase;
  final int totaldeath;
  final int totalrecovered;

  Corona({
    required this.activecase,
    required this.country,
    required this.lastupdate,
    required this.newcase,
    required this.newdeath,
    required this.totalcase,
    required this.totaldeath,
    required this.totalrecovered,
  });

  factory Corona.fromMap({required Map data}) {
    return Corona(
      activecase: data['active'],
      country: data['country'],
      lastupdate: data['population'],
      newcase: data['todayCases'],
      newdeath: data['todayDeaths'],
      totalcase: data['cases'],
      totaldeath: data['todayDeaths'],
      totalrecovered: data['todayRecovered'],
    );
  }

}
//
// "Active Cases_text": "+103,967",
// "Country_text": "World",
// "Last Update": "2023-02-04 11:48",
// "New Cases_text": "+87,428",
// "New Deaths_text": "+491",
// "Total Cases_text": "676,093,228",
// "Total Deaths_text": "6,770,421",
// "Total Recovered_text": "648,395,593"