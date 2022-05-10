//
//  TopBarView.swift
//  DaltonismApp
//
//  Created by Ana Ljubek on 10.05.2022..
//

import UIKit
import SnapKit

class TopBarView: UIView{
    var topBarView: UIView!
    var topBarText: UILabel!
    
    init(){
        super.init(frame: .zero)
        
        createTopBar()
        buildTopBarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTopBar(){
        topBarView = UIView()
        addSubview(topBarView)
        
        topBarView.backgroundColor = UIColor.darkGray
        
        topBarText = UILabel()
        topBarText.textColor = .white
        topBarText.text = "DALTO"
        topBarText.font = UIFont(name: "Marker Felt", size: 30)
        
        topBarView.addSubview(topBarText)
    }

    func buildTopBarConstraints(){
        topBarView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        topBarText.snp.makeConstraints{
            $0.centerX.equalTo(topBarView)
            $0.bottom.equalTo(topBarView).inset(7)
        }
    }
}
