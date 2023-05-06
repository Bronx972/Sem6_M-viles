//
//  ViewController.swift
//  Sem6-b-Ricardo
//
//  Created by Alumno on 6/05/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let movies:[Movie] = [
        Movie(name: "Boku no Hero" ,image:"img1"),
        Movie(name: "Spiderman" ,image:"img4"),
        Movie(name: "Zootopia" ,image:"movie1"),
        Movie(name: "The Witcher" ,image:"movie3")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}
extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! ItemTableViewCell
        
        cell.movieImage.image = UIImage(named: movies[indexPath.row].image)
        cell.movieLabel.text = movies[indexPath.row].name
        
        return cell
    }
}

