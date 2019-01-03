import UIKit

protocol IndexDelegate1: class {
    func Index1(_ index: Int)
}

class CatalogueVC: UIViewController, UITableViewDataSource {
    
    weak var delegate1: IndexDelegate1?
    
    let iconList = [#imageLiteral(resourceName: "icons8-shirt-48 (1)"), #imageLiteral(resourceName: "icons8-christmas-angel-64 (1)"), #imageLiteral(resourceName: "icons8-coffee-to-go-80 (1)"), #imageLiteral(resourceName: "icons8-tipper-64 (1)"), #imageLiteral(resourceName: "icons8-umbrella-48 (1)"), #imageLiteral(resourceName: "icons8-traffic-light-64 (1)"), #imageLiteral(resourceName: "icons8-cocktail-80 (1)"), #imageLiteral(resourceName: "icons8-quality-48 (1)"), #imageLiteral(resourceName: "icons8-santas-hat-48 (1)"), #imageLiteral(resourceName: "icons8-gas-station-64 (1)")]
    let titleList = ["Quán ăn", "Mẹ & Bé", "Rạp chiếu phim", "Thời trang/Phụ kiện",
                     "Thiết bị số & Công nghệ", "Mỹ phẩm/Làm đẹp",
                     "Khách sạn", "Giáo dục", "Sức khoẻ", "Dịch vụ khác"]
    
    override func viewWillAppear(_ animated: Bool) {
        delegate1?.Index1(1)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ItemCell
        cell.titleLabel.text = titleList[indexPath.row]
        cell.iconImage.image = iconList[indexPath.row]
        return cell
    }
}
