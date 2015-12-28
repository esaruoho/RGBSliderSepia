//
//  ViewController.swift
//  OneBorkedTwoToGo
//
//  Created by Esa Ruoho on 28/12/15.
//  Copyright © 2015 Esa Ruoho. All rights reserved.
//

import UIKit
let fileURL = NSBundle.mainBundle().URLForResource("IMG_0015_For_Swift", withExtension: "jpg")!
let beginImage = CIImage(contentsOfURL: fileURL)
let filter = CIFilter(name: "CISepiaTone")!
class ViewController: UIViewController {

    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var labelLabel: UILabel!
    
    @IBOutlet weak var imageViewer: UIImageView!
    
    @IBAction func sliderValueChanged(sender: AnyObject) {
        let hohoo=String(redSlider.value)
        let hohoo2=String(greenSlider.value)
        let hohoo3=String(blueSlider.value)
        
        
        
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        
        let result = "R: " + hohoo + " G: " + hohoo2 + " B: " + hohoo3
        labelLabel.text = result
        
        labelLabel.backgroundColor = UIColor.whiteColor()
        
//        self.imageViewer.backgroundColor =
        
    }
    
    
    @IBAction func redSliderTouchUp(sender: AnyObject) {


        

    }
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func Slider(sender: AnyObject) {
        
        
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(CGFloat(sliderValue.value), forKey: kCIInputIntensityKey)
        let newImage = UIImage(CIImage: filter.outputImage!)
        self.imageViewer.image = newImage
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redSlider.value = 1.0
        
        let hohoo=String(redSlider.value)
        let hohoo2=String(greenSlider.value)
        let hohoo3=String(blueSlider.value)
        
        
        let result = "R: " + hohoo + " G: " + hohoo2 + " B: " + hohoo3
        
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        labelLabel.text = result
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

