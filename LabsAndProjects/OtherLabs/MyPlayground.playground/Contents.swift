import Foundation

var userList = ["123", "456", "789"]



struct User {
    var userId: String
    var userName: String
    var checkedOutBookd: [String]
}

let testUser = User(userId: "123", userName: "DC", checkedOutBookd: ["Animal Farm", "Ready PLayer Two"])

protocol UsersList {
    var user: User { get set }
    var userId: String { get set }
    func fetchUserList() -> [String]
    func checkUserId() -> Bool
}

class MakeUserId: UsersList {
    var user = testUser
    var userId = testUser.userId
    func fetchUserList() -> [String] {
        var userList = ["123", "456", "789"]
        return userList
    }
    // i forgot what i was cooking with this i got too in the moment and didn't know what i was doing i just wrote code and it worked
    func checkUserId() -> Bool {
        var userHasId = false
        
        for id in fetchUserList() {
            if id == userId {
                userHasId = true
            }
        }
        
        return userHasId
    }
    
    func makeUserId() {
        
    }
    
}
// i forgot what i was doing
class CheckUsersCheckedOutBooks {
    
}

protocol FindBook {
    func fetchBook()
}

class UserRequestedBook: FindBook {
    func fetchBook() {
        
    }
}

class CheckOutBook: FindBook {
    func fetchBook() {
        
    }
}

