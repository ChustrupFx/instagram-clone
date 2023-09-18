import UIKit

class Divider: UIView {
    
    let divider = UIView()
    var label: Label!
    
    init(text: String? = nil) {
        super.init(frame: .init(x: 0, y: 0, width: 100, height: 100))
        
        addSubview(divider)
        translatesAutoresizingMaskIntoConstraints = false
        divider.translatesAutoresizingMaskIntoConstraints = false
        
        divider.backgroundColor = UIColor(named: "Gray2")
        NSLayoutConstraint.activate([
            divider.centerXAnchor.constraint(equalTo: centerXAnchor),
            divider.centerYAnchor.constraint(equalTo: centerYAnchor),
            divider.leadingAnchor.constraint(equalTo: leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 2)
        ])
        
        if let text = text {
            label = Label(text: text, padding: .init(top: 30, left: 30, bottom: 30, right: 30))
            label.textColor = UIColor(named: "DarkGray")
            label.backgroundColor = .white
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 10
            label.font = UIFont(name: "Instagram Sans Bold", size: 14)
            
            addSubview(label)
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: centerXAnchor),
                label.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            ])
        }
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
