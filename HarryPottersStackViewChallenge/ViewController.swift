//
//  ViewController.swift
//  HarryPottersStackViewChallenge
//
//  Created by Cenker Soyak on 5.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    
    func createUI(){
        view.backgroundColor = .white
        
        let lacarnumInflamarae = UILabel()
        lacarnumInflamarae.text = "LacarnumInflamarae"
        lacarnumInflamarae.textAlignment = .left
        lacarnumInflamarae.textColor = .white
        
        let locomotorWibbly = UILabel()
        locomotorWibbly.text = "LocomotorWibbly"
        locomotorWibbly.textAlignment = .left
        locomotorWibbly.textColor = .white
        
        let magicumPenetrum = UILabel()
        magicumPenetrum.text = "MagicumPenetrum"
        magicumPenetrum.textAlignment = .left
        magicumPenetrum.textColor = .white
        
        let partisTemporus = UILabel()
        partisTemporus.text = "PartisTemporus"
        partisTemporus.textAlignment = .left
        partisTemporus.textColor = .white
        
        let spellStack = UIStackView()
        spellStack.axis = .vertical
        spellStack.distribution = UIStackView.Distribution.fillEqually
        spellStack.alignment = UIStackView.Alignment.center
        spellStack.layer.cornerRadius = 15
        spellStack.spacing = 5.0
        spellStack.backgroundColor = .systemPurple
        view.addSubview(spellStack)
        spellStack.addArrangedSubview(lacarnumInflamarae)
        spellStack.addArrangedSubview(locomotorWibbly)
        spellStack.addArrangedSubview(partisTemporus)
        spellStack.addArrangedSubview(magicumPenetrum)
        spellStack.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(20)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(20)
        }
    }
}

