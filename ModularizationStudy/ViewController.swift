//
//  ViewController.swift
//  ModularizationStudy
//
//  Created by João Vitor Duarte Mariucio on 22/07/21.
//

import UIKit
import CommonUtilities

class ViewController: UIViewController {
    
    let imageview: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var nameUser: String? {
        get {
            return PreferenceExample.nameUser.get()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        print(Bundle.appName)
        print(Bundle.appBuild)
        print(Bundle.appVersion)
        print(Bundle.identifier)
        
        print("teste".localizable)
        
        // Save name user
        PreferenceExample.nameUser.set("joao")
        
        // Get name user
        print(nameUser)
        
        addLayout()
        setImage()
    }
    
    func addLayout() {
        
        view.addSubview(imageview)
        NSLayoutConstraint.activate([
            imageview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageview.heightAnchor.constraint(equalToConstant: 200),
            imageview.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func setImage() {
        imageview.load(with: "https://blog.emania.com.br/wp-content/uploads/2019/07/fotografo-capta-imagem-incrivel-do-eclipse-solar-no-chile-Blog-eMania-03-07.jpg")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}


enum PreferenceExample: String, PreferencesUtil {
    var key: String { return rawValue }

    case nameUser
}
