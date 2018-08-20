//
//  ShoppingTableViewController.swift
//  HomeworkShoppingApp
//
//  Created by Pei Wu on 2018/8/19.
//  Copyright © 2018年 Pei Wu. All rights reserved.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    
    @IBOutlet weak var albumNum1: UILabel!
    @IBOutlet weak var albumNum2: UILabel!
    @IBOutlet weak var albumNum3: UILabel!
    @IBOutlet weak var albumNum4: UILabel!
    @IBOutlet weak var albumNum5: UILabel!
    @IBOutlet weak var albumTotal: UILabel!
    @IBOutlet weak var albumTotalTWD: UILabel!
    
    var count1:Int=0
    var count2:Int=0
    var count3:Int=0
    var count4:Int=0
    var count5:Int=0
    
    @IBAction func album1Stepper(_ sender: UIStepper) {
        count1 = Int(sender.value)
        albumNum1.text = "\(count1)"
        totalprice()
    }
    
    @IBAction func album2Stepper(_ sender: UIStepper) {
        count2 = Int(sender.value)
        albumNum2.text = "\(count2)"
        totalprice()
    }
    
    @IBAction func album3Stepper(_ sender: UIStepper) {
        count3 = Int(sender.value)
        albumNum3.text = "\(count3)"
        totalprice()
    }
    
    @IBAction func album4Stepper(_ sender: UIStepper) {
        count4 = Int(sender.value)
        albumNum4.text = "\(count4)"
        totalprice()
    }
    
    
    @IBAction func album5Stepper(_ sender: UIStepper) {
        count5 = Int(sender.value)
        albumNum5.text = "\(count5)"
        totalprice()
    }
   
    
    func totalprice(){
        let total = 12.64 * Double(count1) + 12.99 * Double(count2) + 12.99 * Double(count3) + 12.48 * Double(count4) + 19.88 * Double(count5)
        let totalR = (total*100).rounded()/100
        let totalTWD = Int(totalR*30)
        albumTotal.text = "\(totalR)"
        albumTotalTWD.text = "\(totalTWD)"
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

   

   tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */



}
