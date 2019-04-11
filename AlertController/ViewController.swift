//
//  ViewController.swift
//  AlertController
//
//  Created by D7703_07 on 2019. 4. 11..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var returnLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func camBtn(_ sender: Any) {
        let myAlertControlelr = UIAlertController(title: "Camera", message: "Take a Picture", preferredStyle: .actionSheet)
        
        //let camAction = UIAlertAction(title: "사진촬영", style: .default, handler: nil)
        
        let camAction = UIAlertAction(title: "사진촬영", style: .default, handler: {(camAction:UIAlertAction) ->Void in
            self.returnLbl.text = "사진촬영을 시작합니다."
            self.view.backgroundColor = UIColor.yellow
                }
            )
        
        let libAction = UIAlertAction(title: "사진 라이브러리", style: .default, handler: { (libAction:UIAlertAction) ->Void in
            self.returnLbl.text = "사진 라이브러리 가기"
            self.view.backgroundColor = UIColor.green
         })
        
        let saveAction = UIAlertAction(title: "사진 저장", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        
        myAlertControlelr.addAction(camAction)
        myAlertControlelr.addAction(libAction)
        myAlertControlelr.addAction(saveAction)
        myAlertControlelr.addAction(cancelAction)
        myAlertControlelr.addAction(deleteAction)
        
        self.present(myAlertControlelr, animated: true, completion: nil)
    }
}

