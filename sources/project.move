module MyModule::DailyQuizPlatform {

    use aptos_framework::signer;
    use std::string::String;

    /// Struct to store the quiz of the day.
    struct DailyQuiz has store, key {
        question: String,
        answer: String,
    }

    /// Function to set the daily quiz.
    public fun set_quiz(admin: &signer, question: String, answer: String) {
        let quiz = DailyQuiz { question, answer };
        move_to(admin, quiz);
    }

    /// Function to check the submitted answer.
    public fun check_answer(user: &signer, quiz_owner: address, submitted_answer: String): bool acquires DailyQuiz {
        let quiz = borrow_global<DailyQuiz>(quiz_owner);
        quiz.answer == submitted_answer
    }
}
