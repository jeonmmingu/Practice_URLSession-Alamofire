import UIKit

class TableViewCell: UITableViewCell{
    
    let name = UILabel()
    let email = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // initialize code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configure(name: String, email: String) {
        // - MARK: Table View에서 Scrolling시, 다시 렌더링이 되는 현상에 대한 문제점과 해결책에 관해 공부해봐야 함!
        print(name, email)
        self.name.text = name
        self.email.text = email
    }
    
    func setLabel(){
        name.translatesAutoresizingMaskIntoConstraints = false
        email.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(name)
        self.addSubview(email)
    }
    
    func setLayout(){
        NSLayoutConstraint.activate([
            name.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            name.topAnchor.constraint(equalTo: self.topAnchor),
            name.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            name.widthAnchor.constraint(equalToConstant: 100),
            
            email.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            email.topAnchor.constraint(equalTo: self.topAnchor),
            email.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            email.leadingAnchor.constraint(equalTo: name.trailingAnchor)
        ])
    }
}
