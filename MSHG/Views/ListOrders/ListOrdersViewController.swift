//
//  ListOrdersViewController.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 27/03/2022.
//

import UIKit

class ListOrdersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
        .init(id: "id", name: "KOSS", dish: .init(id: "id1", name: "KOss", description: "great", image: "https: //picsum.photos/100/200", calories: 100)),
        .init(id: "id", name: "KOSS2", dish: .init(id: "id1", name: "KOss2", description: "great", image: "https: //picsum.photos/100/200", calories: 100)),
        .init(id: "id", name: "KOSS3", dish: .init(id: "id1", name: "KOss3", description: "great", image: "https: //picsum.photos/100/200", calories: 100)),
        .init(id: "id", name: "KOSS4", dish: .init(id: "id1", name: "KOss4", description: "great", image: "https: //picsum.photos/100/200", calories: 100)),
        .init(id: "id", name: "KOSS5", dish: .init(id: "id1", name: "KOss5", description: "great", image: "https: //picsum.photos/100/200", calories: 100))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registercell()

    }
    private func registercell() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}
extension ListOrdersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
