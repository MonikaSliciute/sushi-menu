//
//  ContentView.swift
//  Menu
//
//  Created by Monika Šličiūtė on 03/03/2023.
//

import SwiftUI

struct MenuView: View {
    var menuItems:[Sushi] = [Sushi(name: "Onigiri", price: "1.99", image: "onigiri", vegetarian: true, spicy: false),
                             Sushi(name: "Meguro Sushi", price: "5.99", image: "meguro-sushi", vegetarian: false, spicy: false),
                             Sushi(name: "Tako Sushi", price: "4.99", image: "tako-sushi", vegetarian: false, spicy: false),
                             Sushi(name: "Avocado Maki", price: "2.99", image: "avocado-maki", vegetarian: true, spicy: false),
                             Sushi(name: "Tobiko Spicy Maki", price: "4.99", image: "tobiko-spicy-maki", vegetarian: false, spicy: true),
                             Sushi(name: "Salmon Sushi", price: "4.99", image: "salmon-sushi", vegetarian: false, spicy: false),
                             Sushi(name: "Hamachi Sushi", price: "6.99", image: "hamachi-sushi", vegetarian: false, spicy: false),
                             Sushi(name: "Kani Sushi", price: "3.99", image: "kani-sushi", vegetarian: false, spicy: false),
                             Sushi(name: "Tamago Sushi", price: "3.99", image: "tamago-sushi", vegetarian: true, spicy: false),
                             Sushi(name: "California Roll", price: "3.99", image: "california-roll", vegetarian: true, spicy: true),
                             Sushi(name: "Shrimp Sushi", price: "3.99", image: "shrimp-sushi", vegetarian: false, spicy: false),
                             Sushi(name: "Ikura Sushi", price: "5.99", image: "ikura-sushi", vegetarian: false, spicy: false)]

    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("Sushi Menu")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .leading], 20.0)
                
                List(menuItems, id: \.id) { sushi in
                    HStack{
                        Image(sushi.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80.0, height: 65.0)
                            .cornerRadius(15)
                        VStack(alignment: .leading){
                            Text(sushi.name)
                                .font(.headline)

                            HStack{
                                if(sushi.vegetarian == true){
                                    Image(systemName: "leaf")
                                        .foregroundColor(.green)
                                }
                                if(sushi.spicy == true){
                                    Image(systemName: "flame")
                                        .foregroundColor(.red)
                                }

                            }
                        }.padding(5)
                        Spacer()
                        Text("$" + sushi.price)
                            .font(.headline)
                            .fontWeight(.regular)
                    }
                   
                }.listStyle(.plain)
            }
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
