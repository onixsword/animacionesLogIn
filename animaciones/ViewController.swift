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
    @IBOutlet weak var vw_textFields: UIView!
    @IBOutlet weak var btn_InicarSesion: UIButton!
    @IBOutlet weak var btn_Registrar: UIButton!
    
    var LogoPlace: CGPoint?
    var BarsPlace: CGPoint?
    var IniPlace: CGPoint?
    var RegisPlace: CGPoint?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        //alpha
        self.img_halo.alpha = 0
        self.vw_textFields.alpha = 0
        
        //Registrar posiciones
        LogoPlace = CGPoint(x:img_logo.center.x, y:img_logo.center.y)
        BarsPlace = CGPoint(x:vw_textFields.center.x, y:vw_textFields.center.y)
        IniPlace = CGPoint(x:btn_InicarSesion.center.x, y:btn_InicarSesion.center.y)
        RegisPlace = CGPoint(x:btn_Registrar.center.x, y:btn_Registrar.center.y)
        
        //Asignar posiciones de entrada
        img_logo.center.y = -img_logo.bounds.height
        btn_InicarSesion.center.x = -btn_InicarSesion.bounds.width
        btn_Registrar.center.x = self.view.bounds.width+self.btn_Registrar.bounds.width
        
        //Cambiar tamaños iniciales
        vw_textFields.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.img_halo.alpha = 1
        }, completion: {_ in
            UIView.animate(withDuration: 1, animations: {
                self.img_logo.center = self.LogoPlace!
            }, completion: {_ in
                UIView.animate(withDuration: 2, delay: 0, options: [.repeat,.autoreverse], animations: {
                    self.img_logo.transform = CGAffineTransform(rotationAngle: CGFloat(9.0*M_PI/180.0))
                    self.img_logo.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                }, completion: nil)
            })
        })
        
        UIView.animate(withDuration: 1, delay: 4, options: [], animations: {
            self.vw_textFields.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.vw_textFields.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 5, options: [], animations: {
            self.btn_InicarSesion.center = self.IniPlace!
            self.btn_Registrar.center = self.RegisPlace!
        }, completion: nil)
        
        /*UIView.animate(withDuration: 1, delay: 0, options: [.repeat,.autoreverse, .curveEaseInOut], animations: {
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
        })*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

