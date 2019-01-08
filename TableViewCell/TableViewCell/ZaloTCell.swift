import UIKit

class ZaloTCell: UITableViewCell {
    
    @IBOutlet weak var zaloIconCell: UIImageView!
    @IBOutlet weak var zaloTitleCell: UILabel!
    @IBOutlet weak var minimizeTitleCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
