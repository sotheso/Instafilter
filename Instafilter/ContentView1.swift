//
//  ContentView.swift
//  Instafilter
//
//  Created by Sothesom on 10/12/1402.
//
// Hudson: Instafilter SwiftUI Tutorial

// GPT : Instafilter در SwiftUI یک کتابخانه و ابزار است که برای ایجاد فیلترهای تصویری و ویرایش تصاویر در برنامه‌های اپلیکیشن SwiftUI استفاده می‌شود. این ابزار به شما امکان می‌دهد تا با استفاده از SwiftUI ویژگی‌های گوناگونی از جمله تصاویر، فیلترها، ویرایش تصاویر و افکت‌های ویژه را به تصاویر اضافه کنید. از Instafilter می‌توان برای ایجاد اپلیکیشن‌هایی مانند ویرایشگرهای تصویر، اپلیکیشن‌های مبتنی بر شبکه‌های اجتماعی و حتی اپلیکیشن‌های بازی استفاده کرد.

import SwiftUI

struct ContentView1: View {
    
    @State private var blurAmount = 0.0 {
        didSet{
            print("New value is \(blurAmount)")
        }
    }
    
    var body: some View {
        VStack {
            Text("Hello")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
            // didSet حالت اسلایدر رو حساب نمیکنه که باید از یه ویرایشگر دیگه استفاده کرد
                .onChange(of: blurAmount){ newVale in
                    print("New value is \(newVale)")
                    // میتونی این onChange  رو بیرون VStack بذاری
                    
                }
            
            Button("Random blur"){
                blurAmount = Double.random(in: 0...20)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView1()
}
