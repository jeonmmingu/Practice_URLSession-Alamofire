import UIKit
import SwiftUI

class AlamofireViewController : UIViewController, PreviewProvider {
    
    static var previews: some View {
        AlamofireViewController().toPreview()
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .systemIndigo
    }
}
