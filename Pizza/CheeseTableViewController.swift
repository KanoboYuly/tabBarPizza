//
//  CheeseTableViewController.swift
//  Pizza
//
//  Created by Yuly Espinoza on 2/3/16.
//  Copyright © 2016 YE. All rights reserved.
//

import UIKit

class CheeseTableViewController: UITableViewController {
    
    
    @IBOutlet var tableQueso: UITableView!
    
    var masa : String = " "
    var tabBar : String = " "
    var tipoDeQueso =  ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    var quesoImage: Array<UIImage> = [UIImage(named: "mozarela.png")!, UIImage(named: "cheddar.png")!, UIImage(named: "parmesano.png")!, UIImage(named: "sinQueso.png")! ]
    //var ingredientes : Dictionary <String> =
    var ingredientes = Dictionary<String, String>()
    @IBOutlet weak var table: UITableViewCell!
    override func viewWillAppear(animated: Bool) {
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Queso"
        tableQueso.tableFooterView = UIView()
        tableQueso.tableFooterView = UIView(frame: CGRectZero)
        tableQueso.backgroundView = UIImageView(image: UIImage(named: "backgroundPizzaTable"))

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tipoDeQueso.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cheese", forIndexPath: indexPath)
        cell.textLabel?.text = tipoDeQueso[indexPath.row]
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 20)
        cell.textLabel?.font = UIFont.italicSystemFontOfSize(20)
        cell.imageView?.image = quesoImage[indexPath.row]
        
        ingredientes ["Pizza"] = tabBar
        ingredientes ["Masa"] = masa
        ingredientes ["Queso"] = tipoDeQueso[indexPath.row]
        
        return cell
    }
    
    // UITableView Cells Transparent
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor(white: 0, alpha: 0)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
       // if let indexPath = self.tableView.indexPathForSelectedRow {
            let sigVista = segue.destinationViewController as! ServingsViewController
            //ingredientes ["pizza"] = tabBar
            //ingredientes ["masa"] = masa
            //ingredientes ["Queso"] = tipoDeQueso[indexPath.row]
            //print("Los ingredientes sss\(ingredientes)")
            sigVista.final = ingredientes
        //}
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
