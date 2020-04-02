//
//  ViewController.swift
//  OneGame
//
//  Created by Thomas Fuhriman on 9/12/19.
//  Copyright © 2019 Thomas Fuhriman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Items//
     var hammer = 0
     var screwdriver = 0
     var paintbrush = 0
     var blackboard = 0
     var johnsJacket = 0
     var clueone = 0
     var cluetwo = 0
     var cluethree = 0
    
    //Inventory//
    @IBAction func inventoryButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToInventory", sender: self)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "goToInventory" {
        let destinationVC = segue.destination as! InventoryViewController
        destinationVC.hammer = String(hammer)
        destinationVC.screwdriver = String(screwdriver)
        destinationVC.paintbrush = String(paintbrush)
        destinationVC.blackboard = String(blackboard)
        destinationVC.johnsJacket = String(johnsJacket)
        destinationVC.clueone = String(clueone)
        destinationVC.cluetwo = String(cluetwo)
        destinationVC.cluethree = String(cluethree)
        
        }
    }
    
    
    override func viewDidLoad() {
        print ("loadfunction")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var roomText: UILabel!
    
    @IBOutlet weak var optionA: UIButton!
    
    @IBOutlet weak var optionB: UIButton!
    
    
    //ROOMS NAMES//
    
       var roomNames = ["Foundry", "Foundry2", "Kitchen", "Kitchen Tables", "Ripple", "Art Area", "Couch Area", "Two Birds", "Bathroom Entrances", "Green Chair Pod", "Main Doors to the outside", "Great Room", "OS LOGO", "Inside the Bathrooms", "Pods", "Science Area", "Projector Wall", "Tpop Office", "WallE and prototype wall", "Coaches Room", "Red Room", "Blue Room", "To Cubbies", "Cubbies", "The Nest"]
    
    
    //Needs to be same as dict//
    //Rooms List//
    let rooms = ["Foundry", "Foundry2", "Kitchen", "Kitchen Tables", "Ripple", "Art Area", "Couch Area", "Two Birds", "Bathroom Entrances", "Green Chair Pod", "Main Doors to the outside", "Great Room", "OS LOGO", "Inside the Bathrooms", "Pods", "Science Area", "Projector Wall", "Tpop Office", "WallE and prototype wall", "Coaches Room", "Red Room", "Blue Room", "To Cubbies", "Cubbies", "The Nest"]
    
    var gridX = 3
    var gridY = 1
    var currentPosition = (3, 1)
    
    //DICTIONARY FOR ROOMS//
    var roomPositions = ["Foundry" : (1,1), "Foundry2" : (1,2), "Kitchen" : (1,3), "Kitchen Tables" : (1,4), "Ripple" : (1,5), "Art Area" : (2,1), "Couch Area" : (2,2), "Two Birds" : (2,3), "Bathroom Entrances" : (2,4), "Green Chair Pod" : (2,5), "Main Doors to the outside" : (3,1), "Great Room" : (3,2), "OS LOGO" : (3,3), "Inside the Bathrooms" : (3,4), "Pods" : (3,5), "Science Area" : (4,1), "Projector Wall" : (4,2), "Tpop Office" : (4,3), "WallE and prototype wall" : (4,4), "Coaches Room" : (4,5), "Red Room" : (5,1), "Blue Room" : (5,2), "To Cubbies" : (5,3), "Cubbies" : (5,4), "The Nest" : (5,5)]
    
     var roomTexts : [String : String] = ["Foundry" : "Jeff: Welcome to the Foundry!", "Foundry2" : "You see someone welding", "Kitchen" : "People are cooking ramen!", "Kitchen Tables" : "XLab is working on a project", "Ripple" : "Jun is creating a banger", "Art Area" :"Teal is teaching how to use oil paints", "Couch Area" : "Students are lounging and working", "Two Birds" : "Michael is working hard with some students on adobe", "Bathroom Entrances" : "The whiteboards have a new message on them! I wonder what they say?", "Green Chair Pod" :"Black boards are strewn every where!", "Main Doors to the outside" :"It looks like the parking lot is full" , "Great Room" : "Its loud as Mathew teaches math", "OS LOGO" : "You see a suspicious piece of paper on one of the chairs under the logo", "Inside the Bathrooms" : "Smelly", "Pods" : "Students are hard at work", "Science Area" : "Hmm seems empty and dusty" , "Projector Wall" : "Text is being projected to the screen I wonder what it says...", "Tpop Office" : "You see Tpop hard at work through the window", "WallE and prototype wall" : "Maybe I can use some of the resources here later", "Coaches Room" : "quiet and ominous", "Red Room" : "You see some coaches and students in a meeting", "Blue Room" : "Students are hard at slacking off", "To Cubbies" : "The noise starts to quiet as you head this way" , "Cubbies" : "You see Jason working hard at what seems to be a poster of some kind", "The Nest" : "Ylab students are working hard on their projects"]
    //needs fixing//
    var roomOptions = ["Foundry" : ["You see Jeff", "Pick up screwdriver"], "Foundry2" : ["Search Foundry Closet","Pick up hammer"], "Kitchen" : ["Talk to students making Ramen","Pick up piece of paper"], "Kitchen Tables" : ["Bother Xlab","Listen to conversation"], "Ripple" : ["Search Ripple for clues","Ask Jun for any information on whats happening"], "Art Area" : ["Ask Teal why she is being suspicious of my presence","Pick up paint brush"], "Couch Area" : ["Sit down", "Ask the srudents where  can find John"], "Two Birds" : ["Log into a Mac and search the web for clues", "Ask Michael if he has any clues"], "Bathroom Entrances" : ["View whiteboard prompts for clues", "pick up paper"], "Green Chair Pod" : ["Search Black boards for clues","Rummage around and pick up black boards"], "Main Doors to the outside" : ["Exit", "Inspect lost and found closet"], "Great Room" : ["Talk to Mathew","Search for clues"], "OS LOGO" : ["Inspect the seating area","Pick up clue"], "Inside the Bathrooms" : ["Search for clues", "Ask for John"], "Pods" : ["Ask students where john is", "Inspect Pods for clues"], "Science Area" : ["Search the Science Area for traces of John","Inspect science area"], "Projector Wall" : ["View what is on the screen","Search the cubbies behind the projector"], "Tpop Office" : ["Knock on tpops door","Inspect outside of the door"], "WallE and prototype wall" : ["Search Wall E for clues","Search the prototype wall"], "Coaches Room" : ["Inspect coaches room","Open Johns locker for clues"], "Red Room" : ["Inspect the room","Ask the people in the room if they have any clues"], "Blue Room" : ["Interview students","Search for clues on the round table"], "To Cubbies" : ["Inspect area","Pick up johns jacket"], "Cubbies" : ["Ask Jason what he is designing","Inspect cubbies"], "The Nest" : ["Ask Ylab for information on John","Search the room for paper"]]
    
    @IBOutlet weak var mainText: UILabel!
    
    
  //UP//
    @IBAction func upButton(_ sender: Any) {
        print ("upfunction")
        self.gridY = self.gridY + 1
        if self.gridY == 6 {
            self.mainText.text = ""
            self.gridY = 5
        }
            
        currentPosition = (gridX, gridY)
            for room in rooms {
                for place in roomPositions.keys {
                    if place == room {
                        if roomPositions[place]! == currentPosition {
                           roomText.text = room
                            mainText.text = roomTexts [room]
                            //optionA.setTitle(roomOptions[room][0]!, for : .normal)
                            
                    optionAbutton.setTitle(roomOptions[room]![0], for: .normal)
                   optionBbutton.setTitle(roomOptions[room]![1], for: .normal)
                        }
                        
                    }
                }
            }
            
        
         print (self.gridX, self.gridY)
    }
   //Right//
    @IBAction func rightButton(_ sender: Any) {
            print ("rightfunction")
                   self.gridX = self.gridX + 1
                   if self.gridX == 6 {
                    self.mainText.text = ""
                    self.gridX = 5
        }
                    
        currentPosition = (gridX, gridY)
           for room in rooms {
              for place in roomPositions.keys {
                  if place == room {
                     if roomPositions[place]! == currentPosition {
                        roomText.text = room
                           roomText.text = room
                            mainText.text = roomTexts [room]
                         optionAbutton.setTitle(roomOptions[room]![0], for: .normal)
                        optionBbutton.setTitle(roomOptions[room]![1], for: .normal)
                                           }
                                       }
                                   }
                               }
                               
        
        print (self.gridX, self.gridY)
        
        
    }
    
    
 
//Down//
    @IBAction func downButton(_ sender: Any) {
            print ("downfunction")
            self.gridY = self.gridY - 1
            if self.gridY == 0 {
             self.mainText.text = ""
             self.gridY = 1
        }
    currentPosition = (gridX, gridY)
               for room in rooms {
                   for place in roomPositions.keys {
                       if place == room {
                           if roomPositions[place]! == currentPosition {
                              roomText.text = room
                            roomText.text = room
                            mainText.text = roomTexts [room]
                             optionAbutton.setTitle(roomOptions[room]![0], for: .normal)
                            optionBbutton.setTitle(roomOptions[room]![1], for: .normal)
                           }
                       }
                   }
               }
               
                
        
             print (self.gridX, self.gridY)
    }
    

    //LEFT//
    @IBAction func leftButton(_ sender: Any) {
        print ("leftfunction")
        self.gridX = self.gridX - 1
               if self.gridX == 0 {
                self.mainText.text = ""
                self.gridX = 1
        }
    currentPosition = (gridX, gridY)
               for room in rooms {
                   for place in roomPositions.keys {
                       if place == room {
                           if roomPositions[place]! == currentPosition {
                               roomText.text = room
                            roomText.text = room
                            mainText.text = roomTexts [room]
                             optionAbutton.setTitle(roomOptions[room]![0], for: .normal)
                            optionBbutton.setTitle(roomOptions[room]![1], for: .normal)
                       }
                   }
               }
        }
               
                
    
    
     print (self.gridX, self.gridY)
    
    
}
    
    
    
    
   
    
    //Option Buttons//
    @IBAction func optionAbutton(_ sender: UIButton) {
       
    }
    
    @IBOutlet weak var optionAbutton: UIButton!
    
    
    @IBAction func optionBbutton(_ sender: UIButton) {
    }
    
    @IBOutlet weak var optionBbutton: UIButton!
    

}

