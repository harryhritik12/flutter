import 'dart:mirrors';
 main(){
List<String >arguments;
var ref=reflect(Endpoint());
print(ref.type);
print(ref.type.instanceMembers);
//ref.invoke(Symbol("handle"),[]);
ref.invoke(#handle,[]);
}
class Endpoint{
handle()=>print('Request recieved');
}