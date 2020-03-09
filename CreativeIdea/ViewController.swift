//
//  ViewController.swift
//  CreativeIdea
//
//  Created by Salicca Dewi Rahajeng on 03/03/20.
//  Copyright © 2020 Salicca Dewi Rahajeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var btnFantasy: UIButton!
    @IBOutlet weak var btnMedieval: UIButton!
    @IBOutlet weak var btnModern: UIButton!
    @IBOutlet weak var btnFuturistic: UIButton!
    
    @IBOutlet weak var lblFantasy: UILabel!
    @IBOutlet weak var lblMedieval: UILabel!
    @IBOutlet weak var lblModern: UILabel!
    @IBOutlet weak var lblFuturistic: UILabel!
    
    @IBOutlet weak var btnGenerate: UIButton!
    
    @IBOutlet weak var lblIdea: UILabel!
    @IBOutlet weak var viewIdea: UIView!
    
    //func buat clear
    func clear(){
        lblIdea.text = ""
    }
    
    //func buat show alert
    func warning(){
        let alert = UIAlertController(title: "Warning", message: "Choose a theme", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    //func buat reset highlight
    func highlightOn(){
        btnFantasy.isHighlighted = true
        btnMedieval.isHighlighted = true
        btnModern.isHighlighted = true
        btnFuturistic.isHighlighted = true
        
        lblFantasy.font = UIFont.systemFont(ofSize: 16)
        lblMedieval.font = UIFont.systemFont(ofSize: 16)
        lblModern.font = UIFont.systemFont(ofSize: 16)
        lblFuturistic.font = UIFont.systemFont(ofSize: 16)
    }
    
    //array for drawing prompts
    var arrayFantasyDrawing =
    ["Dark Elf goes to the surface",
    "Kind hearted ogre",
    "Goblin that pretends to be human",
    "Cats with wings",
    "Dragon who fell in love with human"]
    
    var arrayMedievalDrawing =
    ["Knight with fat belly",
    "A princess who likes to practice archery",
    "A King who's loved by his subjects",
    "An ancient castle near the sea",
    "A duke stranded in a lush green forest"]
    
    var arrayModernDrawing =
    ["Coffee addicted girl",
    "Smoking middle-aged woman",
    "Drunk salaryman",
    "Kid chasing birds in the park",
    "Dog & Cat getting along"]
    
    var arrayFuturisticDrawing =
    ["Robot that develops a 'heart'",
    "A man that replace all his body part with",
    "Mechanical cat that function like a real cat",
    "A girl trapped in a augmented virtual reality game",
    "Interstellar passenger plane"]
    
    
    //array for writing prompts
    var arrayFantasyWriting =
    ["A tiefling princess on the run, being chased by her suitor",
    "A goblin that runs with a bag of heavy gold",
    "A High Elf that doesn't like to live on the forest, decided to try to mingle with humans",
    "A weak dwarf who can't wield weapons. Founds out he's capable of wielding some magic and good with animals",
    "A blade capable of killing a demi-god has been commissioned. It goes missing after it is finished"]
    
    var arrayMedievalWriting =
    ["Mercenary exploring the ruins of an ancient library, a young attendant appears and asks 'Can I help you?'",
    "And old wizard begs for help to find a way to end his life",
    "An archduke inherited old mine. They quickly discover that it is infested with subterranean horror",
    "In the morning there are lots of footprints all over the castle yard. No one heard or saw a thing",
    "Your items are missing after a banquet. When you ask the noble about it, a sack goes over your head"]
    
    var arrayModernWriting =
    ["You were invited to the night club by the club owner. Once you're arrived, you found the owner is dead. Police said you're the prime suspect",
    "A woman started working in a coffee shop. There's a frequent customer that befriends her and eventually ask her out",
    "A spoiled kid trapped in a caved in accident during a field trip. They're stuck with that one friend they're never get along with",
    "You just witnessed a famous artist doing an unspeakable act, but no one believes you",
    "While you're working your thesis in the library, you hear deep heavy breathing come from deep in the stacks"]
    
    var arrayFuturisticWriting =
    ["A robot has been stop functioning ages ago started to move when a girl with a unique watch approach him",
    "A virtual reality fighting pit makes their fighter fight in a monster VR body. But when they get hit, they feel pain as if they're really getting hurt. There is no bruises/wounds visible",
    "World was taken over by the robot. A group of robot started to try to find the remaining humans survived",
    "There is a card key that can open every locked things and people kill for it. The card key ends up in your apartment and you don't know how it can be there",
    "The beggar that has been around your neighboorhood for five years gone missing. And you noticed that suddenly, all your devices got hacked"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for:.selected)
        
        segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for:.normal)
        
        btnGenerate.layer.cornerRadius = 10
        viewIdea.layer.cornerRadius = 10

    }
    @IBAction func btnFantasySelected(_ sender: UIButton){
        switch sender{
        case btnFantasy:
           
            btnMedieval.isHighlighted = true
            
            btnModern.isHighlighted = true
            
            btnFuturistic.isHighlighted = true
            
            lblFantasy.font = UIFont.boldSystemFont(ofSize: 16)
            lblMedieval.font = UIFont.systemFont(ofSize: 16)
            lblModern.font = UIFont.systemFont(ofSize: 16)
            lblFuturistic.font = UIFont.systemFont(ofSize: 16)
            
        case btnMedieval:
            btnFantasy.isHighlighted = true

            btnModern.isHighlighted = true
            
            btnFuturistic.isHighlighted = true
            
            lblMedieval.font = UIFont.boldSystemFont(ofSize: 16)
            lblFantasy.font = UIFont.systemFont(ofSize: 16)
            lblModern.font = UIFont.systemFont(ofSize: 16)
            lblFuturistic.font = UIFont.systemFont(ofSize: 16)
            
        case btnModern:
            btnFantasy.isHighlighted = true
        
            btnMedieval.isHighlighted = true
            
            btnFuturistic.isHighlighted = true
            
            lblModern.font = UIFont.boldSystemFont(ofSize: 16)
            lblFantasy.font = UIFont.systemFont(ofSize: 16)
            lblMedieval.font = UIFont.systemFont(ofSize: 16)
            lblFuturistic.font = UIFont.systemFont(ofSize: 16)
            
        case btnFuturistic:
            btnFantasy.isHighlighted = true
                   
            btnMedieval.isHighlighted = true
            
            btnModern.isHighlighted = true
            
            lblFuturistic.font = UIFont.boldSystemFont(ofSize: 16)
            lblFantasy.font = UIFont.systemFont(ofSize: 16)
            lblMedieval.font = UIFont.systemFont(ofSize: 16)
            lblModern.font = UIFont.systemFont(ofSize: 16)
            
        default :
            print("lalalala")
        }
        clear()
    }
    
    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            clear()
            highlightOn()

        case 1:
            clear()
            highlightOn()

        default:
            print("Nothing")
        }
    }
    
    @IBAction func btnGenerateClicked(_ sender: Any) {
        let rand = Int.random(in: 0...4)
        
        if segmented.selectedSegmentIndex == 0{
            if btnFantasy.isHighlighted && btnMedieval.isHighlighted && btnModern.isHighlighted && btnFuturistic.isHighlighted {
                warning()
            }
            else if btnFantasy.isHighlighted == false{
                lblIdea.text = arrayFantasyDrawing[rand]
            }else if btnMedieval.isHighlighted == false{
                lblIdea.text = arrayMedievalDrawing[rand]
            }else if btnModern.isHighlighted == false{
                lblIdea.text = arrayModernDrawing[rand]
            }else if btnFuturistic.isHighlighted == false{
                lblIdea.text = arrayFuturisticDrawing[rand]
            }
        }
        else{
            if btnFantasy.isHighlighted && btnMedieval.isHighlighted && btnModern.isHighlighted && btnFuturistic.isHighlighted {
                warning()
            }
            else if btnFantasy.isHighlighted == false{
                lblIdea.text = arrayFantasyWriting[rand]
            }
            else if btnMedieval.isHighlighted == false {
                lblIdea.text = arrayMedievalWriting[rand]
            }
            else if btnModern.isHighlighted == false{
                lblIdea.text = arrayModernWriting[rand]
            }
            else if btnFuturistic.isHighlighted == false{
                lblIdea.text = arrayFuturisticWriting[rand]
            }
        }
    }
    
}

