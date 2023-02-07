import UIKit
import SwiftUI

class HomeScreenViewController: UIViewController {
    
    // MARK: AlamofireView, URLSessionView  =>  List View로 구성
    // Two Button & Connect Navigator
    let AlamofireButton = UIButton()
    let URLSessionButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtons()
        setLayout()
    }
    
    func setButtons() {
        // MARK: Set AlmofireButton
        AlamofireButton.translatesAutoresizingMaskIntoConstraints = false
        AlamofireButton.setTitle("Alamofire", for: .normal)
        AlamofireButton.backgroundColor = UIColor.systemIndigo
        AlamofireButton.layer.cornerRadius = 10.0
        AlamofireButton.addTarget(self, action: #selector(AlamofireButtonAction), for: .touchUpInside)
        self.view.addSubview(AlamofireButton)
        
        // MARK: Set URLSessionButton
        URLSessionButton.translatesAutoresizingMaskIntoConstraints = false
        URLSessionButton.setTitle("URLSession", for: .normal)
        URLSessionButton.backgroundColor = UIColor.systemPurple
        URLSessionButton.layer.cornerRadius = 10.0
        URLSessionButton.addTarget(self, action: #selector(URLSessionButtonAction), for: .touchUpInside)
        self.view.addSubview(URLSessionButton)
    }
    
    func setLayout() {
        view.backgroundColor = .systemGray3
        NSLayoutConstraint.activate([
            AlamofireButton.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            AlamofireButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 100),
            AlamofireButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            
            URLSessionButton.topAnchor.constraint(equalTo: AlamofireButton.bottomAnchor, constant: 20),
            URLSessionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            URLSessionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)
        ])
    }
    
    @objc func AlamofireButtonAction(){
        let vc = AlamofireViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func URLSessionButtonAction(){
        let vc = URLSessionViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
