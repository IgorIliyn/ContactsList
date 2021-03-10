//
//  ContactsListViewController.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol ContactsListDisplayLogic: class {
    func showUsers(model: [ContactsList.Users.ViewModel])
}

class ContactsListViewController: UIViewController {
    
    var interactor: ContactsListBusinessLogic?
    var router: (NSObjectProtocol & ContactsListRoutingLogic & ContactsListDataPassing)?
    
    // MARK: - Stored properties -
    var users = [ContactsList.Users.ViewModel]()
    
    // MARK: - IBOutlets -
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup() {
        
        let viewController = self
        let interactor = ContactsListInteractor()
        let presenter = ContactsListPresenter()
        let router = ContactsListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        interactor?.getUsers()
    }

}

private extension ContactsListViewController {
    
    func setupUI() {
        tableView.tableFooterView = UIView()
    }
}
