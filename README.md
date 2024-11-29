### Quiz Application
A simple Flutter-based quiz application designed for an interactive and engaging user experience, where users answer a series of questions, track their correctness with tick or cross icons, and see their total score at the end.

# Features
- Interactive Quiz Flow:
Users can dynamically select answers to questions.<br>
Smooth transitions between questions.<br>
Immediate results upon quiz completion.<br>
The application updates its internal state in real-time to reflect the user's choice, which may affect the progress bar, scoring, or correctness indicators (tick or cross icons).

- Progress Tracking:
A progress bar visually indicates the user's completion status of the quiz using LinearProgressIndicator widget.<br>
Real-time updates as questions are answered.<br>

- Answer Tracking with Icons:
Correct answers are marked with a tick icon.<br>
Incorrect answers are marked with a cross icon.<br>
Score icons provide clear feedback for every question attempt.<br>

- Detailed Results:
A results page shows the user's total score and performance analysis. <br>
Users can review their answers and see which questions were answered correctly or incorrectly. <br>

- Modern Flutter Design Patterns:
Clean separation of logic into multiple files. <br>
Well-organized project structure for maintainability and scalability. <br>

# File Structure
<pre>
├── main.dart            // Entry point of the application.
├── answer.dart          // Handles individual answer rendering.
├── question.dart        // Manages question display logic.
├── quiz.dart            // Combines questions and answers into a cohesive quiz flow.
├── result.dart          // Displays the final results to the user.
</pre>

# How to Run
- Ensure Flutter is installed on your system.
- Clone this repository, using git clone <repository-url>
- Navigate to the project directory, using cd <project-directory>
- Run the application, using flutter run command. 

## Screenshots

- ![ss0.png](/ScreenShots/ss0.png)

- ![ss1.png](/ScreenShots/ss1.png)

- ![ss2.png](/ScreenShots/ss2.png)

