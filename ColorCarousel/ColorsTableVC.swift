//
//  ColorsTableVC.swift
//  ColorCarousel
//
//  Created by Cesar Lopez on 10/16/22.
//

import UIKit

class ColorsTableVC: UIViewController {

    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadColors()
    }
    
    func loadColors() {
        for _ in 0..<50{
            colors.append(UIColor.random())
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailVC
        destinationVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color: UIColor = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
    
}
