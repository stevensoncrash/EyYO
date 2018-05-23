//
//  AvatarPickerVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/21/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    // Variables
    
    var avatarType = AvatarType.dark
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    // Protocals
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            cell.configureCell(index: indexPath.item, type: avatarType)
            return cell
        }
        return AvatarCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    // Actions 
    @IBAction func segmentControlChanged(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            avatarType = .dark
        } else {
            avatarType = .light
        }
        collectionView.reloadData()
    }
    
    
        
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            var numOfColumns : CGFloat = 3
            if UIScreen.main.bounds.width > 320 {
                numOfColumns = 4
            }
            
            let spaceBetweenCells : CGFloat = 10
            let padding : CGFloat = 40
            let cellDimension = ((collectionView.bounds.width - padding) - (numOfColumns - 1) * spaceBetweenCells) / numOfColumns
            return CGSize(width: cellDimension, height: cellDimension)
      }
        
        func collectionView(_ collectionView: UICollectionView
            , didDeselectItemAt indexPath: IndexPath) {
            if avatarType == .dark {
                UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
                print("dark avatar selected")
            } else {
                UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
                print("light avatar selected")

            }
            self.dismiss(animated: true, completion: nil)
        }
        
    

    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
        
 }
