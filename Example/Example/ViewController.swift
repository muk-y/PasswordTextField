//
//  ViewController.swift
//  Example
//
//  Created by ekmacmini43 on 04/01/2022.
//

import UIKit
import PasswordTextField

class ViewController: UIViewController {

    //MARK: VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: Other functions
    private func setup() {
        view.translatesAutoresizingMaskIntoConstraints = false
        let passwordTextField = PasswordTextField(frame: CGRect(x: .zero, y: .zero, width: .zero, height: .zero))
        view.addSubview(passwordTextField)
        
    }

}

