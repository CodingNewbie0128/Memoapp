//
//  DetailViewController.swift
//  TodoList
//
//  Created by engn0383 on 2024/06/14.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = ""
    
   

    @IBOutlet weak var lblItem: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        lblItem.text=receiveItem
    }
    

        func receiveItem(_ item : String){
            receiveItem = item
        }
    
    

  

}
