class student{
  late double _gpa;///_ means private
  late String university;
late bool _isfailing;
  void printuniversity(){
print(university);
  }
  // set constraintt
  void setgpa(double gpa){
 if(gpa<0){
  throw Exception("cant be negative");

 }
 if(gpa<2.0){
  _isfailing =true;

 }
 else{
  _isfailing=false;
 }
 _gpa=gpa;
  }
  /// gttter.. to show private variaable;
  double  get  gpa=>_gpa;
bool get isfailing=>_isfailing;

}
/// aconstruct let us to eaisly set the value for a new class when we create the class ;
/// a method run to call construct or call the constructor;
/// 
////en capsulation we are  sending the method to work on same data. togther with class;
/*class student{
  double gpa;
  bool isfailing;
  String university;
  student ({double gpa , bool iF, String uni}){
    this.gpa=gpa;
    this.isfailing=isfailing;
    this.university=uni;
    or// student({this.gpa ,this.isfailing,rhis.university})
  student position.positional(this.gpa,this isfailing,this.university)
  }
}
void main(){
  String str="asas";
  str.length;
  //length(str);///python way to determine length
  //len(str);.....pyhon;

}*/