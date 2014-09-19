#require "./card"
#require "./deck"
require "./flashcard_game"
require "./deck_reader"

deck_reader = DeckReader.new("decks.txt")
flashcard_game = FlashcardGame.new(deck_reader.get_decks)
flashcard_game.play


#decks = []

#spanish_cards = []
#spanish_cards << Card.new({front: "Gato", back: "Cat"})
#panish_cards << Card.new(front: "Perro", back: "Dog")
#decks << Deck.new({name: "Spanish", cards: spanish_cards})

#japanese_cards = []
#japanese_cards << Card.new({front: "Neku", back: "Cat"})
#japanese_cards << Card.new({front: "Inu", back: "Dog"})
#decks << Deck.new({name: "Japanese", cards: japanese_cards})

#flashcard_game = FlashcardGame.new(decks)
#flashcard_game.play