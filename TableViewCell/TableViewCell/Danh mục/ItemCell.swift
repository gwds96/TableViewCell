import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImage.layer.cornerRadius = iconImage.frame.width/2
        iconImage.clipsToBounds = true
    }
}
