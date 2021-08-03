//
//  CameraViewController.swift
//  AlarmPrototype
//
//  Created by Cameron Palmer on 3/8/21.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    func deniedPermission() {
        let alertController = UIAlertController(title: "Camera not authorised", message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Bye", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            navigationController?.popToRootViewController(animated: true)
        }
    }
    
    var captureSession = AVCaptureSession()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            // The user has previously granted access to the camera.
            break
        
        case .notDetermined:
            /*
             The app hasn't requested permission. Suspend the session queue to
             delay session setup until the access request has completed.
            */
            AVCaptureDevice.requestAccess(for: .video, completionHandler: { granted in
                if !granted {
                    self.deniedPermission()
                }
                
            })
    
        default:
            // The user has previously denied access.
            deniedPermission()
        }
        
        
    }
}
