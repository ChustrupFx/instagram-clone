import UIKit

class Label: UILabel {
    
    func setupView(text: String = "") {
        translatesAutoresizingMaskIntoConstraints = false
        
        self.text = text
    }
    
    init(text: String = "") {
        super.init(frame: .init(x: 0, y: 0, width: 100, height: 100))
        
        self.setupView(text: text)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.setupView()
    }
}
