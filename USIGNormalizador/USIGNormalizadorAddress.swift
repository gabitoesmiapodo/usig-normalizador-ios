//
//  USIGNormalizadorAddress.swift
//  USIGNormalizador
//
//  Created by Rita Zerrizuela on 9/28/17.
//  Copyright © 2017 GCBA. All rights reserved.
//

import Foundation

public struct USIGNormalizadorAddress {
    public let address: String
    public let street: String
    public let number: Int?
    public let type: String
    public let corner: String?
}

extension USIGNormalizadorAddress: Equatable {
    public static func ==(lhs: USIGNormalizadorAddress, rhs: USIGNormalizadorAddress) -> Bool {
        return lhs.address == rhs.address && lhs.type == rhs.type
    }
}
