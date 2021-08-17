//
//  SampleView.swift
//  SwiftFunctionFromReactNative
//
//  Created by Alexander Schad on 13.08.21.
//

import Foundation
import UIKit
class SampleView: UIView {

  @objc func buttonAction(sender: UIButton!) {
    print("Button tapped")
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    let label = UILabel(frame: CGRect(x: 50, y: 50, width: 200, height: 50))
    label.text = "This is Swift"
    label.textColor = .white
    label.font = label.font.withSize(25)
    self.addSubview(label)

    let button = UIButton(frame: CGRect(x: 100, y: 150, width: 200, height: 50))
    button.backgroundColor = .black
    button.setTitle("Swift Button", for: .normal)
    button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    addSubview(button)
    print("Button added")
    self.backgroundColor = .blue
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
