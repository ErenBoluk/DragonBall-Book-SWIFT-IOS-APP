//
//  ViewController.swift
//  DragonBallBook
//
//  Created by midDeveloper on 6.06.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet weak var dbView: UITableView!
    
    var characters = [dbCharacter]()
    var chosenCharacter : dbCharacter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dbView.dataSource = self
        dbView.delegate = self
        
        characters = [
            dbCharacter(name: "Son Goku", job: .fighter, image: UIImage(named: "goku.jpeg")!),
            dbCharacter(name: "Vegeta", job: .fighter, image: UIImage(named: "vegeta.jpeg")!),
            dbCharacter(name: "Gohan", job: .fighter, image: UIImage(named: "gohan.jpeg")!),
            dbCharacter(name: "Chi Chi", job: .unemployed, image: UIImage(named: "chichi.jpeg")!),
            dbCharacter(name: "Bulma", job: .scienist, image: UIImage(named: "bulma.jpeg")!)
        ]


        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = characters[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCharacter = characters[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            
            self.characters.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destCV = segue.destination as! detailVC
            destCV.selectedChracter = chosenCharacter
        }
    }
    
    

}

