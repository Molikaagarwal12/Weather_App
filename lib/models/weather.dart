class Weather {
  final String weatherStateName;
  final String weatherStateAbbr;
  final String created;
  final double minTemp;
  final double maxTemp;
  final double theTemp;
  final String title;
final int woeid;
final DateTime lastUpdate;

  Weather({
    required this.weatherStateName,
     required this.weatherStateAbbr, 
     required this.created, 
     required this.minTemp, 
     required this.maxTemp, 
     required this.theTemp,
      required this.title, 
      required this.woeid, 
      required this.lastUpdate});

      factory Weather.fromJson(Map<String,dynamic> json){
        final consolidatedWeather=json['consolidated_weather'][0];
        return Weather(
          weatherStateName:consolidatedWeather['weather_state_name'] , 
          weatherStateAbbr: consolidatedWeather['weather_state_abbr'], 
          created: consolidatedWeather['created'], 
          minTemp: consolidatedWeather['min_temp'],
           maxTemp: consolidatedWeather['max_temp'], 
           theTemp: consolidatedWeather['the_temp'], 
           title: consolidatedWeather['title'], 
           woeid: consolidatedWeather['woeid'], 
           lastUpdate: DateTime.now());
      }
      
      factory Weather.initial()=>Weather(
        weatherStateName: '', 
        weatherStateAbbr: '', 
        created: '', 
        minTemp: 100, 
        maxTemp: 100, 
        theTemp: 100, 
        title: '', 
        woeid: -1, 
        lastUpdate: DateTime(1970));

@override
List<Object?> get props => [weatherStateName, weatherStateAbbr, created, minTemp, maxTemp, theTemp, title, woeid, lastUpdate];


@override
@override
bool get Stringify=>true;
}