//
//  ContactDetailsViewController.swift
//  ContactsList
//
//  Created by Kirill Korotaev on 18.11.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }
}
