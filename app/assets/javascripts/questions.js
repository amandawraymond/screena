
angular.module('screenaApp', [])
.controller('questionsCtrl', ["$http", "$scope", function($http, $scope){
  
  $scope.questions = questions;

  // $http.get('/questions.json').success(function(data){
  //   $scope.questions = data
  // })
  
  $scope.currentQuestion = $scope.questions[0];
  
  $scope.numQuestions = function() {
    return $scope.questions.length;
  };
  
  $scope.answers = [];
  $scope.weights = [];
  
  $scope.goToNextQuestion = function (answer,weight) {
    if ($scope.currentQuestion.question_number < $scope.numQuestions()) {
      $scope.answers.push(answer);
      $scope.weights.push(weight);
      $scope.currentQuestion = $scope.questions[$scope.currentQuestion.question_number];
    }
  };
  
  $scope.isDone = function() {
    return $scope.currentQuestion.question_number === $scope.numQuestions();
  };
  
  $scope.isStepDone = function(stepNumber) {
    return stepNumber < $scope.currentQuestion.question_number;
  };

  var makeNumbers = function(numbers) {
    return _.map(numbers.split(','), function(number) {
      return { name: number , selected: false };      
    });
  };
  
  $scope.ProgressBar = function(guess) {
    guess.chosen = true;
    var found = false;
    _.each($scope.secretWord, function(letter) {
      if(guess.name.toUpperCase() === letter.name.toUpperCase()) {
        letter.chosen = true;
        found = true;
      };
    }); 
  };

  $scope.numbers = makeNumbers("1,2,3,4");
}]);

var questions = [
  {
    name: 'name',
    label: 'What is your full name?',
    input_type: 'text',
    question_number: 1,
    options: []
  },
  {
    name: 'skill',
    label: 'What is your strongest skill as a Developer?',
    input_type: 'select',
    question_number: 2,
    options: [
      {
        answer: 'Front-end',
        weight: 1,
      },
      {
        answer: 'Back-end',
        weight: 1,
      },
      {
        answer: 'Full stack',
        weight: 1,
      }
    ]
  },
  {
    name: 'skill',
    label: 'How long have you been a developer (years)?',
    input_type: 'select',
    question_number: 3,
    options: [
      {
        answer: '0-3',
        weight: 1
      },
      {
        answer: '3-7',
        weight: 1
      },
      {
        answer: '7 and above',
        weight: 1
      }
    ]
  },
  {
    name: 'skill',
    label: 'What type of companies have you worked at?',
    input_type: 'checkbox',
    question_number: 4,
    options: [
      {
        answer: 'Startups',
        weight: 1
      },
      {
        answer: 'Small and Mid-Size',
        weight: 1
      },
      {
        answer: 'Large Enterprises',
        weight: 1
      }
    ]
  },
  {
    name: 'thankyou',
    label: 'Thank you!',
    input_type: 'message',
    question_number: 5,
    options: []
  }
]