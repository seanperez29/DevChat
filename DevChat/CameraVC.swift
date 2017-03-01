//
//  CameraVC.swift
//  DevChat
//
//  Created by Sean Perez on 12/4/16.
//  Copyright © 2016 SeanPerez. All rights reserved.
//

import UIKit

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate {
    
    @IBOutlet weak var previewView: AAPLPreviewView!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!

    override func viewDidLoad() {
        delegate = self
        self._previewView = previewView
        super.viewDidLoad()
    }

    @IBAction func recordButtonPressed(_ sender: Any) {
        toggleMovieRecording()
    }
    
    @IBAction func changeCameraButtonPressed(_ sender: Any) {
        changeCamera()
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraButton.isEnabled = enable
        print("Should enable camera UI: \(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordButton.isEnabled = enable
        print("Should enable record UI: \(enable)")
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }
}

