import UIKit

class ItemCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var iconCollectionCell: UIImageView!
    @IBOutlet weak var titleCollectionCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        iconCollectionCell.layer.cornerRadius = iconCollectionCell.frame.width/2
        iconCollectionCell.clipsToBounds = true
    }
}
