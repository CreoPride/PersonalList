    //
    //  Person.swift
    //  PersonalList
    //
    //  Created by Konstantin Fomenkov on 22.03.2022.
    //

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String

    var fullname: String {
        "\(name) \(surname)"
    }

    static func getPersonsList() -> [Person] {
        let dataManager = DataManager()
        var persons: [Person] = []
        while persons.count < 10 {
            let name = dataManager.names.randomElement() ?? ""
            let surname = dataManager.surnames.randomElement() ?? ""
            let email = dataManager.emails.randomElement() ?? ""
            let phone = dataManager.phones.randomElement() ?? ""

            persons.append(Person(name: name, surname: surname, email: email, phone: phone))

            dataManager.names.removeAll { $0 == name }
            dataManager.surnames.removeAll { $0 == surname }
            dataManager.emails.removeAll { $0 == email }
            dataManager.phones.removeAll { $0 == phone }
        }
        return persons
    }
}
