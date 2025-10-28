import Foundation


struct User {
    var userId: String
    var userName: String
}

let testUser = User(userId: "123", userName: "DC")

protocol UsersList {
    var user: User { get set }
    var userId: String { get set }
    var userIdList: [String] { get set }
    func fetchUserList()
    func checkUserId() -> Bool
}

class MakeUserId: UsersList {
    var user = testUser
    var userId = testUser.userId
    var userIdList = ["123", "456", "789"]
    func fetchUserList() {
        
    }
    // i forgot what i was cooking with this i got too in the moment and didn't know what i was doing i just wrote code and it worked
    func checkUserId() -> Bool {
        var userHasId = false
        for id in userIdList {
            if id == userId {
                userHasId = true
            }
        }
        return userHasId
    }
    
    func makeUserId() {
        
    }
    
}

class UserId {
    
}

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

