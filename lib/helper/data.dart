import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = [];
  CategoryModel categoryModel = CategoryModel();

  //1
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80";
  category.add(categoryModel);
  //2
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1596793503406-d90c450ba1b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1142&q=80";
  category.add(categoryModel);
  //3
  categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1494059980473-813e73ee784b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1469&q=80";
  category.add(categoryModel);
  //4
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1526256262350-7da7584cf5eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  category.add(categoryModel);
  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1532187863486-abf9dbad1b69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  category.add(categoryModel);
  //6
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  category.add(categoryModel);
  //7
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1518770660439-4636190af475?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80";
  category.add(categoryModel);

  return category;
}