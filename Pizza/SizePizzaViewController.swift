//
//  SizePizzaViewController.swift
//  Pizza
//
//  Created by Yuly Espinoza on 2/10/16.
//  Copyright © 2016 YE. All rights reserved.
//

import UIKit

class SizePizzaViewController: UITableViewController {
    
    @IBOutlet var table: UITableView!
    var pizza =  ["Pequeña", "Mediana", "Grande"]
    var pizzaImage: Array<UIImage> = [UIImage(named: "masaDelgada.png")!, UIImage(named: "masaCrujiente.png")!, UIImage(named: "masaGruesa.png")!]
    //var masa : String  = " "
    var tabBar : String = " "
    // MARK: - UIViewController lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        /*self.navigationController?.navigationBar.topItem?.title = "Tamaño"
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Helvetica-Bold", size: 22)!, NSForegroundColorAttributeName: UIColor.whiteColor()]*/
         self.navigationItem.title = "Tamaños"
        table.tableFooterView = UIView()
        // no lines where there aren't cells
        table.tableFooterView = UIView(frame: CGRectZero)
        table.backgroundView = UIImageView(image: UIImage(named: "backgroundPizzaTable"))
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizza.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        //print("El tabBar seleccionado es: \(self.tabBarController?.selectedIndex)")
        let cell = tableView.dequeueReusableCellWithIdentifier("Size", forIndexPath: indexPath)
        cell.textLabel?.text = pizza[indexPath.row]
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 20)
        cell.textLabel?.font = UIFont.italicSystemFontOfSize(20)
        cell.imageView?.image = pizzaImage[indexPath.row]
       // masa = pizza[indexPath.row]
        return cell
    }
    
    // UITableView Cells Transparent
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor(white: 0, alpha: 0)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let sigVista = segue.destinationViewController as! MasaTableViewController
            sigVista.pizza = pizza[indexPath.row]
        }
    }
}