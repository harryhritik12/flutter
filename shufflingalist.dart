void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck.cardsWhiteSuit('diamond'));
}

class Deck {
  late List<Card> cards = [];
  Deck() {
    late var ranks = ['Ace', 'two', 'four', 'five'];
    late var suits = ['diamond', 'hearts', 'clubs', 'spades'];
    for (var suit in suits) {
      for (var rank in ranks) {
        late var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }
  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWhiteSuit(String suit) {
    return cards.where((card) {
      return card.suit == suit;
    });
  }
}

class Card {
  late String suit;
  late String rank;
  Card(this.rank, this.suit);

  String toString() {
    
    return '$rank of $suit';
  }
}
