// Answers in scope:
// - hello there
// - where should i go on holiday?
// - where can i find the North Pole?
// - where are the cookies?
// - can i have a cookie?"
// - can i have a cookie?!!!
// - should i go?
// - Any other questions: Hmm, that's a tough one. I'll have to think about it.

struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        let lowerQuestion = question.lowercased()
        
        switch lowerQuestion {
        case "hello there":
            return "why, hello there"
        case "where should i go on holiday?", "where can i find the North Pole?":
            return "To the North!"
        case "where are the cookies?":
            return "In the cookie jar!"
        case "can i have a cookie?", "can i have a cookie?!!!":
            return "Sure, you can have a cookie!"
        case "should i go?":
            return "I don't know, should you?"
        default:
            return "Hmm, that's a tough one. I'll have to think about it."
        }
    }
}
