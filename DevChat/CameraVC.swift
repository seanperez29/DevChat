//
//  CameraVC.swift
//  DevChat
//
//  Created by Sean Perez on 12/4/16.
//  Copyright © 2016 SeanPerez. All rights reserved.
//

import UIKit

class CameraVC: AAPLCameraViewController {
    
    @IBOutlet weak var previewView: AAPLPreviewView!

    override func viewDidLoad() {
        self._previewView = previewView
        super.viewDidLoad()
    }

}

