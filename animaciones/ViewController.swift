//
//  ViewController.swift
//  animaciones
//
//  Created by Maestro on 17/01/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img_halo: UIImageView!
    @IBOutlet weak var img_logo: UIImageView!
    @IBOutlet weak var vw_textFields: UILabel!
    @IBOutlet weak var btn_InicarSesion: UIButton!
    @IBOutlet weak var btn_Registrar: UIButton!
    
    var LogoPlace: CGPoint
    var BarsPlace: CGPoint
    var IniPlace: CGPoint
    var RegisPlace: CGPoint
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.img_halo.alpha = 0
        
        //Registrar posiciones
        LogoPlace = CGPoint(x:img_logo.center.x, y:img_logo.center.y)
        BarsPlace = CGPoint(x:vw_textFields.center.x, y:vw_textFields.center.y)
        IniPlace = CGPoint(x:btn_InicarSesion.center.x, y:btn_InicarSesion.center.y)
        RegisPlace = CGPoint(x:btn_Registrar.center.x, y:btn_Registrar.center.y)
        
        //Asignar posiciones de entrada
    }
    
    override func viewDidAppear(_ animated: Bool) {
        /*UIView.animate(withDuration: 1, animations: {
            self.vw_CuadroVerde.center.x += 100
            self.vw_CuadroVerde.center.y += 130
            
            self.vw_CuadroVerde.backgroundColor = UIColor.black
        })*/
        
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat,.autoreverse, .curveEaseInOut], animations: {
            self.vw_CuadroVerde.center =
                CGPoint(x: self.vw_CuadroVerde.center.x + 50,
                        y: self.vw_CuadroVerde.center.y + 75)
            self.vw_CuadroVerde.transform =
                CGAffineTransform(rotationAngle: CGFloat(90.0*M_PI/180.0))
            self.vw_CuadroVerde.transform =
                CGAffineTransform(scaleX: 2, y: 2)
            
            self.vw_CuadroVerde.backgroundColor = UIColor.black
        }, completion: nil)
        
        UIView.animate(withDuration: 2, animations: {
            self.vw_CuadroPurpura.center.x = self.vw_CuadroPurpura.center.x + 100
            self.vw_CuadroPurpura.center.y = self.vw_CuadroPurpura.center.y - 130
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

