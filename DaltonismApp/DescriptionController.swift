//
//  DescriptionController.swift
//  DaltonismApp
//
//  Created by Ana Ljubek on 10.05.2022..
//

import UIKit
import SnapKit

class DescriptionController: UIViewController{
    
    private var topBarView: TopBarView!
    
    private var scrollView: UIScrollView!
    private var contentView: UIView!
    
    private var titleContent: UILabel!
    private var descriptionContent: UILabel!
      
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
      }
    
      private func buildViews(){
          view.backgroundColor = .white
          
          topBarView = TopBarView()
          view.addSubview(topBarView)
          
          scrollView = UIScrollView()
          view.addSubview(scrollView)
          
          contentView = UIView()
          scrollView.addSubview(contentView)
          
          titleContent = UILabel()
          contentView.addSubview(titleContent)
          titleContent.textColor = .black
          titleContent.text = "Što je daltonizam?"
          titleContent.font = UIFont.boldSystemFont(ofSize: 20)
          titleContent.numberOfLines = 0
          
          descriptionContent = UILabel()
          contentView.addSubview(descriptionContent)
          descriptionContent.textColor = .black
          descriptionContent.text = "   Poremećaj kolornog vida, odnosno daltonizam, je poremećaj pri kojem jedan tip čunjeva u ljudskom oku ne funkcionira kako treba."
          + "\n\n   Čunjevi su posebne živčane stanice u oku kroz koje ljudi vide boju. Ljudi posjeduju tri tipa čunjeva koji upijaju crvenu, plavu ili zelenu svjetlost. Ako ova tri tipa stanica djeluju zajedno, moguće je vidjeti cijeli spektar boja. No, kod oko 25% osoba s daltonizmom jedan čunj ne postoji. Dakle, dok ljudi koji normalno vide boje mogu vidjeti cijeli spektar, daltonisti vide mnogo boja kao jednu."
          + "\n\n   Daltonizam je obično nasljedno stanje koje izaziva pogreška u sekvenciranju gena kromosoma X u DNK-u. No, poremećaj može nastati i kao nuspojava određenih bolesti, poput šećerne bolesti ili multiple skleroze, te kao posljedica uzimanja određenih droga i lijekova."
          descriptionContent.font = UIFont(name: "San Francisco", size: 20)
          descriptionContent.numberOfLines = 0
      }
      
      private func buildConstrints(){
          topBarView.snp.makeConstraints{
              $0.top.leading.trailing.equalToSuperview()
              $0.height.equalTo(80)
          }
          scrollView.snp.makeConstraints{
              $0.top.equalTo(topBarView.snp.bottom)
              $0.leading.trailing.bottom.equalTo(view.safeAreaLayoutGuide)
          }
          contentView.snp.makeConstraints {
              $0.edges.equalToSuperview()
              $0.width.equalToSuperview()
          }
          titleContent.snp.makeConstraints {
              $0.top.equalToSuperview().inset(20)
              $0.centerX.equalToSuperview()
              $0.height.equalTo(20)
          }
          descriptionContent.snp.makeConstraints {
              $0.top.equalTo(titleContent.snp.bottom).offset(12)
              $0.bottom.leading.trailing.equalToSuperview().inset(12)
          }
      }
}
