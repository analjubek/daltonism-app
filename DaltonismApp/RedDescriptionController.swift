//
//  RedDescriptionController.swift
//  DaltonismApp
//
//  Created by Ana Ljubek on 10.05.2022..
//

import UIKit
import SnapKit

class RedDescriptionController: UIViewController{
    
    private var topBarView: TopBarView!
    
    private var scrollView: UIScrollView!
    private var contentView: UIView!
    
    private var titleContent: UILabel!
    private var descriptionContent: UILabel!
    
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
          titleContent.text = "Poremećaj prepoznavanja crvene boje"
          titleContent.font = UIFont.boldSystemFont(ofSize: 20)
          titleContent.numberOfLines = 0
          
          descriptionContent = UILabel()
          contentView.addSubview(descriptionContent)
          descriptionContent.textColor = .black
          descriptionContent.text = "   Protanopija je težak poremećaj, koji se javlja kad nedostaju čunjevi za prepoznavanje crvene boje, dok je protanomalija je manje težak poremećaj, gdje čunjevi za prepoznavanje crvene boje postoje, no ne funkcioniraju normalno."
          + "\n\n   Poremećaji prepoznavanja crvene boje su nasljedni i vrlo česti."
          + "\n\n   U nastavku slijede primjeri kako osobe s protanopijom ili protanomalijom vide svijet."
          descriptionContent.font = UIFont(name: "San Francisco", size: 20)
          descriptionContent.numberOfLines = 0
          
          let image = UIImage(named: "daltonizam")
          imageView = UIImageView(image: image)
          contentView.addSubview(imageView)
          imageView.contentMode = .scaleAspectFit
          imageView.clipsToBounds = true
          
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
              $0.top.equalTo(titleContent.snp.bottom).offset(10)
              $0.leading.trailing.equalToSuperview().inset(12)
              $0.height.equalTo(270)
          }
          imageView.snp.makeConstraints{
              $0.top.equalTo(descriptionContent.snp.bottom).offset(10)
              $0.leading.trailing.equalToSuperview()
              $0.width.equalToSuperview().inset(10)
              $0.height.equalTo(400)
              $0.bottom.equalToSuperview().inset(12)
          }
      }
}
