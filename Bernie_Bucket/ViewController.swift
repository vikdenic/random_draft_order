//
//  ViewController.swift
//  Bernie_Bucket
//
//  Created by Vik Denic on 8/2/14.
//  Copyright (c) 2014 Vik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ownersArray = [String]()

    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    @IBOutlet weak var sevenLabel: UILabel!
    @IBOutlet weak var eightLabel: UILabel!
    @IBOutlet weak var nineLabel: UILabel!
    @IBOutlet weak var tenLabel: UILabel!
    @IBOutlet weak var elevenLabel: UILabel!
    @IBOutlet weak var twelveLabel: UILabel!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func refillArray()
    {
        ownersArray = ["Vik", "Hal", "Dale", "Jim", "Topel", "Stein", "Jon", "D'Amico", "Craig", "Oso", "Ross", "Reddy"]
    }

    @IBAction func onRandomButtonTapped(sender: UIButton)
    {
        refillArray()

        var pickTwelve = Int(arc4random_uniform(12))
        twelveLabel.text = "12: " + ownersArray[pickTwelve]
        println(ownersArray)
        ownersArray.removeAtIndex(pickTwelve)

        var pickEleven = Int(arc4random_uniform(11))
        elevenLabel.text = "11: " + ownersArray[pickEleven]
        println(ownersArray)
        ownersArray.removeAtIndex(pickEleven)

        var pickTen = Int(arc4random_uniform(10))
        tenLabel.text = "10: " + ownersArray[pickTen]
        println(ownersArray)
        ownersArray.removeAtIndex(pickTen)

        var pickNine = Int(arc4random_uniform(9))
        nineLabel.text = "9: " + ownersArray[pickNine]
        println(ownersArray)
        ownersArray.removeAtIndex(pickNine)

        var pickEight = Int(arc4random_uniform(8))
        eightLabel.text = "8: " + ownersArray[pickEight]
        println(ownersArray)
        ownersArray.removeAtIndex(pickEight)

        var pickSeven = Int(arc4random_uniform(7))
        sevenLabel.text = "7: " + ownersArray[pickSeven]
        println(ownersArray)
        ownersArray.removeAtIndex(pickSeven)

        var pickSix = Int(arc4random_uniform(6))
        sixLabel.text = "6: " + ownersArray[pickSix]
        println(ownersArray)
        ownersArray.removeAtIndex(pickSix)

        var pickFive = Int(arc4random_uniform(5))
        fiveLabel.text = "5: " + ownersArray[pickFive]
        println(ownersArray)
        ownersArray.removeAtIndex(pickFive)

        var pickFour = Int(arc4random_uniform(4))
        fourLabel.text = "4: " + ownersArray[pickFour]
        println(ownersArray)
        ownersArray.removeAtIndex(pickFour)

        var pickThree = Int(arc4random_uniform(3))
        threeLabel.text = "3: " + ownersArray[pickThree]
        println(ownersArray)
        ownersArray.removeAtIndex(pickThree)

        var pickTwo = Int(arc4random_uniform(2))
        twoLabel.text = "2: " + ownersArray[pickTwo]
        println(ownersArray)
        ownersArray.removeAtIndex(pickTwo)

        var pickOne = Int(arc4random_uniform(1))
        oneLabel.text = "1: " + ownersArray[pickOne]
        println(ownersArray)
        ownersArray.removeAtIndex(pickOne)
        println(ownersArray)

        refillArray()
    }

    func animateLabel(label : UILabel, delay : NSNumber)
    {
        label.alpha = 0
        UIView.animateWithDuration(delay, animations: {
            label.alpha = 1
            })
    }
}

