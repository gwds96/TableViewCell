import UIKit

class FatherVC: UIViewController {
    
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var listButton: UIButton!
    @IBOutlet weak var containerView: UIView!
    var page: ShopPVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainButton.setTitleColor(UIColor.cyan, for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cellIdentifier = "ShopPVC"
        if let vc = segue.destination as? ShopPVC,
            segue.identifier == cellIdentifier {
            self.page = vc
            vc.delegateB = self
        }
    }
    
    @IBAction func mainButton(_ sender: UIButton) {
        page.moveToPage(0)
    }
    
    @IBAction func listButton(_ sender: UIButton) {
        page.moveToPage(1)
        
    }
}

extension FatherVC: ButtonDelegate {
    
    func colorOfButton(_ number: Int) {
        let color0: UIColor = (number == 0) ? .cyan : .black
        mainButton.setTitleColor(color0, for: .normal)
        let color1: UIColor = (number == 1) ? .cyan : .black
        listButton.setTitleColor(color1, for: .normal)
    }
    
}
