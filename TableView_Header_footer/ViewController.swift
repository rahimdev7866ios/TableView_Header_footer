//
//  ViewController.swift
//  TableView_Header_footer
//
//  Created by shaik Arshad on 10/09/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
var data = [["one","two","three","four","sizteen"],["banana","apple","Custoer"],["cricket","resource"]]
var headerTitle = ["First","second","Third"]

    @IBOutlet weak var Table1:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Table1.delegate = self
        Table1.dataSource = self
        
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height:200))
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 150))
        
        headerView.backgroundColor = .blue
        footerView.backgroundColor = .cyan
        
        Table1.tableHeaderView = headerView
        Table1.tableFooterView = footerView
    }
 
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Table1.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        cell.backgroundColor = .red
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Table1.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return headerTitle[section]
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
