import Foundation

var userList = ["123", "456", "789"]
var bookList = ["Animal Farm", "Ready Player One", "Ready Player Two"]
var avilibleBooks = ["Ready Player One"]

struct User {
    var userId: String
    var userName: String
    var checkedOutBooks: [String]
}

let testUser = User(userId: "123", userName: "DC", checkedOutBooks: ["Animal Farm", "Ready PLayer Two"])

protocol UsersList {
    var user: User { get set }
//    var userId: String { get set }
    func fetchUserList() -> [String]
    func checkUserId()
}

class UserList: UsersList {
    var user: User
//    var userId = user.userId
    
    func fetchUserList() -> [String] {
        var userList = user.checkedOutBooks
        return userList
    }
    
    func checkUserId() { fatalError("User not created") }
    
    func makeUserId() {
        
    }
    
    init(user: User, userId: String) {
        self.user = user
//        self.userId = userId
    }
    
}
// Check to see if the user has the book
class UsersCheckedOutBooks {
    let user: User
    let book: String
    
    func checkBook() {
        for userBook in user.checkedOutBooks {
            if book == userBook {
                print("Sorry you already have that book")
            }
        }
    }
    
    init(user: User, book: String) {
        self.user = user
        self.book = book
    }
}

class UserRequestedBook: CheckUsersCheckedOutBooks {
    func fetchBook() {
        
    }
}

class CheckOutBook {
    func fetchBook() {
        
    }
}

