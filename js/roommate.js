const startButton = document.getElementById('start-btn')
const nextButton = document.getElementById('next-btn')
const questionContainerElement = document.getElementById('question-container')
const questionElement = document.getElementById('question')
const answerButtonsElement = document.getElementById('answer-buttons')
// let answerbtn1 = document.querySelector('#btn-one')
// let answerbtn2 = document.querySelector('#btn-two')
// let answerbtn3 = document.querySelector('#btn-three')
// let answerbtn4 = document.querySelector('#btn-four')

let shuffledQuestions, currentQuestionIndex

// answerbtn1.addEventListener('click' , () => answerbtn1.style.backgroundColor = 'red')
// answerbtn2.addEventListener('click' , () => answerbtn2.style.backgroundColor = 'red')
// answerbtn3.addEventListener('click' , () => answerbtn3.style.backgroundColor = 'red')
// answerbtn4.addEventListener('click' , () => answerbtn.style.backgroundColor = 'red')
startButton.addEventListener('click', startGame)
nextButton.addEventListener('click', () => {
  currentQuestionIndex++
  setNextQuestion()
})

function startGame() {
  startButton.classList.add('hide')
  shuffledQuestions = questions.sort(() => Math.random() - .5)
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
      { text: 'On-campus'},
      { text: 'Off-campus' }
    ]
  },

  {
    question: 'Which gender do you identify with the most?',
    answers: [
      { text: 'Female'},
      { text: 'Male'},
      { text: 'Non-binary'}
    ]
  },
  {
    question: 'Who do you want to share the room with?',
    answers: [
      { text: 'Male'},
      { text: 'Female'},
      { text: 'Non-binary'}
      ]
  },
  {
    question: 'When does your weekday alarm go off?',
    answers: [
      { text: 'Before 8am'},
      { text: 'Around 10am'},
      { text: 'After 12pm '}
    ]
  },

  {
    question: 'When do you typically head to bed?',
    answers: [
      { text: 'Before 10pm'},
      { text: 'Around midnight'},
      { text: 'After 2am '}
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













































