import Foundation
import UIKit
import RAMAnimatedTabBarController

class CustomTabBarController: RAMAnimatedTabBarController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configure()
    }
    
    func configure()
    {
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let vc3 = UIViewController()
        let vc4 = UIViewController()
        
        vc1.view.backgroundColor = .systemRed
        vc2.view.backgroundColor = .systemBlue
        vc3.view.backgroundColor = .systemGreen
        vc4.view.backgroundColor = .systemOrange
        
        vc1.tabBarItem = RAMAnimatedTabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        (vc1.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        
        vc2.tabBarItem = RAMAnimatedTabBarItem(title: "Notification", image: UIImage(systemName: "bell"), tag: 1)
        (vc2.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipTopTransitionItemAnimations()
        
        vc3.tabBarItem = RAMAnimatedTabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 1)
        (vc3.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRightRotationAnimation()
        
        vc4.tabBarItem = RAMAnimatedTabBarItem(title: "Profile", image: UIImage(systemName: "person.fill.viewfinder"), tag: 1)
        (vc4.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFumeAnimation()
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: false)
    }
}
