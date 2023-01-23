//
//  String+Extension.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 22/02/2022.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
