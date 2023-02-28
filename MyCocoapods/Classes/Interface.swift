//
//  Interface.swift
//  MyCocoapods
//
//  Created by Nu Wai Thu on 2023/02/27.
//

import Foundation
public class callStoryBoard{
    
    var vc : VideoViewController!
    
    public init(){
        
    }
    
    public func call(parentView:UIViewController,name:String){
        
        let frameBundle = Bundle(for: VideoViewController.self)
          let path = frameBundle.path(forResource: "MyCocoapods", ofType: "bundle")
          if #available(iOS 16.0, *) {
              let resBundle = Bundle(url: URL(filePath: path!))
              let storyBoard = UIStoryboard(name: "Storyboard", bundle: resBundle)
              let vc = storyBoard.instantiateViewController(withIdentifier: "videoVC") as! VideoViewController
              vc.passName = name
              vc.modalPresentationStyle = .fullScreen
              parentView.present(vc, animated: true)
          } else {
              // Fallback on earlier versions
              let bundleUrl = frameBundle.url(forResource: "MyCocoapods", withExtension: "bundle")
              let resBundle = Bundle(url: bundleUrl!)
              let storyBoard = UIStoryboard(name: "Storyboard", bundle: resBundle)
              let vc = storyBoard.instantiateViewController(withIdentifier: "videoVC") as! VideoViewController
              vc.passName = name
              vc.modalPresentationStyle = .fullScreen
              parentView.present(vc, animated: true)
          }
        
    }
    

    
}

