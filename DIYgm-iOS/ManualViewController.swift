//
//  MapViewController.swift
//  DIYgm-iOS
//
//  Created by Li, Max on 11/19/18.
//  Copyright © 2018 DIYgm. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class ManualViewController: UIViewController {
    
    var mapView: GMSMapView?
    var toolsView: UIView?
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        //Map view
        let camera = GMSCameraPosition.camera(withLatitude: 42.276347, longitude: -83.736247, zoom: 2.0)
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: ((self.navigationController?.toolbar.frame.size.height)! + UIApplication.shared.statusBarFrame.size.height + 100), width: self.view.frame.size.width, height: self.view.frame.size.height), camera: camera)
        mapView?.isMyLocationEnabled = true
        self.view.addSubview(mapView!)
        
        //Tools view
        let toolsRect = CGRect(x: 0, y: (self.navigationController?.toolbar.frame.size.height)! + UIApplication.shared.statusBarFrame.size.height, width: self.view.frame.size.width, height: 100)
        toolsView = UIView(frame: toolsRect)
        self.view.addSubview(toolsView!)
        
        let countField = UITextField(frame: CGRect(x: 10, y: 10, width: 180, height: 40))
        countField.placeholder = "Count Rate"
        countField.textAlignment = .center
        countField.font = countField.font?.withSize(28)
        countField.borderStyle = UITextField.BorderStyle.roundedRect
        countField.keyboardType = UIKeyboardType.decimalPad
        toolsView?.addSubview(countField)
        
        let setButton = UIButton(type: UIButton.ButtonType.system)
        setButton.frame = CGRect(x: 10, y: 55, width: 180, height: 40)
        setButton.setTitle("Set", for: .normal)
        setButton.titleLabel?.font = setButton.titleLabel?.font.withSize(28)
        setButton.addTarget(self, action: #selector(setCountRate(_:)), for: .touchUpInside)
        toolsView?.addSubview(setButton)
    }
    
    @objc func setCountRate(_ sender: UIButton) {
        print("test")
    }
}
