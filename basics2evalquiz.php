<?php
$topic = $_GET['topic'] ?? 'Unknown Topic';

// Load the harder questions from the CSV file
$csvFile = __DIR__ . '/intermediate_forces_questions.csv';
$questions = [];

// Read the CSV file and store questions in an array
if (($handle = fopen($csvFile, 'r')) !== FALSE) {
    $header = fgetcsv($handle); // Read header row
    while (($data = fgetcsv($handle)) !== FALSE) {
        $questions[] = array_combine($header, $data);
    }
    fclose($handle);
}

// Randomly select 10 questions
shuffle($questions);
$quiz = array_slice($questions, 0, 10);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz on <?php echo $topic; ?></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Poppins', sans-serif; background-color: #f4f4f9; }
        .quiz-container { background:linear-gradient(to right, #121212, #02386E); color: #ffffff; padding: 20px; border-radius: 10px; margin-bottom: 5px; box-shadow: 0 4px 20px rgba(0,0,0,0.2); }
        .question { font-weight: bold; color: #ffffff; margin-bottom: 15px; }
        .option-btn { display: inline-flex; width: 20%; margin-bottom: 10px; padding: 10px; background-color: #5d7997; color: #ffffff; border: none; border-radius: 5px; cursor: pointer; transition: background-color 0.3s; }
        .option-btn:hover { background-color: #0056b3; }
        .option-btn.correct { background-color: #28a745 !important; }
        .option-btn.wrong { background-color: #dc3545 !important; }
        .summary-block { background: linear-gradient(to right, #121212, #02386E); color: #ffffff; padding: 20px; border-radius: 20px; margin-top: 10px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); }
        .level-btn { display: block; width: fit-content; margin-bottom: 1px; padding: 10px 20px; background-color: #d91709; color: #ffffff; border: none; border-radius: 5px; cursor: pointer; text-align: center; text-decoration: none; transition: background-color 0.3s; }
        .level-btn:hover { background-color: #6e99c6; }
        .result-block { background-color: #ffffff; color: #333333; padding: 10px 10px; border-radius: 4px; margin: 20px 5px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); font-size: 0.9em; }
        .status-correct { color: green; font-weight: bold; }
        .status-wrong { color: red; font-weight: bold; }
    </style>
    <script>
        const questions = <?php echo json_encode($quiz); ?>;
        let correctAnswers = 0;
        let wrongAnswers = 0;
        let results = [];

        window.onload = function startQuiz() {
            const quizContainer = document.getElementById("quiz-container");
            questions.forEach((q, index) => {
                const options = [q.Correct_Answer, q.Option_2, q.Option_3, q.Option_4];
                options.sort(() => Math.random() - 0.5);

                const questionBlock = document.createElement("div");
                questionBlock.className = "quiz-container";
                questionBlock.innerHTML = `
                    <p class="question">${q.Question}</p>
                    <div class="options">
                        ${options.map((answer, i) => `
                            <button class="option-btn" onclick="selectAnswer(${index}, '${answer}')">${answer}</button>
                        `).join("")}
                    </div>
                `;
                quizContainer.appendChild(questionBlock);
            });
        }

        function selectAnswer(questionIndex, selectedAnswer) {
            const q = questions[questionIndex];
            const correct = selectedAnswer === q.Correct_Answer;
            if (correct) correctAnswers++;
            else wrongAnswers++;
            results[questionIndex] = {
                question: q.Question,
                selected: selectedAnswer,
                correct: q.Correct_Answer,
                status: correct ? 'Correct' : 'Wrong'
            };
            const buttons = document.querySelectorAll(`.quiz-container:nth-child(${questionIndex + 1}) .option-btn`);
            buttons.forEach((btn) => {
                btn.disabled = true;
                if (btn.textContent === q.Correct_Answer) btn.classList.add("correct");
                else if (btn.textContent === selectedAnswer) btn.classList.add("wrong");
            });
            if (results.filter(r => r !== undefined).length === questions.length) {
                document.getElementById("quiz-container").style.display = "none";
                showResults();
            }
        }

       function showResults() {
            const totalQuestions = questions.length;
            const averageIncorrect = (wrongAnswers / totalQuestions).toFixed(2);
            let levelMessage = "";
            let levelLink = "";
            if (correctAnswers < 3) {
                levelMessage = `Oh oh! You have scored really less!<br><br>This means you have really little knowledge in this area. Let's go back to Basics Level 1 and learn more!`;
                levelLink = '<a href="basic1.php?topic=Forces" class="level-btn">Go to Basics Level 1 Learning</a>';
            } else if (correctAnswers <= 5) {
                levelMessage = `Oh oh! You have scored below 5!<br><br>This means you only have little knowledge in this area. Let's go back to Basics Level 2 again and learn more!`;
                levelLink = '<a href="basic2.php?topic=Forces" class="level-btn">Go to Basics Level 2 Learning</a>';
            } else {
                levelMessage = `Great! You have scored well!<br><br>This means you have gained basics level of knowledge in this area. Let's go to Intermediate Level and learn more!`;
                levelLink = '<a href="intermediate.php?topic=Forces" class="level-btn">Go to Intermediate Level Learning</a>';
            }

            const summaryContainer = document.getElementById("summary");
            summaryContainer.innerHTML = `<div class="summary-block">
                <h2>Here are your results!</h2>
                <p>Total number of correct answers: ${correctAnswers} / ${totalQuestions}</p>
                <p>Total number of incorrect answers: ${wrongAnswers} / ${totalQuestions}</p>
                <p>Average Incorrect per Question: ${averageIncorrect}</p>
                <h3>${levelMessage}</h3><br>
                ${levelLink}
            </div>`;

            const resultsContainer = document.getElementById("results");
            resultsContainer.innerHTML = results.map(r => `
                    <div class="result-block">
                        <p><strong>Question:</strong> ${r.question}</p>
                        <p><strong>Your Answer:</strong> ${r.selected}</p>
                        <p style="color: green;"><strong>Correct Answer:</strong> ${r.correct}</p>
                        <p class="${r.status === 'Correct' ? 'status-correct' : 'status-wrong'}"><strong>Status:</strong> ${r.status} ${r.status === 'Correct' ? '✅' : '❌'}</p>
                    </div>
            `).join("")
            window.scrollTo(0, 0); // Scroll to top after showing results
        }
            
    </script>
</head>
<body>
    <h1>Quiz on <?php echo $topic; ?></h1>
    <div id="quiz-container"></div>
    <div id="summary"></div>
    <div id="results"></div>    
</body>
</html>