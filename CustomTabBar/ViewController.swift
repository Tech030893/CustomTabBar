import UIKit
import RAMAnimatedTabBarController

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        view.addSubview(button)
        button.backgroundColor = UIColor(named: "buttonColor")
        button.center = view.center
        button.setTitle("Open Tab Bar", for: .normal)
        button.setTitleColor(UIColor(named: "labelColor"), for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton()
    {
        let tabBarVC = CustomTabBarController()
        present(tabBarVC, animated: true)
    }
}
