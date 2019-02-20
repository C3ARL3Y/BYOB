//
//  StepsBaristPicksViewController.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

final class StepsBaristaPicksViewController: UITableViewController {
    
    var baristVC: CreateBaristaPicksViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonPressed))
        item.tintColor = .tanTitle
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonPressed))
        doneButton.tintColor = .tanTitle
        let space = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        setToolbarItems([doneButton, space, item], animated: true)
        navigationController?.setNavigationBarHidden(true, animated: false)
        navigationController?.setToolbarHidden(false, animated: false)
        tableView.allowsSelection = false
    }

    var steps = [String]()
    
    @objc func doneButtonPressed() {
        baristVC.steps = steps
        dismiss(animated: true, completion: nil)
    }
    
    @objc func addButtonPressed() {
        let alert = UIAlertController(title: "", message: "Add step", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "step"
        })
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { (updateAction) in
            self.steps.append(alert.textFields!.first!.text!)
            self.tableView.reloadData()
        }))
        self.present(alert, animated: false)
    }
}
extension StepsBaristaPicksViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return steps.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell().configured {
            $0.backgroundColor = .tanTitle
            $0.textLabel?.textColor = .tanBG
            $0.textLabel?.text = steps[indexPath.row]
        }
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let editAction = UITableViewRowAction(style: .default, title: "Edit", handler: { (action, indexPath) in
            let alert = UIAlertController(title: "", message: "Edit step \(indexPath.row)", preferredStyle: .alert)
            alert.addTextField(configurationHandler: { (textField) in
                textField.text = self.steps[indexPath.row]
            })
            alert.addAction(UIAlertAction(title: "Update", style: .default, handler: { (updateAction) in
                self.steps[indexPath.row] = alert.textFields!.first!.text!
                self.tableView.reloadRows(at: [indexPath], with: .fade)
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: false)
        })
        
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) in
            self.steps.remove(at: indexPath.row)
            tableView.reloadData()
        })
        
        return [deleteAction, editAction]
    }
}

