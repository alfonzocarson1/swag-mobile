import '../../models/explore/explore.dart';

class ExploreUtils {
  static List<Explore> getExploreList() {
    return [
      Explore(name: ''' 
SWAG WELCOMES
NICK HARDY 
TO THE TEAM
          ''', imgName: "explore-1", route: '/CreateAccount'),
      Explore(
          name: "LATEST DROPS",
          imgName: "explore-2",
          route: '/AccountInfoPage'),
      Explore(name: "WHAT'S HOT!", imgName: "explore-3", route: '/HomePage'),
      Explore(name: "WHAT'S NEW!", imgName: "explore-4", route: '/HomePage')
    ];
  }
}
