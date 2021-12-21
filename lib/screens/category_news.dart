import 'package:flutter/material.dart';
import 'package:news_app/helper/news.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/screens/article_name.dart';

class CategoryNews extends StatefulWidget {
  const CategoryNews({ Key? key, this.category }) : super(key: key);

  final String? category;

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<CategoryNews> {

  List<ArticleModel> articles = [];
  bool _loading = true;

  @override
  void initState(){
    super.initState();
    getCategoryNews();
  }
  getCategoryNews() async{
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category!);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'App',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        return NewsBlogTile(
                            imageUrl: articles[index].urlToImage,
                            title: articles[index].title,
                            description: articles[index].description,
                            url: articles[index].url,);
                      }),
                ),
            ],
              ),
        ),
      ),
    );
  }
}

class NewsBlogTile extends StatelessWidget {
  final String? imageUrl, title, description,url;
  const NewsBlogTile(
      {Key? key,
      @required this.imageUrl,
      @required this.title,
      @required this.description,
      @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ArticleView(blogUrl: url,)
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.network(imageUrl!)),
            const SizedBox(height: 6,),
            Text(title!,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black54),),
            const SizedBox(height: 6,),
            Text(description!,style: const TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}