import UIKit

class ZaloVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var zaloTableView: UITableView!
    
    let zaloTitle = ["Tìm quanh đây", "Phòng trò chuyện", "Quét mã QR",
                     "Shop", "Stickers", "Game"]
    let zaloIcon = [#imageLiteral(resourceName: "icons8-binoculars-48"), #imageLiteral(resourceName: "icons8-alien-48"), #imageLiteral(resourceName: "icons8-sci-fi-48"), #imageLiteral(resourceName: "icons8-santas-hat-48 (1)"), #imageLiteral(resourceName: "icons8-grey-48"), #imageLiteral(resourceName: "icons8-bam-48")]
    
    override func viewDidLoad() {
        self.tabBarController?.tabBar.barTintColor = UIColor.white
        self.tabBarController?.tabBar.backgroundColor = UIColor.white
    }
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ZaloTCell", for: indexPath) as! ZaloTCell
        if indexPath.section == 0 {
            cell.zaloIconCell.image = #imageLiteral(resourceName: "icons8-firestorm-48")
            cell.zaloTitleCell.text = "Zalo"
            cell.minimizeTitleCell.text = "Trang cá nhân của bạn"
        }else {
            cell.zaloIconCell.image = zaloIcon[indexPath.row]
            cell.zaloTitleCell.text = zaloTitle[indexPath.row]
            cell.minimizeTitleCell.text = ""
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if zaloTitle[indexPath.row] == "Shop" {
            let screen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FatherVC") as! FatherVC
            screen.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(screen, animated: true)
        }
    }
}
