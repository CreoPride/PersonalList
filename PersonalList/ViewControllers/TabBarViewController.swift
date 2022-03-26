    //
    //  TabBarViewController.swift
    //  PersonalList
    //
    //  Created by Konstantin Fomenkov on 23.03.2022.
    //

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendPersonsToContatsLists()
    }
    
    private func sendPersonsToContatsLists() {
        viewControllers?.forEach { viewController in
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let shortContactsVC = navigationVC.topViewController as? ShortContactsViewController {
                shortContactsVC.persons = persons
            } else if let detailContactsVC = navigationVC.topViewController as? DetailContactsViewController {
                detailContactsVC.persons = persons
            }
        }
    }

    
}
