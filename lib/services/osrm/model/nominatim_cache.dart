import 'package:string_similarity/string_similarity.dart';

class NominatimCache {
  Map<String, String> lookup = {
    "helen keller lauterbach": "9.4116058,50.6346622",
    "helen keller strasse lauterbach": "9.4116058,50.6346622",
    "deutsche bank park": "8.645462952099116,50.06859935",
    "deutsch bank park": "8.645462952099116,50.06859935",
    "dbp": "8.645462952099116,50.06859935",
    "maar": "9.3873948,50.6599803",
    "hochschule fulda": "9.685991642142039,50.5650744",
    "fulda": "9.6770448,50.5542328",
    "torkamp 21 lemgo": "8.90403655,52.04073925",
    "torkamp lemgo": "8.90403655,52.04073925",
    "torkamp": "8.90403655,52.04073925",
    "dessauer strasse 27 koblenz": "7.56688441015861,50.33962555",
    "dessauer strasse koblenz": "7.56688441015861,50.33962555",
  };

  String? getSimilar(String search) {
    double maxSim = 0.0;
    String mostSimilar = "";
    for (String k in lookup.keys) {
      double sim = k.similarityTo(search);
      if (sim > maxSim) {
        maxSim = sim;
        mostSimilar = k;
      }
    }
    if (maxSim > 0.6) {
      return mostSimilar;
    }
    return "";
  }


}
