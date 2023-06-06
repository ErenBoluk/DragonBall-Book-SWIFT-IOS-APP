//
//  detailVC.swift
//  DragonBallBook
//
//  Created by midDeveloper on 6.06.2023.
//

import UIKit

class detailVC: UIViewController {

    @IBOutlet weak var characterImage: UIImageView!
    
    @IBOutlet weak var characterName: UILabel!
    
    @IBOutlet weak var characterJob: UILabel!
    var selectedChracter : dbCharacter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        characterName.text = selectedChracter?.name
        characterJob.text = selectedChracter?.job.rawValue
        characterImage.image = selectedChracter?.image
        
    }
    
}
