//
//  ViewController.swift
//  DemoImagePickerView
//
//  Created by kvanaMini1 on 26/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

   
    @IBOutlet weak var pickerImageView: UIImageView!
    
     let imagePicker = UIImagePickerController()
 
    @IBAction func library(sender: AnyObject) {
        
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    
    @IBAction func photo(sender: AnyObject) {
        imagePicker.sourceType = .Camera
        
        imagePicker.cameraCaptureMode = .Photo
        imagePicker.modalPresentationStyle = .FullScreen
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        imagePicker.delegate = self
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        
        let pickerImage = info[UIImagePickerControllerOriginalImage]as! UIImage
        pickerImageView.image = pickerImage
        dismissViewControllerAnimated(true, completion: nil)
        
    
    
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        dismissViewControllerAnimated(true, completion: nil)
        
    }

}



