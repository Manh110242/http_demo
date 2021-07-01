import 'package:http_demo/model/model.dart';
import 'package:http_demo/server/api.dart';

class BlocPost {
  // convert ở model
  getData() async {
    List data = [];
    var res = await Api().getAsync('posts');
    if(res != null){
      for(var item in res){
        data.add(Posts.fromJson(item));
      }
    }
    return data;
  }
  //convert tại bloc loại 2 tiện hơn loại 1 cần gì thid lấy cái đấy
  getData2() async {
    List data = [];
    var res = await Api().getAsync('posts');
    if (res != null) {
      for(var item in res){
        Posts posts = new Posts(
            userId: item['userId'].toString(),
            id: item['id'].toString(),
            title: item['title'].toString(),
            body: item['body'].toString());
        data.add(posts);
      }
    }
    return data;
  }
}
