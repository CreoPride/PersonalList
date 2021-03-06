    //
    //  ShortContactsViewController.swift
    //  PersonalList
    //
    //  Created by Konstantin Fomenkov on 22.03.2022.
    //

import UIKit

class ShortContactsViewController: UITableViewController {

    var persons: [Person] = []

        // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shortContact", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content
        return cell
    }

        // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailContactsVC = segue.destination as? PersonDetailViewController else { return }
        guard let indexRow = tableView.indexPathForSelectedRow?.row else { return }
        detailContactsVC.person = persons[indexRow]
    }
}
