angular.module('starter.services', [])

.factory('Game', ->
  o = {}

  # Data
  cardBank = [
      text: "David Cameron"
    ,
      text: "Gordon Brown"
    ,
      text: "Tony Blair"
    ,
      text: "Sir John Major"
    ,
      text: "Baroness Margaret Thatcher"
    ,
      text: "Barack Obama"
    ,
      text: "George W. Bush"
    ,
      text: "Bill Clinton"
    ,
      text: "George H. W. Bush"
    ,
      text: "Ronald Reagan"
    ,
      text: "Mickey Mouse"
    ,
      text: "Peter Pan"
    ,
      text: "Lance Armstrong"
    ,
      text: "Jessica Enis"
    ,
      text: "Michael Jackson"
    ,
      text: "Norman Cook (Fatboy Slim)"
    ,
      text: "Madonna"
    ,
      text: "Jesus"
    ,
      text: "Muhammad"
    ,
      text: "Elton John"
    ,
      text: "Stephen Fry"
    ,
      text: "Tom Cruise"
    ,
      text: "Adam Sandler"
    ,
      text: "Al Pacino"
    ,
      text: "Adolf Hitler"
    ,
      text: "Justin Beiber"
    ,
      text: "Ashton Kutcher"
    ,
      text: "Richard Branson"
    ,
      text: "Steve Jobs"
    ,
      text: "Alexander Graham Bell"
    ,
      text: "Katy Perry"
    ,
      text: "Christopher Wren"
    ,
      text: "Peter Piper"
  ]

  # config
  numCards = 30

  # Card stores
  o.gameCards = _.take _.shuffle(cardBank), numCards
  o.roundCards = _.shuffle o.gameCards
  o.fouledCards = []
  o.skippedCards = []
  o.gotCards = []
  o.currentCard = -> o.roundCards[0]
  o.skips = 0

  # Rounds
  o.rounds = []
  o.currentRound = -> o.rounds[0]
  o.nextRound = ->
    unless o.rounds.length == 1
      o.roundCards = _.shuffle o.gameCards
      o.rounds.shift()
      o.roundAlert()
      o.skippedCards = []
      o.skips = 0
    else
      o.gameOverAlert()
      # o.newGame()

  # Timer
  o.timeLength = 60
  o.timeRemaining = 60
  o.timePercent = -> o.timeRemaining / o.timeLength * 100


  # Teams
  o.teams = [
    {name: 'Blue', class: 'positive'}
    {name: 'Green', class: 'balanced'}
    ]
  o.currentTeam = -> o.teams[0]
  o.nextTeam = -> o.turnEndAlert()
  o.teamSwitch = ->
    o.teams.push o.teams.shift()
    o.roundCards = _.shuffle(o.roundCards.concat o.skippedCards)
    o.fouledCards = []
    o.skippedCards = []
    o.gotCards = []
    o.turnPoints = 0
    o.skips = 0

  # Scores
  o.scores = {Blue: 0, Green: 0}
  o.scoreStr = -> ("#{name}: #{score}" for name, score of o.scores).join(", ")
  o.turnPoints = 0

  # Actions on current card
  cardAction = (points, store) ->
    ->
      store.push o.roundCards.shift()
      o.scores[o.currentTeam().name] += points
      o.turnPoints += points
      o.nextRound() if o.roundCards.length == 0
  o.foul = cardAction -1, o.fouledCards
  o.skip = ->
    o.skippedCards.push o.roundCards.shift()
    o.skips++
  o.got = cardAction 1, o.gotCards

  # New game
  o.newGame = ->
    o.rounds = [
      "Round 1: No limit"
      "Round 2: Three words"
      "Round 3: One word"
      "Round 4: No words"
    ]
    o.gameCards = _.take _.shuffle(cardBank), numCards
    o.roundCards = _.shuffle o.gameCards
    o.scores = {Blue: 0, Green: 0}
    o.turnPoints = 0
    o.teams = _.shuffle(o.teams)
    o.newGameAlert()
    o.skips = 0
    o.resetTimer()

  # Return object
  return o
)
