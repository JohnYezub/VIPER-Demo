//
//  extensions.swift
//  VIPER Demo
//
//  Created by   admin on 18.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}
