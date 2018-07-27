//
//  String+Extension.swift
//  localization
//
//  Created by Alex Kisel on 7/25/18.
//  Copyright © 2018 zor. All rights reserved.
//

import Foundation

extension String {
  func localized(args: CVarArg...) -> String {
    let value = "**\(self)**"
    let localizeTableString = NSLocalizedString(self,
                                                tableName: "Localize",
                                                value: value,
                                                comment: "")
    guard localizeTableString == value else { return localizeTableString }
    let format = NSLocalizedString(self,
                                   tableName: "LocalizableDict",
                                   bundle: Bundle.main,
                                   value: value, comment: "")
    
    let localizeDictString = String(format: format, arguments: args)
    return localizeDictString
  }
}
