import UIKit

class Button: UIButton {
    
    init(title: String) {
        super.init(frame: .init(x: 0, y: 0, width: 100, height: 100))
        translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = UIColor(named: "Light-Blue")
        titleLabel?.font = .init(name: "Instagram Sans Medium", size: 16)
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 4
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 45),
            
        ])

    }
        
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
