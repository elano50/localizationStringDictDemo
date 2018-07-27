//
//  ViewController.swift
//  localization
//
//  Created by Alex Kisel on 7/25/18.
//  Copyright © 2018 zor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var greetingLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    greetingLabel.text = "Hello world".localized()
    descriptionLabel.text = "Remove %d selected file(s)".localized(args: 21)
  }
}

