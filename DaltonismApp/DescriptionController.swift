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
    private var descriptionContent1: UILabel!
    private var descriptionContent2: UILabel!
    
    private var imageView: UIImageView!
      
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
          
          descriptionContent1 = UILabel()
          contentView.addSubview(descriptionContent1)
          descriptionContent1.textColor = .black
          descriptionContent1.text = "   Poremećaj kolornog vida, odnosno daltonizam, je poremećaj pri kojem jedan tip čunjeva u ljudskom oku ne funkcionira kako treba."
          + "\n\n   Čunjevi su posebne živčane stanice u oku kroz koje ljudi vide boju. Ljudi posjeduju tri tipa čunjeva koji upijaju crvenu, plavu ili zelenu svjetlost. Ako ova tri tipa stanica djeluju zajedno, moguće je vidjeti cijeli spektar boja. No, kod oko 25% osoba s daltonizmom jedan čunj ne postoji. Dakle, dok ljudi koji normalno vide boje mogu vidjeti cijeli spektar, osobe s daltonizmom vide mnogo boja kao jednu."
          + "\n\n   Daltonizam je obično nasljedno stanje koje izaziva pogreška u sekvenciranju gena kromosoma X u DNK-u. No, poremećaj može nastati i kao nuspojava određenih bolesti, poput šećerne bolesti ili multiple skleroze, te kao posljedica uzimanja određenih droga i lijekova."
          descriptionContent1.font = UIFont(name: "San Francisco", size: 20)
          descriptionContent1.numberOfLines = 0
          
          let image = UIImage(named: "daltonizam")
          imageView = UIImageView(image: image)
          contentView.addSubview(imageView)
          imageView.contentMode = .scaleAspectFit
          imageView.clipsToBounds = true
          
          descriptionContent2 = UILabel()
          contentView.addSubview(descriptionContent2)
          descriptionContent2.textColor = .black
          descriptionContent2.text = "   Osobe s daltonizmom imaju problema s raspoznavanjem crvene, zelene i plave/žute boje. Pri manje teškim poremećajima postoje čunjevi za prepoznavanje pojedine boje, no ne funkcioniraju normalno. Pri teškim poremećajima čunjevi za prepoznavanje pojedine boje nedostaju."
          + "\n\n   Poremećaji prepoznavanja crvene i zelene boje su nasljedni i vrlo česti, dok su poremećaj prepoznavanja plave boje i monokrotizam (nemogućnost raspoznavanja boja) izuzetno rijetki. Stečeni daltonizam češće pogađa poremećaje vida plave/žute boje."
          + "\n\n   Otprilike jedan od dvanaest muškaraca (8%) naslijedi poremećaj prepoznavanja crvene/zelene boje, dok je kod žena ta brojka tek 1 od 200 (0,5%). Daltonizam je češći kod muškaraca jer se prenosi putem X kromosoma. Muškarci imaju samo jedan X kromosom, dok žene imaju dva. Da bi žena imala daltonizam, mora naslijediti poremećaj na oba X kromosoma."
          + "\n\n   Daltonizam ne utječe na općenitu sposobnost vida. Odnosno, ne utječe na fokusiranost vida, nego samo na broj vidljivih boja."
          descriptionContent2.font = UIFont(name: "San Francisco", size: 20)
          descriptionContent2.numberOfLines = 0
          
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
          descriptionContent1.snp.makeConstraints {
              $0.top.equalTo(titleContent.snp.bottom)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(450)
          }
          imageView.snp.makeConstraints{
              $0.top.equalTo(descriptionContent1.snp.bottom).offset(10)
              $0.leading.trailing.equalToSuperview()
              $0.width.equalToSuperview().inset(10)
              $0.height.equalTo(400)
          }
          descriptionContent2.snp.makeConstraints {
              $0.top.equalTo(imageView.snp.bottom).offset(15)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(550)
              $0.bottom.equalToSuperview().inset(12)
          }
      }
}
