//
//  ViewController.swift
//  CollectionView
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    var array:[String] = []
    
    var name: AnyObject? {
        
        get {
            return UserDefaults.standard.object(forKey: "name") as AnyObject?
        }
        set {
            UserDefaults.standard.set(newValue!, forKey: "name")
            UserDefaults.standard.synchronize()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        array = ["1capricorn.jpg","2aquarius.jpg","3pisces.jpg","4aries.jpg","5taurus.jpg","6gemini.jpg","7cancer.jpg","8leo.jpg","9virgo.jpg","10libra.jpg","11scorpio.jpg","12sagittarius.jpg"]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.Imageview.image = UIImage(named: array[(indexPath as NSIndexPath).row])
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        name = array [(indexPath as NSIndexPath).row] as AnyObject?
        
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    

}

