//
//  MainViewController.swift
//  MyPlaces#5
//
//  Created by Георгий Гречин on 11.11.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restuarnatNames = [
        "Жопа2 Heroes", "Kitchen", "Bonsai", "Дастархан", "Индокитай",
        "X.O", "Балкан Гриль", "Вкусные истории", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Love&Life", "Классик", "Шок", "Бочка"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restuarnatNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = restuarnatNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: restuarnatNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
    

     // MARK: - Table View Delegate
     
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
     


    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
