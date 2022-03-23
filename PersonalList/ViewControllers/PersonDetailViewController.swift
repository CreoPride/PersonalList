//
//  PersonDetailViewController.swift
//  PersonalList
//
//  Created by Konstantin Fomenkov on 22.03.2022.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullnameLabel.text = person.fullname
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "e-mail: \(person.email)"
    }
}
