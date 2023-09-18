import UIKit

class Label: UILabel {
    
    var insets: UIEdgeInsets?
    
    func setupView(text: String = "") {
        translatesAutoresizingMaskIntoConstraints = false
        
        self.text = text
    }
    
    override func drawText(in rect: CGRect) {
        if let insets = self.insets {
            super.drawText(in: rect.inset(by: insets))
        } else {
            super.drawText(in: rect)
        }
        
       
        
        
    }
    
    init(text: String = "", padding: UIEdgeInsets? = nil) {
        super.init(frame: .init(x: 0, y: 0, width: 100, height: 100))
        
        self.insets = padding
        
        self.setupView(text: text)
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        
        if let insets = self.insets {
            return CGSize(width: size.width + insets.left + insets.right,
                          height: size.height + insets.top + insets.bottom)
        }
        
        return size
       
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
