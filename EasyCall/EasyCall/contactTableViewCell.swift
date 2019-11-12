//
//  contactTableViewCell.swift
//  EasyCall
//
//  Created by Mm on 10/14/19.
//  Copyright © 2019 Mm. All rights reserved.
//

import UIKit

class contactTableViewCell: UITableViewCell {

    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var numeroLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var emergenciaButton: UIButton!
//    var botonAgregar: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func callContact(number: String){
        if let url = URL(string: "tel://\(number)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.openURL(url)
        }
    }
    
    @IBAction func callPressed(_ sender: Any) {
        callContact(number: (numeroLabel.text?.digits)!)
    }
    
    @IBAction func EmergenciaPressed(_ sender: Any) {
        // aqui pones que es contacto de emergenecia

        let contacts = appDelegate.contacts
        
        for contact in contacts {
            if(nombreLabel.text == contact.nombre){
                if(contact.emergencia){
                    contact.emergencia = false
                    print("\(nombreLabel.text) ya no es contacto de emergencia.")
                    emergenciaButton.backgroundColor = UIColor(red: 51/255, green: 190/255, blue: 255/255, alpha: 1)
                    emergenciaButton.setTitle("Agregar", for: .normal)
                    
//                    51 190 255
                }else{
                    contact.emergencia = true
                    print("\(nombreLabel.text) ahora es contacto de emergencia.")
                    emergenciaButton.backgroundColor = UIColor(red: 51/255, green: 190/255, blue: 119/255, alpha: 1)
                    emergenciaButton.setTitle("Agregado", for: .normal)
                }
            }
        }
        
        appDelegate.contacts = contacts
        appDelegate.guardarContactos()
    }
    
    

}

extension String {
    var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
    }
}

extension UIViewController {
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
