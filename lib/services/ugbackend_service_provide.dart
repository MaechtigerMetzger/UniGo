import 'package:http/http.dart' as http;


class LSServiceProvider {
  //static String host = "localhost:8000";
  //static String host = "10.0.2.2:8000";
  static String host = "193.174.29.13";
  static String apiPath = "/ugbackend/api/v1/";

  /* User */

  static Future<List<User>> getUsers() async {
    return await getObjectList<User>(
        resourcePath: "users.json", parseBody: userListFromJson);
  }

  static Future<User> getUserById({required int id}) async {
    var result = await getObjectById<User>(
      id: id,
      resourcePath: "users",
      parseBody: userFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* Recipes */
  static Future<List<Recipe>> getRecipes() async {
    return await getObjectList<Recipe>(
        resourcePath: "recipes.json", parseBody: recipeListFromJson);
  }

  static Future<Recipe> getRecipeById({required int id}) async {
    var result = await getObjectById<Recipe>(
      id: id,
      resourcePath: "recipes",
      parseBody: recipeFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* Ingredients */

  static Future<List<Ingredient>> getIngredients() async {
    return await getObjectList<Ingredient>(
        resourcePath: "ingredients.json", parseBody: ingredientListFromJson);
  }

  static Future<Ingredient> getIngredientById({required int id}) async {
    var result = await getObjectById<Ingredient>(
      id: id,
      resourcePath: "ingredients",
      parseBody: ingredientFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* Tips */

  static Future<List<Tip>> getTips() async {
    return await getObjectList<Tip>(
        resourcePath: "tips.json", parseBody: tipListFromJson);
  }

  static Future<Tip> getTipById({required int id}) async {
    var result = await getObjectById<Tip>(
      id: id,
      resourcePath: "tips",
      parseBody: tipFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* Achievement */

  static Future<List<Achievement>> getAchievements() async {
    return await getObjectList<Achievement>(
        resourcePath: "achievements.json", parseBody: achievementListFromJson);
  }

  static Future<Achievement> getAchievementById({required int id}) async {
    var result = await getObjectById<Achievement>(
      id: id,
      resourcePath: "achievements",
      parseBody: achievementFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* Stocks */

  static Future<List<Stock>> getStocks() async {
    return await getObjectList<Stock>(
        resourcePath: "stocks.json", parseBody: stockListFromJson);
  }

  static Future<Stock> getStockById({required int id}) async {
    var result = await getObjectById<Stock>(
      id: id,
      resourcePath: "stocks",
      parseBody: stockFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* AchievementCategory */

  static Future<List<AchievementCategory>> getAchievementCategories() async {
    return await getObjectList<AchievementCategory>(
        resourcePath: "achievement/categories.json",
        parseBody: achievementCategoryListFromJson);
  }

  static Future<AchievementCategory> getAchievementCategoryById(
      {required int id}) async {
    var result = await getObjectById<AchievementCategory>(
      id: id,
      resourcePath: "achievement/categories",
      parseBody: achievementCategoryFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* RecipeCategory */

  static Future<List<RecipeCategory>> getRecipeCategories() async {
    return await getObjectList<RecipeCategory>(
        resourcePath: "recipe/categories.json",
        parseBody: recipeCategoryListFromJson);
  }

  static Future<RecipeCategory> getRecipeCategoryById({required int id}) async {
    var result = await getObjectById<RecipeCategory>(
      id: id,
      resourcePath: "recipe/categories",
      parseBody: recipeCategoryFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* IngredientCategory */

  static Future<List<IngredientCategory>> getIngredientCategories() async {
    return await getObjectList<IngredientCategory>(
        resourcePath: "ingredient/categories.json",
        parseBody: ingredientCategoryListFromJson);
  }

  static Future<IngredientCategory> getIngredientCategoryById(
      {required int id}) async {
    var result = await getObjectById<IngredientCategory>(
      id: id,
      resourcePath: "ingredient/categories",
      parseBody: ingredientCategoryFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* TipCategory */

  static Future<List<TipCategory>> getTipCategories() async {
    return await getObjectList<TipCategory>(
        resourcePath: "tip/categories.json",
        parseBody: tipCategoryListFromJson);
  }

  static Future<TipCategory> getTipCategoryById({required int id}) async {
    var result = await getObjectById<TipCategory>(
      id: id,
      resourcePath: "tip/categories",
      parseBody: tipCategoryFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* StockHasIngredient */

  static Future<List<StockHasIngredient>> getStockHasIngredients() async {
    return await getObjectList<StockHasIngredient>(
        resourcePath: "stock/hasingredient.json",
        parseBody: stockHasIngredientListFromJson);
  }

  static Future<StockHasIngredient> getStockHasIngredientById(
      {required int id}) async {
    var result = await getObjectById<StockHasIngredient>(
      id: id,
      resourcePath: "stock/hasingredient",
      parseBody: stockHasIngredientFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* RecipeUsesIngredient */

  static Future<List<RecipeUsesIngredient>> getRecipeUsesIngredients() async {
    return await getObjectList<RecipeUsesIngredient>(
        resourcePath: "recipe/usesingredient.json",
        parseBody: recipeUsesIngredientListFromJson);
  }

  static Future<RecipeUsesIngredient> getRecipeUsesIngredientById(
      {required int id}) async {
    var result = await getObjectById<RecipeUsesIngredient>(
      id: id,
      resourcePath: "recipe/usesingredient",
      parseBody: recipeUsesIngredientFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* UserSavedRecipe */

  static Future<List<UserSavedRecipe>> getUserSavedRecipes() async {
    return await getObjectList<UserSavedRecipe>(
        resourcePath: "user/savedrecipe.json",
        parseBody: userSavedRecipeListFromJson);
  }

  static Future<UserSavedRecipe> getUserSavedRecipeById(
      {required int id}) async {
    var result = await getObjectById<UserSavedRecipe>(
      id: id,
      resourcePath: "user/savedrecipe",
      parseBody: userSavedRecipeFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* UserHasAchievement */

  static Future<List<UserHasAchievement>> getUserHasAchievements() async {
    return await getObjectList<UserHasAchievement>(
        resourcePath: "user/hasachievement.json",
        parseBody: userHasAchievementListFromJson);
  }

  static Future<UserHasAchievement> getUserHasAchievementById(
      {required int id}) async {
    var result = await getObjectById<UserHasAchievement>(
      id: id,
      resourcePath: "user/hasachievement",
      parseBody: userHasAchievementFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* HELPER */

  static Future<List<T>> getObjectList<T>({
    required String resourcePath,
    required Function(String) parseBody,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<T> data = parseBody(response.body);
      return (data);
    } else {
      return [];
    }
  }

  static Future<List<T>> getObjectById<T>(
      {required int id,
      required String resourcePath,
      required Function(String) parseBody}) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}/${id}.json');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      T object = parseBody(response.body);
      return ([object]);
    } else {
      return [];
    }
  }

  static Future<bool> createObject<T>({
    required T data,
    required Function(T) toJson,
    required String resourcePath,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}');
    String json = toJson(data);

    http.Response resonse = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json,
    );
    if (resonse.statusCode == 201) {
      return true;
    }
    return false;
  }

  static Future<bool> updateObjectById<T>({
    required int id,
    required T data,
    required Function(T) toJson,
    required String resourcePath,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}/${id}.json');
    String json = toJson(data);

    http.Response resonse = await http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json,
    );
    if (resonse.statusCode == 200) {
      return true;
    }
    return false;
  }

  static Future<bool> deleteObjectById({
    required int id,
    required String resourcePath,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}/${id}.json');

    http.Response resonse = await http.delete(
      url,
    );
    if (resonse.statusCode == 204) {
      return true;
    }
    return false;
  }
}
