//
//  ViewController.swift
//  cocoaPodTest
//
//  Created by Manish R T on 19/12/22.
//

import UIKit

import TTGTags
class ViewController: UIViewController, TTGTextTagCollectionViewDelegate {
    
    let collectionView = TTGTextTagCollectionView()
    
    let array = ["wasd", "esdf","tfgh","uhjkwegw","wasd", "esdf","tfgh","uhjk","wasd", "esdf","tfgh","uhjk","wawerwrgsd", "esdf","tfgh","uhjk","wawegwsd", "esdf","tfwegwegh","uhjk","wasd", "esdf","tfgh","uhjkwdhgfuefiuehg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.alignment = .left
        
        collectionView.delegate = self
        
        for i in array{
            
            let textTag = TTGTextTag(content: TTGTextTagStringContent(text: "\(i)"),style: TTGTextTagStyle())

                   // Add tag
                   collectionView.addTag(textTag)
        }
        
     
       
        // !!! Never forget this !!!
        collectionView.reload()//        collectionView.addTag(["animals", "Food", "music", "sports", "swift"])
        // Do any additional setup after loading the view.
        view.addSubview(collectionView)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 300)
    }


}

