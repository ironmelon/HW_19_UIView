//
//  ViewController.swift
//  HW_19_UIView
//
//  Created by Oleg Dynnikov on 9/7/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var names = ["Tom", "Kira", "Ran", "Bob", "Nora"]
    let lastNames = ["Devidson", "Richards", "Natwish", "Lind", "Veldmor"]
    var nameView = CustomView()
    var lastNameView = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect1 = CGRect(x: 0, y: 100, width: view.bounds.width, height: 25)
        nameView = CustomView(frame: rect1)
        nameView.firstLabel.text = "Name:"
        view.addSubview(nameView)

        let rect2 = CGRect(x: 0, y: 150, width: view.bounds.width, height: 25)
        lastNameView = CustomView(frame: rect2)
        lastNameView.firstLabel.text = "Last name:"
        view.addSubview(lastNameView)

        addGenerateButton()
    }

    @objc private func buttonPressed(sender: UIButton) {
        nameView.secondLabel.text = names[Int(arc4random_uniform(UInt32(names.count)))]
        lastNameView.secondLabel.text = lastNames[Int(arc4random_uniform(UInt32(lastNames.count)))]
    }

    func addGenerateButton() {
        let width = view.bounds.width * 0.5
        let rect = CGRect(x: (view.bounds.width - width) * 0.5, y: view.bounds.height * 0.75, width: width, height: view.bounds.height * 0.1)
        let button = UIButton(frame: rect)
        button.setTitle("Generate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
        view.addSubview(button)
    }
}

