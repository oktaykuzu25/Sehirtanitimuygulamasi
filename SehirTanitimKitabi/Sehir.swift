//
//  Sehir.swift
//  SehirTanitimKitabi
//
//  Created by Oktay Kuzu on 19.08.2023.
//

import Foundation
import UIKit


class Sehir {
   
    var sehirismi : String
    var bolge  : String
    var gorsel : UIImage
    
    
    init(sehirismi: String, bolge: String, gorsel: UIImage) {
        self.sehirismi = sehirismi
        self.bolge = bolge
        self.gorsel = gorsel
    }
    
}
