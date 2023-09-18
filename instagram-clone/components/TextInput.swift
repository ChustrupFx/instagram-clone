import UIKit

class TextInput: UITextField {
        
    
    func setupView(placeholder: String? = nil, isSecureTextEntry: Bool = false) {
        backgroundColor = UIColor(named: "Gray")
        textColor = UIColor(named: "DarkGray")
        translatesAutoresizingMaskIntoConstraints = false
        
        let paddingView = UIView(frame: .init(x: 0, y: 0, width: 10, height: 10))
        
        leftView = paddingView
        leftViewMode = .always
        layer.borderWidth = 1
        layer.borderColor = UIColor(named: "Gray2")!.cgColor
        font = UIFont(name: "Instagram Sans Medium", size: 16)
        layer.cornerRadius = 4
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureTextEntry
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    init(placeholder: String? = nil, isSecureTextEntry: Bool = false) {
        super.init(frame: .init(x: 0, y: 0, width: 100, height: 50))
        
        setupView(placeholder: placeholder, isSecureTextEntry: isSecureTextEntry)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
    }
}
