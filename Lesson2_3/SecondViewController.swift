//
//  SecondViewController.swift
//  Lesson2_3
//
//  Created by Ilnar on 20.11.2024.
//

import UIKit

class SecondViewController: UIViewController {

    lazy var logoView = {
        $0.image = .logo
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.frame = CGRect(x: 20, y: 100, width: 92, height: 34)
        return $0
    }(UIImageView())
    
    lazy var titleLabel = {
        $0.text = "Ольховый Квартал"
        $0.frame = CGRect(x: 14, y: logoView.frame.maxY + 20, width: view.frame.width - 28, height: 56)
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .white
        $0.adjustsFontSizeToFitWidth = true
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    lazy var imageH = {
        $0.image = .imageH
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.frame = CGRect(x: 14, y: titleLabel.frame.maxY + 15, width: view.frame.width - 28, height: 240)
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var  coast = {
        $0.text = "от 8 029 445 ₽"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 15, weight: .bold)
        $0.frame = CGRect(x: 14, y: imageH.frame.maxY + 20, width: view.frame.width - 28, height: 20)
        return $0
    }(UILabel())
    
    lazy var coastText = {
        $0.text = "Москва, поселение Сосенское, деревня Столбово"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 14, weight: .light)
        $0.frame = CGRect(x: 14, y: coast.frame.maxY + 5, width: view.frame.width - 28, height: 20)
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        navigationController?.navigationBar.tintColor = .white
        view.addSubview(logoView)
        view.addSubview(titleLabel)
        view.addSubview(imageH)
        view.addSubview(coast)
        view.addSubview(coastText)
        
    }
}
