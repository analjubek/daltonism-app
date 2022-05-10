//
//  AdvicesController.swift
//  DaltonismApp
//
//  Created by Ana Ljubek on 11.05.2022..
//

import UIKit
import SnapKit

class AdvicesController: UIViewController{
    
    let color = "#ededed"
    let color2 = "#d7d7d7"
    
    private var topBarView: TopBarView!
    
    private var scrollView: UIScrollView!
    private var contentView: UIView!
    
    private var titleContent: UILabel!
    
    private var adviceView1: UIView!
    private var adviceLabel1: UILabel!
    private var adviceView2: UIView!
    private var adviceLabel2: UILabel!
    private var adviceView3: UIView!
    private var adviceLabel3: UILabel!
    private var adviceView4: UIView!
    private var adviceLabel4: UILabel!
    private var adviceView5: UIView!
    private var adviceLabel5: UILabel!
    private var adviceView6: UIView!
    private var adviceLabel6: UILabel!
    private var adviceView7: UIView!
    private var adviceLabel7: UILabel!
    private var adviceView8: UIView!
    private var adviceLabel8: UILabel!
      
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
          titleContent.text = "Kako pomoći osobama s daltonizmom?"
          titleContent.font = UIFont.boldSystemFont(ofSize: 20)
          titleContent.numberOfLines = 0
          
          adviceView1 = UIView()
          contentView.addSubview(adviceView1)
          adviceView1.backgroundColor = .hexStringToUIColor(hex: color)
          adviceView1.layer.cornerRadius = 5
          
          adviceLabel1 = UILabel()
          adviceView1.addSubview(adviceLabel1)
          adviceLabel1.textColor = .black
          adviceLabel1.text = "Kombinacije sportske opreme koja osobama s daltonizmom izaziva najveće poteškoće u praćenju su:"
              + "\n   - crvena protiv crne (s prugama/uzorkom)"
              + "\n   - crvena protiv zelene protiv narančaste (jednobojni dresovi)"
              + "\n   - svijetlozelena protiv žute (nijanse dresova)"
              + "\n   - bijela protiv pastelnih boja"
              + "\n   - plava protiv tamnoljubičaste/ružičaste "
          adviceLabel1.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel1.numberOfLines = 0
          
          adviceView2 = UIView()
          contentView.addSubview(adviceView2)
          adviceView2.backgroundColor = .hexStringToUIColor(hex: color)
          adviceView2.layer.cornerRadius = 5
          
          adviceLabel2 = UILabel()
          adviceView2.addSubview(adviceLabel2)
          adviceLabel2.textColor = .black
          adviceLabel2.text = "Preporučena kombinacija sportske opreme:"
              + "\n   - bijela protiv crne"
              + "\n   - crvena protiv žute"
              + "\n   - crna protiv žute"
              + "\n   - plava protiv svijetlocrvene"
              + "\n   - plava protiv žute"
          adviceLabel2.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel2.numberOfLines = 0
          
          adviceView3 = UIView()
          contentView.addSubview(adviceView3)
          adviceView3.backgroundColor = .hexStringToUIColor(hex: color)
          adviceView3.layer.cornerRadius = 5
          
          adviceLabel3 = UILabel()
          adviceView3.addSubview(adviceLabel3)
          adviceLabel3.textColor = .black
          adviceLabel3.text = "Najveći problem razlikovanja jednobojne sportske opreme od travnjaka čini: "
              + "\n   - sve crveno"
              + "\n   - sve zeleno"
              + "\n   - sve narančasto"
              + "\n   - sve sivo"
              + "\n   - sve srebrno/zlatno"
          adviceLabel3.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel3.numberOfLines = 0
          
          adviceView4 = UIView()
          contentView.addSubview(adviceView4)
          adviceView4.backgroundColor = .hexStringToUIColor(hex: color2)
          adviceView4.layer.cornerRadius = 5
          
          adviceLabel4 = UILabel()
          adviceView4.addSubview(adviceLabel4)
          adviceLabel4.textColor = .black
          adviceLabel4.text = "Ne zaboravite, boje koje djeluju kao da su u snažnom kontrastu, osobama s daltonizmom ne moraju tako izgledati."
          adviceLabel4.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel4.numberOfLines = 0
          
          adviceView5 = UIView()
          contentView.addSubview(adviceView5)
          adviceView5.backgroundColor = .hexStringToUIColor(hex: color)
          adviceView5.layer.cornerRadius = 5
          
