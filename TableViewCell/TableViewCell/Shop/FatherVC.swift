import UIKit

class FatherVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func mainButton(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let page = main.instantiateViewController(withIdentifier: "ShopPageView") as! ShopPageView
        page.inDex = 0
    }
    
    @IBAction func listButton(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let page = main.instantiateViewController(withIdentifier: "ShopPageView") as! ShopPageView
        page.inDex = 1
    }
}
