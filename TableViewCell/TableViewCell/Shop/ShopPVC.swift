import UIKit

protocol ButtonDelegate: class {
    func colorOfButton(_ number: Int)
}

class ShopPVC: UIPageViewController {
    
    var currentIndex: Int = 0
    
    weak var delegateB: ButtonDelegate?
    
    lazy var subViewControllers: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainVC") as! MainVC,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CatalogueVC") as! CatalogueVC
        ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
}

extension ShopPVC:UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    func moveToPage(_ index: Int) {
        if index == 1 {
            setViewControllers([subViewControllers[index]], direction: .forward, animated: true, completion: nil)
            delegateB?.colorOfButton(1)
        }else {
            setViewControllers([subViewControllers[index]], direction: .reverse, animated: true, completion: nil)
            delegateB?.colorOfButton(0)
        }
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        currentIndex = subViewControllers.index(of: viewController) ?? 0
        if currentIndex <= 0 {
            return nil
        }
        currentIndex -= 1
        return subViewControllers[currentIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        currentIndex = subViewControllers.index(of: viewController) ?? 0
        if currentIndex >= subViewControllers.count - 1 {
            return nil
        }
        currentIndex += 1
        return subViewControllers[currentIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if previousViewControllers[0] == subViewControllers[1] && completed == true {
            currentIndex = 0
        }else if previousViewControllers[0] == subViewControllers[0] && completed == true {
            currentIndex = 1
        }
        delegateB?.colorOfButton(currentIndex)
    }
}
