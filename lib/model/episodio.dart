
class Episodio {
  int episodio;
  String nomeJapones;
  String nomePortugues;
  String dataLancamento;
  String link;

  Episodio({
    this.episodio,
    this.nomeJapones,
    this.nomePortugues,
    this.dataLancamento,
    this.link,
  });

  Episodio.fromJson(Map<String, dynamic> json)
      : episodio = json['Episodio'],
        nomeJapones = json['NomeJapones'],
        nomePortugues = json['NomePortugues'],
        dataLancamento = json['DataLancamento'],
        link = json['Link'];
}
