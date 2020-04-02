//
//  InventoryViewController.swift
//  OneGame
//
//  Created by Thomas Fuhriman on 3/31/20.
//  Copyright © 2020 Thomas Fuhriman. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController {

  var hammer : String?
    
  var screwdriver : String?

  var paintbrush : String?

  var blackboard : String?

  var johnsJacket : String?

  var clueone : String?

  var cluetwo : String?

  var cluethree : String?

    
    @IBOutlet weak var hammerNumber: UILabel!
    
    @IBOutlet weak var screwdriverNumber: UILabel!
    
    @IBOutlet weak var paintbrushNumber: UILabel!
    
    
    @IBOutlet weak var blackboardNumber: UILabel!
    
    @IBOutlet weak var johnsjacketNumber: UILabel!
    
    @IBOutlet weak var clueoneNumber: UILabel!
    @IBOutlet weak var cluetwoNumber: UILabel!
    @IBOutlet weak var cluethreeNumber: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hammerNumber.text = hammer
        screwdriverNumber.text = screwdriver
        paintbrushNumber.text = paintbrush
        blackboardNumber.text = blackboard
        johnsjacketNumber.text = johnsJacket
        clueoneNumber.text = clueone
        cluetwoNumber.text = cluetwo
        cluethreeNumber.text = paintbrush

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
