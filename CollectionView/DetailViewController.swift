//
//  DetailViewController.swift
//  CollectionView
//

import UIKit
import CoreData

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var DetailImage: UIImageView!
    
    
    var name: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "name") as AnyObject?
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        DetailImage.image = UIImage(named: name as! String)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
