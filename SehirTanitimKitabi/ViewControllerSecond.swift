//
//  ViewControllerSecond.swift
//  SehirTanitimKitabi
//
//  Created by Oktay Kuzu on 19.08.2023.
//

import UIKit

class ViewControllerSecond: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var SehirismiLabel: UILabel!
    @IBOutlet weak var SehirBolgesiLabel: UILabel!
    
    
    var secilensehir  : Sehir?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SehirismiLabel.text = secilensehir?.sehirismi
        SehirBolgesiLabel.text = secilensehir?.bolge
        imageView.image = secilensehir?.gorsel
    }
    



}