          adviceLabel5 = UILabel()
          adviceView5.addSubview(adviceLabel5)
          adviceLabel5.textColor = .black
          adviceLabel5.text = "Pravilan odabir opreme"
              + "\n   - Markeri: plava protiv žute ili bijele boje"
              + "\n   - Lopte: sa što većim udjelom bijele boje"
              + "\n   - Čunjevi za trening: plava, bijela, svijetložuta"
              + "\n   - Oznake linija: bijela"
              + "\n   - Trening „u učionici“: plave ili crne olovke na bijeloj površini"
          adviceLabel5.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel5.numberOfLines = 0
          
          adviceView6 = UIView()
          contentView.addSubview(adviceView6)
          adviceView6.backgroundColor = .hexStringToUIColor(hex: color)
          adviceView6.layer.cornerRadius = 5
          
          adviceLabel6 = UILabel()
          adviceView6.addSubview(adviceLabel6)
          adviceLabel6.textColor = .black
          adviceLabel6.text = "Dizajn"
              + "\n   - Nikad ne prenosite informacije samo putem boje"
              + "\n   - Koristite jednostavne tehnike (iscrtavanje/točkanje/osjenčavanje)"
              + "\n   - Pazite na to da linkovi i hover efekti na vašoj web stranici budu vidljivi u odnosu na tekst i pozadinske boje"
              + "\n   - Vodite računa da se dizajneri, osobe zadužene za marketing i organizacije koje za vas objavljuju digitalne podatke pridržavaju preporuka W3C-a o kontrastima boja"
          adviceLabel6.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel6.numberOfLines = 0
          
          adviceView7 = UIView()
          contentView.addSubview(adviceView7)
          adviceView7.backgroundColor = .hexStringToUIColor(hex: color2)
          adviceView7.layer.cornerRadius = 5
          
          adviceLabel7 = UILabel()
          adviceView7.addSubview(adviceLabel7)
          adviceLabel7.textColor = .black
          adviceLabel7.text = "Društvo je sklono ismijavati osobe s daltonizmom. Ljudi očekuju da su osobe s daltonizmom u stanju prihvatiti „šalu“ na svoj račun i otrpjeti negativne i uvredljive komentare o posljedicama njihovog stanja. No, komentirati nečiji invaliditet nije „šala“. Kao i kod bilo kog oblika zlostavljanja, najvažnije je kako ga netko doživljava."
          adviceLabel7.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel7.numberOfLines = 0
          
          adviceView8 = UIView()
          contentView.addSubview(adviceView8)
          adviceView8.backgroundColor = .hexStringToUIColor(hex: color)
          adviceView8.layer.cornerRadius = 5
          
          adviceLabel8 = UILabel()
          adviceView8.addSubview(adviceLabel8)
          adviceLabel8.textColor = .black
          adviceLabel8.text = "Vodite računa da vaš inkluzivni pristup podjednako jasno predstavite i osobama s dalzonizmom i osobama s normalnim vidom."
          adviceLabel8.font = UIFont(name: "San Francisco", size: 20)
          adviceLabel8.numberOfLines = 0
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
          adviceView1.snp.makeConstraints{
              $0.top.equalTo(titleContent.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(250)
          }
          adviceLabel1.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
          adviceView2.snp.makeConstraints{
              $0.top.equalTo(adviceView1.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(160)
          }
          adviceLabel2.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
          adviceView3.snp.makeConstraints{
              $0.top.equalTo(adviceView2.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(180)
          }
          adviceLabel3.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
          adviceView4.snp.makeConstraints{
              $0.top.equalTo(adviceView3.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(100)
          }
          adviceLabel4.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
          adviceView5.snp.makeConstraints{
              $0.top.equalTo(adviceView4.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(200)
          }
          adviceLabel5.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
          adviceView6.snp.makeConstraints{
              $0.top.equalTo(adviceView5.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(290)
          }
          adviceLabel6.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
          adviceView7.snp.makeConstraints{
              $0.top.equalTo(adviceView6.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(200)
          }
          adviceLabel7.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
          adviceView8.snp.makeConstraints{
              $0.top.equalTo(adviceView7.snp.bottom).offset(20)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(100)
              $0.bottom.equalToSuperview() // ide samo kod posljednjeg viewa unutar scrolla
          }
          adviceLabel8.snp.makeConstraints {
              $0.top.leading.trailing.bottom.equalToSuperview().inset(10)
          }
      }
}

