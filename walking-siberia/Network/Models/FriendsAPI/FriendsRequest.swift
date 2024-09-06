import Foundation

struct FriendsRequest: Codable {
    let filter: String
    let search: String
    let limit: Int
    let page: Int
}
