//
//  ContactTableViewCell.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    // MARK: - IBOutlets -
    
    @IBOutlet weak var userAvatarImageView: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(model: ContactsList.Users.ViewModel) {
        firstNameLabel.text = model.firstName
        lastNameLabel.text = model.lastName
        emailLabel.text = model.email
    }
}
