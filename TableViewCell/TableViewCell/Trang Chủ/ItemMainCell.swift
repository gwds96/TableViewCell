import UIKit

class ItemMainCell: UITableViewCell, UICollectionViewDataSource {
    
    @IBOutlet weak var itemCollection: UICollectionView!
    
    var lineIcon: [UIImage] = []
    var lineTitle: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellMain", for: indexPath) as! ItemCollectionCell
        cell.iconCollectionCell.image = lineIcon[indexPath.row]
        cell.titleCollectionCell.text = lineTitle[indexPath.row]
        return cell
    }
}
