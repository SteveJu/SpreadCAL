//
//  ViewController.swift
//  SpreadCAL
//
//  Created by Steve Ju on 1/29/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var button: UIButton!
    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.backgroundColor = .secondarySystemBackground

        button.backgroundColor = .systemRed
        button.setTitle("Take Picture", for: .normal)
        button.setTitleColor(.white, for: .normal)
        label.backgroundColor = UIColor.green
        label.textColor = UIColor.red
        label.font=UIFont.systemFont(ofSize: 20)
    }
    
    @IBAction func didTapButton(){
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }


}
extension ViewController:UIImagePickerControllerDelegate,
    UINavigationControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated:true,completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as?
                UIImage else{
            return
        }
        imageView.image = image
    }
}
