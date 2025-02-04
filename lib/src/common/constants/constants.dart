class Constants{
  const Constants._();

  static const String locale = "locale";
  static const String theme = "theme";
  static const String token = "token";

  static const String baseUrl = "http://95.130.227.21:8080/api";

}

class Urls{
  const Urls._();

  static const String singIn = '/auth/sign-in';
  static const String singUp = '/auth/sign-up';
  static const String verification = '/auth/verify';
  static const String myProfile = '/user/my-profile';
  static const String user = '/user';
  static const String profileContent = '/user/profile-content';
  static const String savedRecipe = '/saved-recipes';
  static const String addOneRecipe = '/recipeM/addOne';
  static const String getAllIngredients = '/recipeA/ingredient';
  static const String requestPasswordReset = '/auth/request-password-reset';
  static const String refreshPassword = '/auth/reset-password';
  static const String saveRecipe = '/save-recipe';
  static const String follow = '/user/following';
  static const String unFollow = '/user/unfollowing';
  static const String owner = '/user/byId';
  static const String deleteRecipe = '/saved-recipes';
  static const String notification = '/notification';
  static const String rateRecipe = '/reviewA/rate-recipe';


  // Home Controller
  static const String newRecipes = "/home/new-recipes";
  static const String categories = "/home";
  static const String recipesByCategory = "/home/category";

  // Search Controller
  static const String search = "/search/result";
  static const String recentSearches = "/search";
  static const String addRecentSearch = "/search/result";

  // Review Controller
  static const String addReview = "/reviewA/comment";
  static const String getReviews = "/reviewA";
  static const String addReaction = "/reviewA/like-comment";
  static const String deleteComment = "/reviewA";


  static String steps(int id)=>"/recipeM/$id/steps";
  static String ingrident(int id)=>"/recipeA/$id/ingredient";
  static String copyLink(int id)=>"/recipeA/$id/share-link";



  static Map<String, Object> profileContentParam({required int id, required int size}){
    Map<String, Object> map ={
      "userId":id,
      "page": 0,
      "size": size
    };
    return map;
  }
  static Map<String, Object> savedProductParam({required int size}){
    Map<String, Object> map ={
      "page": 0,
      "size": size
    };
    return map;
  }
static Map<String, Object> getNotification({required int size, required String read}){
    Map<String, Object> map ={
      "page": 0,
      "size": size,
      "read": read
    };
    return map;
  }

  static Map<String, Object> emptyParam()=>{};




}
