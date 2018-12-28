import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var displayView: UIView!
    @IBOutlet weak var displayControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapControl(_ sender: UISegmentedControl) {
        let getIndex = displayControl.selectedSegmentIndex
        switch (getIndex) {
        case 0:
            let db = UIStoryboard(name: "Main", bundle: nil)
            let screen = db.instantiateViewController(withIdentifier: "Main") as! MainVC
            navigationController?.pushViewController(screen, animated: true)
        default:
            let db = UIStoryboard(name: "Main", bundle: nil)
            let screen = db.instantiateViewController(withIdentifier: "Shop") as! CatalogueVC
            navigationController?.pushViewController(screen, animated: true)
        }
        
    }
}
