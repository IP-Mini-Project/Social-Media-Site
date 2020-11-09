const startButton = document.getElementById('start-btn')
const nextButton = document.getElementById('next-btn')
const questionContainerElement = document.getElementById('question-container')
const questionElement = document.getElementById('question')
const answerButtonsElement = document.getElementById('answer-buttons')



let shuffledQuestions, currentQuestionIndex

startButton.addEventListener('click', startGame)
nextButton.addEventListener('click', () => {
  currentQuestionIndex++
  setNextQuestion()
})

function startGame() {
  startButton.classList.add('hide')
  shuffledQuestions = questions.sort()
  currentQuestionIndex = 0
  questionContainerElement.classList.remove('hide')
  setNextQuestion()
}

function setNextQuestion() {
  resetState()
  showQuestion(shuffledQuestions[currentQuestionIndex])
}

function showQuestion(question) {
  questionElement.innerText = question.question
  question.answers.forEach(answer => {
    const button = document.createElement('button')
    button.innerText = answer.text
    button.classList.add('btn')
    if (answer.correct) {
      button.dataset.correct = answer.correct
    }
    button.addEventListener('click', selectAnswer)
    answerButtonsElement.appendChild(button)
  })
}

function resetState() {
  clearStatusClass(document.body)
  nextButton.classList.add('hide')
  while (answerButtonsElement.firstChild) {
    answerButtonsElement.removeChild(answerButtonsElement.firstChild)
  }
}

function selectAnswer(e) {
  const selectedButton = e.target
  const correct = selectedButton.dataset.correct
  setStatusClass(document.body, correct)
  Array.from(answerButtonsElement.children).forEach(button => {
    setStatusClass(button, button.dataset.correct)
  })
  if (shuffledQuestions.length > currentQuestionIndex + 1) {
    nextButton.classList.remove('hide')
  } else {
    startButton.innerText = 'Submit'
    startButton.innerText = 'Restart'
    startButton.classList.remove('hide')
  }
}

function setStatusClass(element, correct) {
  clearStatusClass(element)
  if (correct) {
    element.classList.add('correct')
  } else {
    element.classList.add('wrong')
  }
}

function clearStatusClass(element) {
  element.classList.remove('correct')
  element.classList.remove('wrong')
}

const questions = [
  {
    question: 'Where are you planning to live?',
    answers: [
      { text: 'On-campus' ,value: 'On' },
      { text: 'Off-campus' , value: 'Off'}
    ]
  },

  {
    question: 'Which gender do you identify with the most?',
    answers: [
      { text: 'Female' ,value: 'F'},
      { text: 'Male' ,value: 'M'},
      { text: 'Non-binary' ,value: 'B'}
    ]
  },
  {
    question: 'Who do you want to share the room with?',
    answers: [
      { text: 'Male',value: 'F'},
      { text: 'Female',value: 'M'},
      { text: 'Non-binary',value: 'B'}
      ]
  },
  {
    question: 'When does your weekday alarm go off?',
    answers: [
      { text: 'Before 8am', ,value: '8'},
      { text: 'Around 10am',value: '10'},
      { text: 'After 12pm ',value: '12'}
    ]
  },

  {
    question: 'When do you typically head to bed?',
    answers: [
      { text: 'Before 10pm' value: '8'},
      { text: 'Around midnight' value: '8'},
      { text: 'After 2am 'value: '8'}
    ]
  },
  {
    question: 'How tidy are you?',
    answers: [
      { text: 'Tidy AF '},
      { text: 'I put most things away '},
      { text: "Where's the floor?"}
    ]
  },

  {
    question: 'What level of noise would you wake up at night?',
    answers: [
      { text: 'Anything '},
      { text: 'Some things '},
      { text: 'Nothing'}
    ]
  },
  {
     question: 'What\'s your guest policy?',
     answers: [
       { text: "I'd prefer no guests" },
       { text: 'Usually fine; but inform first '},
       { text: 'The more the merrier!'}
     ]
   },

   {
     question: 'What do you like to do on weekends?',
     answers: [
       { text: 'Watch Netflix '},
       { text: 'Hangout with friends '},
       {text: 'Go to a lit party'}
     ]
   },

   {
     question: 'What is your ideal roommate relationship?',
     answers: [
       { text: 'Respectful but separate '},
       { text:  "I'd like us to be friends"},
       { text: 'Best Friends Forever!'}
     ]
   }
 ]

// $('.btn').mousedown(function () {
//   var classList = $(this).attr('class');
//   // console.log(classList);
//   var classArr = classList.split(" ");
//   // console.log(classArr);
//   var this_group = classArr[0];

//   if($(this).hasClass('active')) {
//     $(this).removeClass('active');
//      $(this).text();
//   } else {
//     // $('[class='thisgroup).prop('checked', false);
//     $('.'+this_group+'.active').text();
//     // console.log($('.'+this_group+'.active').text());
//     $('.'+this_group).removeClass('active');

//     // console.log('group' + findValueWeight(prompt_values, $('.'+this_group).text()));
//     // $(this).prop('checked', true);
//     $(this).addClass('active');
//     $(this).text();
//   }
// })









































