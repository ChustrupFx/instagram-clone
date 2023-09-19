//
//  ViewController.swift
//  instagram-clone
//
//  Created by Victor Soares on 14/09/23.
//

import UIKit

let DEFAULT_HORIZONTAL_PADDING = CGFloat(20)

class ViewController: UIViewController {

    let emailInput = TextInput(placeholder: "Phone number, username or email")
    let passwordInput = TextInput(placeholder: "Password", isSecureTextEntry: true)
    let forgotPassword = UIButton()
    let submitBtn = Button(title: "Log in")
    let divider = Divider(text: "OR")
    let fbLogo = UIImageView(image: UIImage(named: "facebook-logo"))
    
    func makeFBMessage() -> UIView {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.translatesAutoresizingMaskIntoConstraints = false

        view.alignment = .center
        let label = Label(text: "Continue as Victor Inácio")
        label.textColor = UIColor(named: "Facebook")
      
        fbLogo.translatesAutoresizingMaskIntoConstraints = false
        view.addArrangedSubview(fbLogo)
        view.addArrangedSubview(label)
        
        view.isAccessibilityElement = true
        
        view.accessibilityLabel = "Meu pau na sua mão"
        view.accessibilityHint = "Continue as Victor Inácio"
        
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fbMessage = makeFBMessage()
        
        view.backgroundColor = .white
        
        view.addSubview(emailInput)
        view.addSubview(passwordInput)
        view.addSubview(forgotPassword)
        view.addSubview(submitBtn)
        view.addSubview(divider)
        view.addSubview(fbMessage)
        
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        
        forgotPassword.setTitle("Forgot Password?", for: .normal)
        forgotPassword.titleLabel?.font = UIFont(name: "Instagram Sans Bold", size: 16)
        forgotPassword.setTitleColor(.init(named: "Light-Blue"), for: .normal)
        
        NSLayoutConstraint.activate([
            emailInput.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            emailInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: DEFAULT_HORIZONTAL_PADDING),
            emailInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DEFAULT_HORIZONTAL_PADDING),
            

            passwordInput.topAnchor.constraint(equalTo: emailInput.bottomAnchor, constant: 5),
            passwordInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DEFAULT_HORIZONTAL_PADDING),
            passwordInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: DEFAULT_HORIZONTAL_PADDING),
            
            
            forgotPassword.topAnchor.constraint(equalTo: passwordInput.bottomAnchor, constant: 15),
            forgotPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DEFAULT_HORIZONTAL_PADDING),
            
            submitBtn.topAnchor.constraint(equalTo: forgotPassword.bottomAnchor, constant: 20),
            submitBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: DEFAULT_HORIZONTAL_PADDING),
            submitBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DEFAULT_HORIZONTAL_PADDING),
            
            divider.topAnchor.constraint(equalTo: submitBtn.bottomAnchor, constant: 50),
            divider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: DEFAULT_HORIZONTAL_PADDING),
            divider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DEFAULT_HORIZONTAL_PADDING),
            
            fbMessage.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 50),
            fbMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        
        
    }
}

