//
//  class.dbCharacter.swift
//  DragonBallBook
//
//  Created by midDeveloper on 6.06.2023.
//

import Foundation
import UIKit

enum job: String {
    
    case scienist = "Scienist"
    case fighter = "Fighter"
    case unemployed = "Unemployed"

}

class dbCharacter {
    
    let image : UIImage 
    let name : String
    let job : job
    
    init(name:String,job:job,image:UIImage) {
            
        self.image = image
        self.name = name
        self.job = job
        
    }
    
}
