//
//  PartisipantsNoViewController.swift
//  TabbedFC
//
//  Created by 竹内将大 on 2017/03/23.
//  Copyright © 2017年 feelingCouplePBL. All rights reserved.
//

import UIKit

class PartisipantsNoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var partisipantsNo: UIPickerView!
    
    let compos = [["1人", "2人", "3人", "4人"], ["1人", "2人", "3人", "4人"]]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return compos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        let compo = compos[component]
        return compo.count
    }
    
    func pickerView(_ pickerView: UIPickerView, withForComponent component: Int) -> CGFloat{
        if component == 0{
            return 100
        } else {
            return 100
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let item = compos[component][row]
        return item
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let item = compos[component][row]
        print(item)
        
        let row1 = pickerView.selectedRow(inComponent: 0)
        let row2 = pickerView.selectedRow(inComponent: 1)
        print(row1, row2)
        
        let item1 = self.pickerView(pickerView, titleForRow: row1, forComponent: 0)
        let item2 = self.pickerView(pickerView, titleForRow: row2, forComponent: 1)
        print(item1, item2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partisipantsNo.delegate = self
        partisipantsNo.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}