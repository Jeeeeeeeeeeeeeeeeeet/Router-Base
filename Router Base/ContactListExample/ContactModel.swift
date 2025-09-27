//
//  ContactModel.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import Foundation

struct Contact: Identifiable, Hashable {
    var id: UUID = UUID()
    let name: String
    let number: String
    
    static let mock: [Contact] = [
        .init(name: "John Doe", number: "1111111111"),
        .init(name: "Jane Doe", number: "2222222222"),
        .init(name: "Alice Smith", number: "3333333333"),
        .init(name: "Bob Johnson", number: "4444444444"),
        .init(name: "Charlie Davis", number: "5555555555"),
        .init(name: "Diana Prince", number: "6666666666"),
        .init(name: "Ethan Hunt", number: "7777777777"),
        .init(name: "Fiona Gallagher", number: "8888888888"),
        .init(name: "George Lopez", number: "9999999999"),
        .init(name: "Hannah Montana", number: "1010101010"),
        .init(name: "Isaac Newton", number: "1212121212"),
        .init(name: "Jenna Ortega", number: "1313131313"),
        .init(name: "Kevin Hart", number: "1414141414"),
        .init(name: "Lara Croft", number: "1515151515"),
        .init(name: "Michael Scott", number: "1616161616"),
        .init(name: "Nina Dobrev", number: "1717171717"),
        .init(name: "Oscar Isaac", number: "1818181818"),
        .init(name: "Pam Beesly", number: "1919191919"),
        .init(name: "Quentin Tarantino", number: "2020202020"),
        .init(name: "Rachel Green", number: "2121212121")
    ]
}
