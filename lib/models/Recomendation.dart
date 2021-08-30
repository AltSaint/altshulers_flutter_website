class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demoRecommendations = [
  Recommendation(
    name: "Ricardo Milos",
    source: "Linkedin",
    text:
        "'Here could be some great recomendation', 'Here could be great story of cooperation', 'Here could be praise'",
  ),
  Recommendation(
    name: "Ulfric Stormcloak",
    source: "Linkedin",
    text:
        "'Here could be some great recomendation', 'Here could be great story of cooperation', 'Here could be praise'",
  ),
  Recommendation(
    name: "John Cena",
    source: "YouTube",
    text:
        "'Here could be some great recomendation', 'Here could be great story of cooperation', 'Here could be praise'",
  ),
];
