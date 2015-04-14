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
      template: """<p>Get your teammates to guess as many famous figures and characters as you can before the time runs out; without saying any part of the name shown or rhyming.</p>
                   <p>Once all the names are guessed, a new round begins and you're limited to three, then one, then no words.</p>
                   <p>You get two skips per go and you'll need to split into two teams (Green and Blue).</p>
                   #{Game.currentTeam().name}'s up - it's #{Game.currentRound()}."""
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
