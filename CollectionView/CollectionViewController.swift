//
//  ViewController.swift


import UIKit

class CollectionViewController: UICollectionViewController {

    @IBOutlet weak var headerLabel: UILabel!
    
    let reuseIdentifier = "cell"
    var items = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18"]
    var sections = ["Pune","Atlanta","Dallas"]
    
    
    // MARK: - UICOllectionViewDataSource protool
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
        
        //return 2
        
    }
    
    
    
    // make a cell for each cell index path
     override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MyCollectionViewCell
        //cell.jackLabel.text = self.items[indexPath.item]
        
        cell.testLabel.text = self.items[indexPath.item]

        cell.backgroundColor = UIColor.yellowColor()
        cell.layer.borderColor = UIColor.grayColor().CGColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        return cell
    }
    
    
    /*
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        
        
        let header = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", forIndexPath: indexPath) as! UICollectionReusableView
        
        header.headerLabel.text = "YOUR_HEADER_TEXT"
        
        return header
        
        
        
        
        
        
    }
    */
    
    
    
    // MARK: - UICollectionViewDelegate protocol
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("you selected a Cell ...")
    }
    
    // change background color when user touches cell
    override func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath) {
        print("you Highlightedd a cell")
        
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.redColor()
    }
    
    // change background color back when user releases touch
    override func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.yellowColor()
    }
    
    

}  // end class

