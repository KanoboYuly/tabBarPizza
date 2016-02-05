//
//  MasaTableViewController.swift
//  Pizza
//
//  Created by Yuly Espinoza on 2/2/16.
//  Copyright © 2016 YE. All rights reserved.
//

import UIKit

class MasaTableViewController: UITableViewController {

    @IBOutlet var table: UITableView!
    var data =  ["Delgada", "Crujiente", "Gruesa"]
    var masaImage: Array<UIImage> = [UIImage(named: "masaDelgada.png")!, UIImage(named: "masaCrujiente.png")!, UIImage(named: "masaGruesa.png")!]
    var masa : String  = " "
    var tabBar : String = " "
    // MARK: - UIViewController lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.topItem?.title = "Masa"
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Helvetica-Bold", size: 22)!, NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        table.tableFooterView = UIView()
        // no lines where there aren't cells
        table.tableFooterView = UIView(frame: CGRectZero)
        table.backgroundView = UIImageView(image: UIImage(named: "backgroundPizzaTable"))
    }

    // MARK: - UITableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("Hola")
        print("El tabBar seleccionado es: \(self.tabBarController?.selectedIndex)")
        let cell = tableView.dequeueReusableCellWithIdentifier("Masa", forIndexPath: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 20)
        cell.textLabel?.font = UIFont.italicSystemFontOfSize(20)
        cell.imageView?.image = masaImage[indexPath.row]
        masa = data[indexPath.row]
        return cell
    }
    
    // UITableView Cells Transparent
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor(white: 0, alpha: 0)
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let indexPath = self.tableView.indexPathForSelectedRow {
            //let tabBar:String = String(Int((self.tabBarController?.selectedIndex)!))
            
            if Int((self.tabBarController?.selectedIndex)!) == 0 {
                tabBar = "Small"
            } else if Int((self.tabBarController?.selectedIndex)!) == 1 {
                tabBar = "Mediums"
            } else {
                tabBar = "Big"
            }
            
            let sigVista = segue.destinationViewController as! CheeseTableViewController
            sigVista.masa = data[indexPath.row]
            sigVista.tabBar = tabBar
            
        }
    }
}