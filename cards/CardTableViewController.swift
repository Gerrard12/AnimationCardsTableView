//
//  CardTableViewController.swift
//  cards
//
//  Created by gerardo on 21/02/18.
//  Copyright © 2018 Orbis. All rights reserved.
//

import UIKit

class CardTableViewController: UITableViewController {

    let nameImages = ["elefante", "oso", "panda", "perro", "tigre"]
    let titlesCards = ["Elefante", "Oso", "Panda", "Perro", "Tigre"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CardsCell",bundle: nil), forCellReuseIdentifier: "CardsCell")
    }

    override func viewWillAppear(_ animated: Bool) {
        animateTable()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = Bundle.main.loadNibNamed("CardsCell", owner: self, options: nil)?.first as? CardsCell else {
            fatalError("No se pudo cargar el nib")
        }
        cell.imageCard.image = UIImage(named: nameImages[indexPath.row])
        cell.labelCard.text = titlesCards[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }

    func animateTable() {
        tableView.reloadData()
        let cells = tableView.visibleCells
        let tableHeight: CGFloat = tableView.bounds.size.height
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }
        var index = 0
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animate(withDuration: 3.0, delay: 0.50 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .transitionFlipFromBottom, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)
            
            index += 1
        }
    }

}
