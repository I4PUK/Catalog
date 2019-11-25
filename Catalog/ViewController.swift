//
//  ViewController.swift
//  Catalog
//
//  Created by sergey on 22.11.2019.
//  Copyright © 2019 sergey. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    
    var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .orange
        tableView.rowHeight = 100
        return tableView
    }()
    
    let products = Observable.just(Product.qualities)
    let disposeBag = DisposeBag()
    
    //var safeArea: UILayoutGuide!
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .orange
        //safeArea = view.layoutMarginsGuide

        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        setupContraints()
        tableView.register(GoodCell.self, forCellReuseIdentifier: GoodCell.Identifier)
        setupCellConfiguration()
    }
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        view.addSubview(tableView)
        setupContraints()
        setupCellConfiguration()
    }*/

    func setupContraints(){
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        //tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

private extension ViewController{
    
    func setupCellConfiguration() {
      products
        .bind(to: tableView.rx.items(
            cellIdentifier: GoodCell.Identifier,
                 cellType: GoodCell.self)) { row, product, cell in
                    cell.configureWithChocolate(product: product)
        }
        .disposed(by: disposeBag)
    }
}
/*    var loginButton: UIButton = {
    var button = UIButton()
    button = UIButton(type: .system)
    button.setTitle("Login", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
}()

var nameTextField: UITextField = {
    var nameTF = UITextField()
    nameTF = UITextField(frame: .zero)
    nameTF.placeholder = "Login Name"
    nameTF.borderStyle = .roundedRect
    nameTF.translatesAutoresizingMaskIntoConstraints = false
    return nameTF
}()

override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .cyan
    view.addSubview(loginButton)
    view.addSubview(nameTextField)
    constraintsInit()
}

func constraintsInit() {
    NSLayoutConstraint.activate([
      loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      nameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
      nameTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
      nameTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)
    ])
} */
