import 'dart:io';
import 'dart:mirrors';
main() async{
var server=await HttpServer.bind('local host ',8005 );
await for(HttpRequest req in server){
var ref=reflect(endpoint());
//print(ref.type.simpleName);
//print(ref.type.metadata);
var routeannonation=ref.type.metadata[0].reflectee;
print(routeannonation);
}

}
class Route{
const Route(this.url);
final String url;
}
@Route('/')
class endpoint{
  handle()=>print('request recieved');

}