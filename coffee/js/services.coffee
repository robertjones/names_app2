angular.module('starter.services', [])

.factory('NamesList', ->
  o = [
    {"text":"David Cameron"},
    {"text":"Gordon Brown"},
    {"text":"Tony Blair"},
    {"text":"John Major"},
    {"text":"Margaret Thatcher"},
    {"text":"Barack Obama"},
    {"text":"George W. Bush"},
    {"text":"Bill Clinton"},
    {"text":"George H. W. Bush"},
    {"text":"Ronald Reagan"},
    {"text":"Mickey Mouse"},
    {"text":"Peter Pan"},
    {"text":"Lance Armstrong"},
    {"text":"Michael Jackson"},
    {"text":"Norman Cook (Fatboy Slim)"},
    {"text":"Madonna"},
    {"text":"Jesus"},
    {"text":"Muhammad"},
    {"text":"Elton John"},
    {"text":"Stephen Fry"},
    {"text":"Tom Cruise"},
    {"text":"Adam Sandler"},
    {"text":"Al Pacino"},
    {"text":"Adolf Hitler"},
    {"text":"Justin Beiber"},
    {"text":"Ashton Kutcher"},
    {"text":"Richard Branson"},
    {"text":"Steve Jobs"},
    {"text":"Alexander Graham Bell"},
    {"text":"Katy Perry"},
    {"text":"Elvis Presley"},
    {"text":"John F. Kennedy"},
    {"text":"Albert Einstein"},
    {"text":"Dr Seuss"},
    {"text":"Spider Man"},
    {"text":"Christopher Columbus"},
    {"text":"Mother Teresa"},
    {"text":"William Shakespeare"},
    {"text":"Marilyn Monroe"},
    {"text":"Houdini"},
    {"text":"Mohammad Ali"},
    {"text":"Thomas Edison"},
    {"text":"Martin Luther King"},
    {"text":"Abraham Lincoln"},
    {"text":"Vincent Van Gogh"},
    {"text":"Neil Armstrong"},
    {"text":"Leonardo Da Vinci"},
    {"text":"Bob Dylan"},
    {"text":"Thomas Jefferson"},
    {"text":"Michael Jordan"},
    {"text":"Walt Disney"},
    {"text":"Cleopatra"},
    {"text":"Gandhi"},
    {"text":"John Lennon"},
    {"text":"Benjamin Franklin"},
    {"text":"Ludwig van Beethoven"},
    {"text":"James Dean"},
    {"text":"Clint Eastwood"},
    {"text":"Charles Dickens"},
    {"text":"Harrison Ford"},
    {"text":"Dwight D. Eisenhower"},
    {"text":"Pablo Picasso"},
    {"text":"Paul McCartney"},
    {"text":"Bill Gates"},
    {"text":"Darth Vader"},
    {"text":"Napoleon"},
    {"text":"Mozart"},
    {"text":"Robin Williams"},
    {"text":"Isaac Newton"},
    {"text":"Charlie Brown"},
    {"text":"Alfred Hitchcock"},
    {"text":"Michelangelo"},
    {"text":"Jim Carrey"},
    {"text":"Michael J. Fox"},
    {"text":"Ray Charles"},
    {"text":"George Washington"},
    {"text":"Aristotle"},
    {"text":"Bill Cosby"},
    {"text":"Princess Diana"},
    {"text":"Mark Twain"},
    {"text":"Eddie Murphy"},
    {"text":"Tom Hanks"},
    {"text":"Plato"},
    {"text":"Miles Davis"},
    {"text":"Ernest Hemingway"},
    {"text":"Stephen Hawking"},
    {"text":"Sean Connery"},
    {"text":"Hillary Clinton"},
    {"text":"Oprah Winfrey"},
    {"text":"Jack Nicholson"},
    {"text":"John Travolta"},
    {"text":"Julia Roberts"},
    {"text":"Pamela Anderson"},
    {"text":"Mick Jagger"},
    {"text":"Sigmund Freud"},
    {"text":"C. S. Lewis"},
    {"text":"Steve Irwin"},
    {"text":"Carl Sagan"},
    {"text":"Louis Pasteur"},
    {"text":"Britney Spears"},
    {"text":"Carl Jung"},
    {"text":"Pele"},
    {"text":"Borat"},
    {"text":"Meryl Streep"},
    {"text":"Vladimir Putin"},
    {"text":"Denzel Washington"},
    {"text":"Lewis Carroll"},
    {"text":"Carrie Fisher"},
    {"text":"Justin Timberlake"},
    {"text":"Colin L. Powell"},
    {"text":"Beyoncé Knowles"},
    {"text":"Jessica Simpson"},
    {"text":"Whoopi Goldberg"},
    {"text":"Jane Austen"},
    {"text":"Weird Al Yankovic"},
    {"text":"Kanye West"},
    {"text":"Jesus Christ"},
    {"text":"Lord Buddha"},
    {"text":"Winston Churchill"},
    {"text":"Nelson Mandela"},
    {"text":"Socrates"},
    {"text":"Mahatma Gandhi"},
    {"text":"Karl Marx"},
    {"text":"Napoleon Bonaparte"},
    {"text":"Simon Bolivar"},
    {"text":"Charles Darwin"},
    {"text":"Sir Isaac Newton"},
    {"text":"Confucius"},
    {"text":"Galileo Galilei"},
    {"text":"Mohammed Ali"},
    {"text":"William Tyndale"},
    {"text":"Tim Berners Lee"},
    {"text":"J.S. Bach"},
    {"text":"Dalai Lama"},
    {"text":"Joseph Stalin"},
    {"text":"Marie Curie"},
    {"text":"Johann Gutenberg"},
    {"text":"Genghis Kahn"},
    {"text":"George Orwell"},
    {"text":"Nikola Tesla"},
    {"text":"Alexander Fleming"},
    {"text":"Samuel Johnson"},
    {"text":"Henry Ford"},
    {"text":"Oscar Wilde"},
    {"text":"Beethoven"},
    {"text":"Justin Bieber"},
    {"text":"Taylor Swift"},
    {"text":"Lady Gaga"},
    {"text":"Rihanna"},
    {"text":"Cristiano Ronaldo"},
    {"text":"Jennifer Lopez"},
    {"text":"Kim Kardashian West"},
    {"text":"Sharkira"},
    {"text":"Harry Styles"},
    {"text":"Marshall Mathers (Eminem)"},
    {"text":"Avril Lavigne"},
    {"text":"Emma Watson"},
    {"text":"David Guetta"},
    {"text":"Paris Hilton"},
    {"text":"Snoop Dogg"},
    {"text":"Ricky Martin"},
    {"text":"Simon Cowell"},
    {"text":"Charlie Sheen"},
    {"text":"Wayne Rooney"},
    {"text":"Muhammad Ali"},
    {"text":"Charles de Gaulle"},
    {"text":"Queen Elizabeth II"},
    {"text":"Queen Victoria"},
    {"text":"John M Keynes"},
    {"text":"J.K.Rowling"},
    {"text":"Angelina Jolie"},
    {"text":"Lord Baden Powell"},
    {"text":"Michael Jordon"},
    {"text":"Fidel Castro"},
    {"text":"Amelia Earhart"},
    {"text":"Bob Geldof"},
    {"text":"Roger Federer"},
    {"text":"David Beckham"},
    {"text":"Tiger Woods"},
    {"text":"Usain Bolt"},
    {"text":"C.S. Lewis"},
    {"text":"J.R.R. Tolkien"},
    {"text":"Anne Frank"},
    {"text":"Psi"},
    {"text":"Alexander Litvinenko"},
    {"text":"Dr Dre"},
    {"text":"Batman"},
    {"text":"Superman"},
    {"text":"Buffy Summers"},
    {"text":"The Doctor"},
    {"text":"Sherlock Holmes"},
    {"text":"Spider-Man"},
    {"text":"Harry Potter"},
    {"text":"Mr Spock"},
    {"text":"Indiana Jones"},
    {"text":"Dracula"},
    {"text":"James Bond"},
    {"text":"James T. Kirk"},
    {"text":"Luke Skywalker"},
    {"text":"Han Solo"},
    {"text":"Hamlet"},
    {"text":"Frankenstein's Monster"},
    {"text":"Homer Simpson"},
    {"text":"Frodo Baggins"},
    {"text":"Wolverine"},
    {"text":"Robin Hood"},
    {"text":"Merlin"},
    {"text":"King Arthur"},
    {"text":"Elizabeth Bennet"},
    {"text":"Odysseus"},
    {"text":"Aragorn"},
    {"text":"Joker"},
    {"text":"Atticus Finch"},
    {"text":"Gandalf"},
    {"text":"Iron Man"},
    {"text":"Fitzwilliam Darcy"},
    {"text":"Bugs Bunny"},
    {"text":"Ebenezer Scrooge"},
    {"text":"Tom Sawyer"},
    {"text":"Bilbo Baggins"},
    {"text":"Yoda"},
    {"text":"Tarzan"},
    {"text":"Hercules"},
    {"text":"Hermione Granger"},
    {"text":"Eve (Genesis)"},
    {"text":"Adam (Genesis)"},
    {"text":"Achilles"},
    {"text":"Romeo"},
    {"text":"Juliet"},
    {"text":"Alice (in Wonderland)"},
    {"text":"Noah"},
    {"text":"Huckleberry Finn"},
    {"text":"Frankenstein"},
    {"text":"Jean Valjean"},
    {"text":"Cinderella"},
    {"text":"Dr Jekyll / Mr Hyde"},
    {"text":"Scrooge"},
    {"text":"Victor Hugo"},
    {"text":"John Steinbeck"},
    {"text":"Alexandre Dumas"},
    {"text":"J.K. Rowling"},
    {"text":"Stephen King"},
    {"text":"Agatha Christie"},
    {"text":"Douglas Adams"},
    {"text":"Roald Dahl"},
    {"text":"Philip Pullman"},
    {"text":"H. G. Wells"},
    {"text":"Arthur Conan Doyle"},
    {"text":"Terry Pratchett"},
    {"text":"John Grisham"},
    {"text":"Dan Brown"},
    {"text":"Father Christmas"},
    {"text":"Zeus"},
    {"text":"The Tooth Fairy"}
  ]
  return o
)

.factory('Game', (NamesList) ->
  o = {}

  # Data
  cardBank = NamesList

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
    cardAction(0, o.skippedCards)()
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
