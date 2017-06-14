

import UIKit

class ViewController: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var photoImageView: UIImageView!
    
    
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated: true, completion: nil)
    }
    
    
    
   
    
   
    
    
    
    @IBAction func selectimagefromlibrary(_ sender: UITapGestureRecognizer)
    {
        let imagepickercontroller = UIImagePickerController()
        
        imagepickercontroller.delegate = self
        
        
        let actionsheet = UIAlertController(title: "pohoto source", message: "choose a photo source", preferredStyle: .actionSheet)
        
        // camera
        actionsheet.addAction(UIAlertAction(title: "camera", style: .default, handler: { (action:UIAlertAction) in
            imagepickercontroller.sourceType = .camera
            self.present(imagepickercontroller, animated: true, completion: nil)
        }))
        
        // photolibrary
        actionsheet.addAction(UIAlertAction(title: "photolibrary", style: .default, handler: { (action:UIAlertAction) in
            
            imagepickercontroller.sourceType = .photoLibrary
            
            self.present(imagepickercontroller, animated: true, completion: nil)
        }))
        
        // cancel
        
        actionsheet.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        self.present(actionsheet, animated: true, completion: nil)
        
  
    }
   func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
        
    {
        let selecttedphoto = info[UIImagePickerControllerOriginalImage ] as! UIImage
        
        photoImageView.image = selecttedphoto
        
        dismiss(animated: true, completion: nil)
    }
        
        
       
        
    
    
    
    
    
    
    

    
}

