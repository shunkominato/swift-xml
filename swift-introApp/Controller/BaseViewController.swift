//
//  BaseViewController.swift
//  swift-introApp
//
//  Created by macbook on 2021/03/02.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideDefaultViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        reloadData()

        defaultSelectedIndex = 0
        

        // Do any additional setup after loading the view.
    }
    
    override func segementSlideHeaderView() -> UIView {
        let headerView = UIImageView()
        headerView.isUserInteractionEnabled = true
        headerView.contentMode = .scaleToFill
        headerView.image = UIImage(named: "header")
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let headerHight:CGFloat
        if #available(iOS 11.0, *){
            headerHight = view.bounds.height/4 + view.safeAreaInsets.top
            
        } else {
            headerHight = view.bounds.height/4 + topLayoutGuide.length
        }
        
        headerView.heightAnchor.constraint(equalToConstant: headerHight).isActive = true
        
        return headerView
    }
    
    override var titlesInSwitcher: [String]{
        return ["TOP","abema","yahho","it","buzz","CNN",]
    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        switch index {
        case 0:
            return Page1TableViewController()
        case 1:
            return Page2TableViewController()
        case 2:
            return Page3TableViewController()
        case 3:
            return Page4TableViewController()
        case 4:
            return Page5TableViewController()
        case 5:
            return Page6TableViewController()
        default:
            return Page1TableViewController()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
