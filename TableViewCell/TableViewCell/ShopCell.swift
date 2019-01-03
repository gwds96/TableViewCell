import UIKit

class ShopCell: UITableViewCell {
    
    @IBOutlet weak var shopMainIcon: UIImageView!
    @IBOutlet weak var shopMainItem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func shopMainButton(_ sender: UIButton) {
        let db = UIStoryboard(name: "Main", bundle: nil)
        let screen = db.instantiateViewController(withIdentifier: "FatherVC") as! FatherVC
        screen.navigationController?.pushViewController(screen, animated: true)
    }
    
}
