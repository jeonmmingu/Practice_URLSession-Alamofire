import Foundation

struct UserDatas: Codable {
    var results: [RandomUser]
}

struct RandomUser: Codable {
    let name: Name
    let email: String
    
    struct Name: Codable {
        var title: String
        var first: String
        var last: String
        
        var full: String {
            return "\(self.title.capitalized).\(self.last.capitalized) \(self.first.capitalized)"
        }
    }
    
    static func getDummy() -> Self {
        return RandomUser(name: Name.init(title: "MR", first: "Minhyun", last: "Cho"), email: "simh3077@gmail.com")
    }
}
