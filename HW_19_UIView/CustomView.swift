//
//  CustomView.swift
//  HW_19_UIView
//
//  Created by Oleg Dynnikov on 9/10/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class CustomView: UIView {

    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let offsets: CGFloat = 16.0 + 16.0

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }

    private func setupUI() {
        firstLabel.frame = CGRect(x: 16, y: 0, width: (self.bounds.width - offsets) * 0.3 , height: self.bounds.height)
        self.addSubview(firstLabel)

        secondLabel.frame = CGRect(x: 16 + firstLabel.bounds.width, y: 0, width: (self.bounds.width - offsets) * 0.7, height: self.bounds.height)
        self.addSubview(secondLabel)
    }
}
