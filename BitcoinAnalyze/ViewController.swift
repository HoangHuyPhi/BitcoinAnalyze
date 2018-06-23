//
//  ViewController.swift
//  BitcoinAnalyze
//
//  Created by Phi Hoang Huy on 6/21/18.
//  Copyright © 2018 Phi Hoang Huy. All rights reserved.
//

/*import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    var finalURL = ""
    @IBOutlet weak var priceLabel: UITextField!
    @IBOutlet weak var currencyPicker: UIPickerView!
    @IBOutlet weak var changePriceDay: UITextField!
    @IBOutlet weak var changePriceMonth: UITextField!
    @IBOutlet weak var changePriceWeek: UITextField!
    @IBOutlet weak var changePriceDayPer: UITextField!
    @IBOutlet weak var changePriceMonthPer: UITextField!
    @IBOutlet weak var changePriceWeekPer: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currencyPicker.delegate = self
        currencyPicker.dataSource = self
    }
    // Set up the Picker View function
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        finalURL = baseURL + currencyArray[row]
        getBitCoinData(url: finalURL)
    }
    // End
    
    // Get bitcoinData
    func getBitCoinData(url: String)
    {
        Alamofire.request(url, method: .get)
            .responseJSON { response in
                if response.result.isSuccess {
                    print("Sucess! got the bitcoin data")
                    let bitCoinJSON : JSON = JSON(response.result.value!)
                    self.updateBitCoinData(json: bitCoinJSON)
                }
                else {
                    print ("Error: \(String(describing: response.result.error))")
                    self.priceLabel.text = "Connection Issues"
                }
        }
    }
    // End
    
    // Update bitcoinData
    func updateBitCoinData(json: JSON) {
        if let bitcoinResult = json["ask"].double //,
         /*   let changePriceDayBitCoin = json["changes"]["price"]["day"].double,
            let changePriceMonthBitCoin = json["changes"]["price"]["month"].double,
            let changePriceWeekBitCoin = json["changes"]["price"]["week"].double,
            let changePriceDayBitCoinPer = json["changes"]["percent"]["day"].double,
            let changePriceWeekBitCoinPer = json["changes"]["percent"]["week"].double,
            let changePriceMonthBitCoinPer = json["changes"]["percent"]["month"].double */
        {
            priceLabel.text = String(bitcoinResult)
        /*    changePriceDay.text = String(changePriceDayBitCoin)
            changePriceWeek.text = String(changePriceWeekBitCoin)
            changePriceMonth.text = String(changePriceMonthBitCoin)
            changePriceDayPer.text = String(changePriceDayBitCoinPer)
            changePriceMonthPer.text = String(changePriceMonthBitCoinPer)
            changePriceWeekPer.text = String(changePriceWeekBitCoinPer) */
        }
        else {
            priceLabel.text = "Error"
        }
    }
    
    
    // End
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
 */
