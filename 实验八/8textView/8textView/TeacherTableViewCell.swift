

import UIKit

class TeacherTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var sex: UILabel!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var pic: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
