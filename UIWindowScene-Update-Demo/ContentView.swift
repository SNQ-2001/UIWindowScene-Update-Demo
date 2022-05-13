//
//  ContentView.swift
//  UIWindowScene-Update-Demo
//
//  Created by TAISHIN MIYAMOTO on 2022/05/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
            Button("iOS13以前") {
                alert1()
            }

            Button("iOS13以降") {
                alert2()
            }

            Button("iOS15以降") {
                alert3()
            }
        }
    }
    func alert1() {
        let alert = UIAlertController(title: "アラート", message: "iOS13以前", preferredStyle: .alert)
        let Action: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction!) -> Void in })
        alert.addAction(Action)
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    func alert2() {
        let alert = UIAlertController(title: "アラート", message: "iOS13以降", preferredStyle: .alert)
        let Action: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction!) -> Void in })
        alert.addAction(Action)
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    func alert3() {
        let alert = UIAlertController(title: "アラート", message: "iOS15以降", preferredStyle: .alert)
        let Action: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction!) -> Void in })
        alert.addAction(Action)
        let WindowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        WindowScene?.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}
