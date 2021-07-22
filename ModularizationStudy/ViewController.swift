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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        print(Bundle.appName)
        print("teste".localizable)
        
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
