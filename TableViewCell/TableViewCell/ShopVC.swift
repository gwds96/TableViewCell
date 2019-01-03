import UIKit

class ShopVC: UIViewController, UITableViewDataSource {
    
    let shopItem = ["Tìm quanh đây", "Phòng trò chuyện", "Quét mã QR", "Shop", "Stickers", "Game"]
    let shopicon = [#imageLiteral(resourceName: "icons8-grey-48"), #imageLiteral(resourceName: "icons8-two-tickets-48"), #imageLiteral(resourceName: "icons8-coffee-to-go-80 (1)"), #imageLiteral(resourceName: "icons8-alien-48"), #imageLiteral(resourceName: "icons8-bam-48"), #imageLiteral(resourceName: "icons8-binoculars-48")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCell", for: indexPath) as! ShopCell
        cell.shopMainIcon.image = shopicon[indexPath.row]
        cell.shopMainItem.text = shopItem[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 165
    }
}
