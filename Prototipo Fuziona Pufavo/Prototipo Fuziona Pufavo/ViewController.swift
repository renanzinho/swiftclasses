//
//  ViewController.swift
//  Prototipo Fuziona Pufavo
//
//  Created by Renan Freitas on 16/04/18.
//  Copyright © 2018 Renan Freitas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var btn: UIButton!
    @IBOutlet var scene: UIView!
    @IBOutlet weak var table: UITableView!
    
    let lines = [
        "firstScene": [
            "Olá jogador",
            "Esse jogo é sobre minha história até então na faculdade",
            "As histórias contadas aqui aconteceram comigo",
            "Ou, talvez, com outras pessoas",
            "Mas isso não as tornam menos reais"
        ]
    ]
    var teste = [String]()
    var i = 0
    
    @IBOutlet weak var alo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tableViewFooter = UIView()
    
        
        table.tableFooterView = tableViewFooter
        table.dataSource = self
        table.delegate = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "firstSceneCell")
        view.addSubview(scene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.table {
//            return self.lines["firstScene"]!.count
            return self.teste.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if tableView == self.firstSceneTable {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstSceneCell", for: indexPath)
//        cell.textLabel?.text = self.lines["firstScene"]![indexPath.row]
        cell.textLabel?.text = self.teste[indexPath.row]
        
        return cell
//        } else {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "firstSceneCell", for: indexPath)
//            return cell
//        }
        
//        return nil
    }

    @IBAction func tap(_ sender: Any) {
        var index = 0
        while i < lines["firstScene"]!.count {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(self.i)) {
                
                self.teste.append(self.lines["firstScene"]![index])
                self.table.beginUpdates()
                self.table.insertRows(at: [IndexPath(row: self.teste.count - 1, section: 0)], with: .automatic)
                self.table.endUpdates()
                index += 1
            }
            self.i += 1
            
        }
        
    }
    
    
}

