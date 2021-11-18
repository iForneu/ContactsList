//
//  TabBarViewController.swift
//  ContactsList
//
//  Created by Kirill Korotaev on 18.11.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController

        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
