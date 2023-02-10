void main(){
 var deck=new Deck();
 print(deck);
 
}

class Deck{
  late List<Card> cards=[];
Deck(){
  late var ranks=['Ace','two','four','five'];
late var suits=['diamond','hearts','clubs','spades'];
for( var suit in suits){
  for(var rank in ranks){
    late var card=new Card(rank,suit);
cards.add(card);

  }
}

}
toString(){
  return cards.toString();
}
  
}
class Card {
late String suit;
late String rank;
Card(this.rank,this.suit);
@override
  String toString() {
    // TODO: implement toString
    return '$rank of $suit';
  }
}
