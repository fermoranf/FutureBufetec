import Foundation

class UserModel: Codable {
    var id: String
    var type: String
    var userID: String
    var name: String
    var email: String
    var especiality: String
    var caseID: [String]
    var description: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case type = "tipo"
        case userID = "id"
        case name = "nombre"
        case email = "correo"
        case especiality = "especialidad"
        case caseID = "caso_id"
        case description = "descripcion"
    }

    init(id: String, type: String, userID: String, name: String, email: String, especiality: String, caseID: [String], description: String) {
        self.id = id
        self.type = type
        self.userID = userID
        self.name = name
        self.email = email
        self.especiality = especiality
        self.caseID = caseID
        self.description = description
    }
}


// Extension to provide default values
extension UserModel {
    static var defaultValue: UserModel = UserModel(
        id: "default_id",
        type: "default_type",
        userID: "default_user_id",
        name: "default_name",
        email: "default_email@example.com",
        especiality: "default_speciality",
        caseID: ["default_case_001"], // Example default case ID
        description: "default_description"
    )
}
