import UIKit

class ItemMainCell: UITableViewCell {
    
    @IBOutlet weak var itemCollection: UICollectionView!
    
    var lineIcon: [UIImage] = []
    var lineTitle: [String] = []
    }

extension ItemMainCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lineIcon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "CollectionCellMain"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ItemCollectionCell
        cell.iconImage.image = lineIcon[indexPath.row]
        cell.titleLabel.text = lineTitle[indexPath.row]
        return cell
    }
}
