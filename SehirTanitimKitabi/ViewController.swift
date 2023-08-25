//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by Oktay Kuzu on 19.08.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var TableWiev: UITableView!
    var  sehirdizisi = [Sehir] ()
    var kullanicisecim : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableWiev.delegate = self
        TableWiev.dataSource = self
       
        let istanbul = Sehir(sehirismi: "istanbul ", bolge: "Marmara Bölgesi", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(sehirismi: "Ankara", bolge: "İç Anaadolu Bölgesi", gorsel: UIImage(named: "ankara")!)
        let izmir = Sehir(sehirismi: "İzmir", bolge: "Ege", gorsel: UIImage(named: "izmir")!)
        let erzurum = Sehir(sehirismi: "Erzurum", bolge: "Doğu Anadolu", gorsel: UIImage(named: "erzurum")!)
        let antalya = Sehir(sehirismi: "Antalya", bolge: "Akdeniz Bölgesi ", gorsel: UIImage(named: "antalya")!)
        
        
         sehirdizisi = [istanbul,ankara,izmir,erzurum,antalya]
        
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirdizisi.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = UITableViewCell()
        cell.textLabel?.text =  sehirdizisi[indexPath.row].sehirismi
         return cell
    }
    
    // tıklanınca ne olucak ?
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         kullanicisecim = sehirdizisi[indexPath.row]
        performSegue(withIdentifier: "ToDetay", sender: nil)
        
    }
    //detay sayfasına git 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="ToDetay"{
            let detayvc = segue.destination as! ViewControllerSecond
            detayvc.secilensehir = kullanicisecim
            
            
        }
    }
}

