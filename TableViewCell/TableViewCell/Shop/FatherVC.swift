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
        if number == 0 {
            button1.backgroundColor = UIColor.white
            button0.backgroundColor = UIColor.red
        } else {
            button0.backgroundColor = UIColor.white
            button1.backgroundColor = UIColor.red
        }
    }
    
    
}
