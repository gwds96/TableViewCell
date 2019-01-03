import UIKit

protocol IndexDelegate0: class {
    func Index0(_ index: Int)
}

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    let line1Icon = [#imageLiteral(resourceName: "icons8-super-mario-48"), #imageLiteral(resourceName: "icons8-aquaman-48"), #imageLiteral(resourceName: "icons8-joker-dc-48"), #imageLiteral(resourceName: "icons8-harley-quinn-dc-48"), #imageLiteral(resourceName: "icons8-deathstroke-48")]
    let line2Icon = [#imageLiteral(resourceName: "icons8-harley-quinn-suicide-squad-48"), #imageLiteral(resourceName: "icons8-superman-dc-48"), #imageLiteral(resourceName: "icons8-green-lantern-dc-48"), #imageLiteral(resourceName: "icons8-christmas-angel-64 (1)"), #imageLiteral(resourceName: "icons8-firestorm-48")]
    let line3Icon = [#imageLiteral(resourceName: "icons8-lex-luthor-48"), #imageLiteral(resourceName: "icons8-green-arrow-dc-48"), #imageLiteral(resourceName: "icons8-joker-suicide-squad-48"), #imageLiteral(resourceName: "icons8-the-flash-head-48"), #imageLiteral(resourceName: "icons8-wonder-woman-480")]
    let line1Title = ["Super Mario", "Aquaman", "Joker", "Quinn", "Luthor"]
    let line2Title = ["Harley", "Supermen", "Green", "Arrow", "Firestorm"]
    let line3Title = ["Deathstroke", "Batman", "Suicide", "Flash", "Wonder Woman"]
    
    weak var delegate0:IndexDelegate0?
    
    override func viewWillAppear(_ animated: Bool) {
        delegate0?.Index0(0)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellMain", for: indexPath) as! ItemMainCell
        if indexPath.section == 0 {
            cell.lineIcon = line1Icon
            cell.lineTitle = line1Title
        } else if indexPath.section == 1 {
            cell.lineIcon = line2Icon
            cell.lineTitle = line2Title
        }else {
            cell.lineIcon = line3Icon
            cell.lineTitle = line3Title
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Shop nổi bật"
        }else if section == 1 {
            return "Most active"
        }else {
            return "Có thể bạn quan tâm"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
