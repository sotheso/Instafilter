//
//  ImageSave.swift
//  Instafilter
//
//  Created by Sothesom on 11/12/1402.
//

import UIKit

class ImageSaver: NSObject{
    func writeToPhotoAlbum (image: UIImage){
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted( _ image: UIImage , didFinishSavingWithEror error: Error?, contextInfo: UnsafeRawPointer) {
        print("Save Finished!")
    }
}
