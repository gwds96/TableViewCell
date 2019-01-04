import UIKit

class FatherVC: UIViewController {
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var containerView: UIView!
    var page: ShopPVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button0.backgroundColor = UIColor.red
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ShopPVC,
            segue.identifier == "ShopPVC" {
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
        let color0: UIColor = (number == 1) ? .white : .red
        button0.backgroundColor = color0
        let color1: UIColor = (number == 0) ? .white : .red
        button1.backgroundColor = color1
    }
    
}
