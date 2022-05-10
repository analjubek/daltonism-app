//
//  MainController.swift
//  DaltonismApp
//
//  Created by Leonarda Gjenero on 10.05.2022..
//

import UIKit

class MainController: UIViewController {
    
    private var topBarView: TopBarView!
    
    private var btnAbout : UIButton!
    private var btnR : UIButton!
    private var btnG : UIButton!
    private var btnB : UIButton!
    private var btnHelp : UIButton!

    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildViews()
        buildConstrints()
        // Do any additional setup after loading the view.
    }

    private func buildViews(){
        view.backgroundColor = .white
        
        topBarView = TopBarView()
        view.addSubview(topBarView)
        
        btnAbout=UIButton()
        btnR=UIButton()
        btnG=UIButton()
        btnB=UIButton()
        btnHelp=UIButton()
     

        view.addSubview(btnAbout)
        view.addSubview(btnR)
        view.addSubview(btnG)
        view.addSubview(btnB)
        view.addSubview(btnHelp)
        
        btnAbout.backgroundColor = .darkGray
        btnR.backgroundColor = .darkGray
        btnG.backgroundColor = .darkGray
        btnB.backgroundColor = .darkGray
        btnHelp.backgroundColor = .darkGray
        
        
        btnAbout.setTitle("Što je daltonizam?", for: .normal)
        btnR.setTitle("Poremećaj prepoznavanja crvene boje", for: .normal)
        btnR.titleLabel?.lineBreakMode = .byWordWrapping
        btnR.titleLabel?.textAlignment = .center
        btnG.setTitle("Poremećaj prepoznavanja zelene boje", for: .normal)
        btnG.titleLabel?.lineBreakMode = .byWordWrapping
        btnG.titleLabel?.textAlignment = .center
        btnB.setTitle("Poremećaj prepoznavanja\nplave boje", for: .normal)
        btnB.titleLabel?.lineBreakMode = .byWordWrapping
        btnB.titleLabel?.textAlignment = .center
        btnHelp.setTitle("Kako pomoći osobama s daltonizmom?", for: .normal)
        btnHelp.titleLabel?.lineBreakMode = .byWordWrapping
        btnHelp.titleLabel?.textAlignment = .center
        
        btnAbout.layer.cornerRadius = 10
        btnR.layer.cornerRadius = 10
        btnG.layer.cornerRadius = 10
        btnB.layer.cornerRadius = 10
        btnHelp.layer.cornerRadius = 10
        
    }
    
    private func buildConstrints(){
        topBarView.snp.makeConstraints{
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(80)
        }

        btnAbout.snp.makeConstraints {
            $0.top.equalTo(topBarView.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(80)
            $0.width.equalTo(300)
        }
        btnR.snp.makeConstraints {
            $0.top.equalTo(btnAbout.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(70)
            $0.width.equalTo(300)
        }
        btnG.snp.makeConstraints {
            $0.top.equalTo(btnR.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(70)
            $0.width.equalTo(300)
        }
        btnB.snp.makeConstraints {
            $0.top.equalTo(btnG.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(70)
            $0.width.equalTo(300)
        }
        btnHelp.snp.makeConstraints {
            $0.top.equalTo(btnB.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(220)
            $0.width.equalTo(300)
        }
    }
}
