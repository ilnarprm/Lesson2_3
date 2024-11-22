//
//  ViewController.swift
//  Lesson2_3
//
//  Created by Ilnar on 20.11.2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var blueView = {
        $0.backgroundColor = .systemBlue
        $0.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 335)
        $0.addSubview(logoImageView)
        $0.addSubview(titleLabel)
        $0.addSubview(whiteView)
        return $0
    }(UIView())
    
    lazy var logoImageView = {
        $0.image = .logo
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.frame = CGRect(x: 20, y: 45, width: 92, height: 34)
        return $0
    }(UIImageView())
    
    lazy var titleLabel = {
        $0.text = "Сервис квартирных решений от сделки до отделки"
        $0.frame = CGRect(x: 20, y: logoImageView.frame.maxY + 20, width: view.frame.width - 40, height: 56)
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .white
        $0.adjustsFontSizeToFitWidth = true
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    lazy var whiteView = {
        $0.backgroundColor = .white
        $0.frame = CGRect(x: 20, y: titleLabel.frame.maxY + 20, width: view.frame.width - 40, height: 135)
        $0.layer.cornerRadius = 10
        $0.addSubview(buyText)
        $0.addSubview(buyTextLight)
        $0.addSubview(button)
        return $0
    }(UIView())
    
    lazy var buyText = {
        $0.text = "Купить"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        $0.frame = CGRect(x: 12, y: 14, width: 70, height: 19)
        return $0
    }(UILabel())
    
    lazy var buyTextLight = {
        $0.text = "Подберем подходящий объект"
        $0.font = .systemFont(ofSize: 14, weight: .light)
        $0.textColor = .darkGray
        $0.frame = CGRect(x: 12, y: buyText.frame.maxY + 3, width: 170, height: 34)
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    lazy var button = {
        $0.setImage(.button, for: .normal)
        $0.frame = CGRect(x: titleLabel.frame.maxX - 52, y: 14, width: 10, height: 15)
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIButton(primaryAction: UIAction(handler: {[weak self]_ in
        guard let self else { return }
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    })))
    
    lazy var uslugi = {
        $0.text = "Услуги"
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.frame = CGRect(x: 20, y: blueView.frame.maxY + 30, width: 100, height: 25)
        return $0
    }(UILabel())
    
    lazy var grayView = {
        $0.frame = CGRect(x: 20, y: uslugi.frame.maxY + 15, width: view.frame.width - 40, height: 95)
        $0.layer.cornerRadius = 10
        $0.backgroundColor = UIColor(red: 0.9, green: 0.93, blue: 1.0, alpha: 1.0)
        $0.addSubview(insurance)
        $0.addSubview(insuranceText)
        return $0
    }(UIView())
    
    lazy var insurance = {
        $0.text = "Страхование"
        $0.font = .systemFont(ofSize: 14 , weight: .bold)
        $0.frame = CGRect(x: 12, y: 14, width: 100, height: 15)
        return $0
    }(UILabel())
    
    lazy var insuranceText = {
        $0.text = "Защитите имущество здоровье и жизнь"
        $0.font = .systemFont(ofSize: 14, weight: .light)
        $0.frame = CGRect(x: 12, y: insurance.frame.maxY + 3, width: 134, height: 32)
        $0.adjustsFontSizeToFitWidth = true
        $0.numberOfLines = 2
        $0.textColor = .darkGray
        return $0
    }(UILabel())
    
    lazy var home = {
        $0.text = "Жилые комплексы"
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.frame = CGRect(x: 20, y: grayView.frame.maxY + 30, width: 277, height: 25)
        return $0
    }(UILabel())
    
    lazy var homeView = {
        $0.backgroundColor = .systemGray6
        $0.frame = CGRect(x: 20, y: home.frame.maxY + 20, width: view.frame.width - 40, height: 199)
        $0.layer.cornerRadius = 10
        $0.addSubview(imageHome)
        $0.addSubview(adress)
        $0.addSubview(adressText)
        return $0
    }(UIView())
    
    lazy var imageHome = {
        $0.image = .imageW
        $0.frame = CGRect(x: 0, y: 0, width: view.frame.width - 40, height: 122)
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var adress = {
        $0.text = "Ольховый Квартал от 8 029 445 ₽"
        $0.numberOfLines = 2
        $0.font = .systemFont(ofSize: 14, weight: .bold)
        $0.frame = CGRect(x: 12, y: imageHome.frame.maxY + 5, width: 160, height: 40)
        return $0
    }(UILabel())
    
    lazy var adressText = {
        $0.text = "Москва, поселение Сосенское, деревня Столбово"
        $0.font = .systemFont(ofSize: 12, weight: .light)
        $0.textColor = .darkGray
        $0.frame = CGRect(x: 12, y: adress.frame.maxY + 3, width: view.frame.width - 52, height: 15)
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(blueView)
        view.addSubview(uslugi)
        view.addSubview(grayView)
        view.addSubview(home)
        view.addSubview(homeView)
    }
    
//    func labelText() -> UILabel {
//
//    }
}
