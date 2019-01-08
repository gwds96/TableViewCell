import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    let arraySectionTitles = ["Shop nổi bật", "Most active", "Có thể bạn quan tâm"]
    let arrayIconForSection = [[#imageLiteral(resourceName: "icons8-super-mario-48"), #imageLiteral(resourceName: "icons8-aquaman-48"), #imageLiteral(resourceName: "icons8-joker-dc-48"), #imageLiteral(resourceName: "icons8-harley-quinn-dc-48"), #imageLiteral(resourceName: "icons8-deathstroke-48")],
                               [#imageLiteral(resourceName: "icons8-harley-quinn-suicide-squad-48"), #imageLiteral(resourceName: "icons8-superman-dc-48"), #imageLiteral(resourceName: "icons8-green-lantern-dc-48"), #imageLiteral(resourceName: "icons8-christmas-angel-64 (1)"), #imageLiteral(resourceName: "icons8-firestorm-48")],
                               [#imageLiteral(resourceName: "icons8-lex-luthor-48"), #imageLiteral(resourceName: "icons8-green-arrow-dc-48"), #imageLiteral(resourceName: "icons8-joker-suicide-squad-48"), #imageLiteral(resourceName: "icons8-the-flash-head-48"), #imageLiteral(resourceName: "icons8-wonder-woman-480")]]
    let arrayTitleForSection = [["Super Mario", "Aquaman", "Joker", "Quinn", "Luthor"],
                                ["Harley", "Supermen", "Green", "Arrow", "Firestorm"],
                                ["Deathstroke", "Batman", "Suicide", "Flash", "Wonder Woman"]]
    }

extension MainVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraySectionTitles.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "CellMain"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ItemMainCell
        cell.lineIcon = arrayIconForSection[indexPath.section]
        cell.lineTitle = arrayTitleForSection[indexPath.section]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arraySectionTitles[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
}
