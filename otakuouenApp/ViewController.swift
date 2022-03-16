//
//  ViewController.swift
//  otakuouenApp
//
//  Created by cl_umeda_004 on 2022/03/09.
//


import UIKit
import AVFoundation



class ViewController: UIViewController,UITableViewDataSource {
    
    //StoryBoardで扱う TableViewを宣言
    
    @IBOutlet var table: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //テーブルビューのデータソースメソッドはviewcontrollerクラスに書くよ、と言う設定
        table.dataSource = self
       
        
    }
    
    
    //セルの数を設定
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 10
        
        //セルの数をsongNameArrayの数にする
        //return songNameArray.count
    }
    
    //ID付きのセルを取得して、セル付属textLabelに「テスト」と表示させてみる
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
            
        cell?.textLabel?.text = "てすと"

        //取得した商品APIを入れる
        // 商品の名前（商品コード）　値段　　（入れられたら画像も）
        
        return cell!

}
}

