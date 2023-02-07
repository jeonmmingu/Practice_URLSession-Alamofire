import UIKit
import SwiftUI

class URLSessionViewController: UIViewController, PreviewProvider {
    
    static var previews: some View {
        URLSessionViewController().toPreview()
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .systemPurple
    }
    
}
