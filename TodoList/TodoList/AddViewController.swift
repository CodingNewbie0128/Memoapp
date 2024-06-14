//
//  AddViewController.swift
//  TodoList
//
//  Created by engn0383 on 2024/06/14.
//

import UIKit

class AddViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource{
    
    var imageArray = [UIImage]()
    var imageFile: String = ""
    
    
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tfAddItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< items.count {
            let image = UIImage(named: itemsImageFile[i])
            imageArray.append(image!)
            
        }
        imageView.image = imageArray[0]
        imageFile = itemsImageFile[0]
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imageView.image=imageArray[row]
        imageFile=itemsImageFile[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imgView = UIImageView( image: imageArray[row])
        imgView.frame = CGRect(x: 0, y: 0, width: 45, height: 45)
        
        return imgView
    }
    

    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append(imageFile)
        tfAddItem.text = " "
            
            _ = navigationController?.popViewController(animated: true)
        
    }
    
}
