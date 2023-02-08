import UIKit
import SwiftUI

class AlamofireViewController : UIViewController, PreviewProvider {
    
    // - MARK: Preview Setting
    static var previews: some View {
        AlamofireViewController().toPreview()
    }
    
    // - MARK: Declare Variables
    let tableView = UITableView()
    var dataArray = [RandomUser]()
    
    // - MARK: ViewDidLoad
    override func viewDidLoad() {
        setTableView()
    }
    
    func setTableView() {
        tableView.dataSource = self
        // Layout을 따로 잡아도 됨 -> TableView를 전체에 다 채우기 위해 이렇게 표시
        tableView.frame = view.frame
        tableView.backgroundColor = .systemGray3
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableView.automaticDimension
        view.addSubview(tableView)
    }
}

extension AlamofireViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 한 섹션에 몇개의 row를 넣을 것인지
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return dataArray.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewCell()
        cell.setLabel()
        cell.setLayout()
        cell.backgroundColor = .systemIndigo
        cell.configure(name: dataArray[indexPath.row].name.full, email: dataArray[indexPath.row].email)
        return cell
    }
}
