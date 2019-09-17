//
//  ViewController.swift
//  (SA)Colors
//
//  Created by Şeyma Gılbaz on 17.09.2019.
//  Copyright © 2019 Şeyma Gılbaz. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var colors = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorColor = .clear
        createRandomColors()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.backgroundColor = colors[Int.random(in: 0...49)]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailViewController else {return}
        detailVC.selectedColor =  tableView.cellForRow(at: indexPath)?.backgroundColor
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func createRandomColors(){
        for _ in 0...49{
            let color = UIColor(displayP3Red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
            colors.append(color)
        }
    }
    
}

