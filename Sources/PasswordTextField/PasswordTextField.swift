import UIKit.UITextField

class PasswordTextField: UITextField {
    
    //MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    //MARK: Other functions
    private func setup() {
        isSecureTextEntry = true
        
        //button
        let button = UIButton(frame: CGRect(x: .zero, y: .zero, width: 30, height: 30))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        if #available(iOS 13.0, *) {
            button.setImage(UIImage(named: "ic_visibility_off", in: .module, with: nil), for: .normal)
            button.setImage(UIImage(named: "ic_visibility_on", in: .module, with: nil), for: .selected)
        }
        rightView = button
        rightViewMode = .always
        button.addTarget(self, action: #selector(showHidePassword(_:)), for: .touchUpInside)
    }
    
    @objc private func showHidePassword(_ sender: UIButton) {
        sender.isSelected.toggle()
        isSecureTextEntry = !sender.isSelected
    }
    
}
