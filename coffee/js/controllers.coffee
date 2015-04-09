angular.module('starter.controllers', [])

.controller('AppCtrl', ($scope, $ionicModal, $timeout, $ionicPopup, Game) ->
  $scope.newGame = ->
    window.console.log('newGame clicked')
    $ionicPopup.confirm(
      title: 'End current game?',
      template: 'Are you sure you want to end the current game?'
      cancelText: 'No, play on'
      okType: 'button-assertive'
      okText: 'End game'
    ).then((res) -> Game.newGame() if res)
)

.controller('GameCtrl', ($scope, $interval, $ionicPopup, Game) ->
  $scope.currentCard = Game.currentCard
  $scope.skip = Game.skip
  $scope.foul = Game.foul
  $scope.got = Game.got
  $scope.currentTeam = Game.currentTeam
  $scope.currentRound = Game.currentRound
  maxSkips = 2
  $scope.unSkippable = -> Game.skips >= maxSkips

  # Popups
  roundAlert = ->
    stopTimer()
    $ionicPopup.alert(
      title: Game.currentRound()
      template: 'Your go continues with a new round.'
      okText: 'Continue'
    ).then(startTimer)
  Game.roundAlert = roundAlert
  turnEndAlert = ->
    stopTimer()
    $ionicPopup.alert(
      title: 'Time\'s up'
      template: """#{Game.currentTeam().name} Team, your turn is over.<br />
                   You got #{Game.turnPoints} points this turn.<br />
                   Scores: #{Game.scoreStr()}."""
      okText: 'OK'
      okType: 'button-energized'
    ).then(turnStartAlert)
  Game.turnEndAlert = turnEndAlert
  turnStartAlert = ->
    Game.teamSwitch()
    $ionicPopup.alert(
      title: "#{Game.currentTeam().name} Team, it's your turn"
      template: """It's #{Game.currentRound()}.<br />
                   Scores: #{Game.scoreStr()}."""
      okText: 'Start turn'
      okType: 'button-balanced'
    ).then(startTimer)
  Game.turnStartAlert = turnStartAlert
  gameOverAlert = ->
    stopTimer()
    $ionicPopup.alert(
      title: 'Game over'
      template: """Scores: #{Game.scoreStr()}."""
      okText: 'Start new game'
      okType: 'button-assertive'
    ).then(-> Game.newGame())
  Game.gameOverAlert = gameOverAlert
  newGameAlert = ->
    stopTimer()
    $ionicPopup.alert(
      title: 'Get ready'
      template: """#{Game.currentTeam().name} Team, you're up first.<br />
                   It's #{Game.currentRound()}."""
      okText: 'Start game'
      okType: 'button-balanced'
    ).then(startTimer)
  Game.newGameAlert = newGameAlert

  # Timer
  goLength = 60
  timeRemaining = goLength * 10
  timerOn = true
  timer = ->
    if timerOn
      timeRemaining -= 1
      if timeRemaining <= 0
        timeRemaining = goLength * 10
        Game.nextTeam()
  counter = {}
  resetTimer = -> timeRemaining = goLength * 10
  Game.resetTimer = resetTimer
  startTimer = ->
    timerOn = true
    $scope.displayName = true
  stopTimer = ->
    timerOn = false
    $scope.displayName = false
  $scope.timePercent = -> timeRemaining/goLength/10*100
  $interval(timer, 100)
  $scope.displayName = false

  # Init
  Game.newGame()
)
