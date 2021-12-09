//
//  ContentView.swift
//  youtubeUIanbya
//
//  Created by Mufti Ramdhani on 09/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack{
        TabView{
          Home()
            .tabItem{
              Image(systemName: "house.fill")
              Text("Beranda")
            }
          
          Home()
            .tabItem{
              Image(systemName: "paperplane.fill")
              Text("Eksplorasi")
            }
          
          Home()
            .tabItem{
              Image(systemName: "tray.fill")
              Text("Subscription")
            }
          
          Home()
            .tabItem{
              Image(systemName: "envelope.fill")
              Text("Kotak Masuk")
            }
          
          Home()
            .tabItem{
              Image(systemName: "play.rectangle.fill")
              Text("Koleksi")
            }
        }
      .accentColor(.red)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
  var body: some View{
    NavigationView{
     konten()
      .navigationBarItems(
        leading:
          HStack{
            Button(action: {print("Hello Button")}){
              Image("youtube")
                .renderingMode(.original)
                .resizable()
                .frame(width: 90, height: 20)
            }
          },
          trailing:
            HStack(spacing:30){
              Button(action: {print("Hello Print")}){
                  Image(systemName: "tray.full")
                    .foregroundColor(Color.secondary)
              }
              
              Button(action: {print("Hello Print")}){
                  Image(systemName: "video.fill")
                    .foregroundColor(Color.secondary)
              }
              
              Button(action: {print("Hello Print")}){
                  Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.secondary)
              }
              
              Button(action: {print("Hello Print")}){
                  Image("profile")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
              }
            }
      )
      .navigationBarTitle("", displayMode: .inline)
    }.navigationViewStyle(StackNavigationViewStyle())
  }
}

struct konten : View {
  var body: some View{
    List{
       CellKontent(imageKontent: "content1", profileKontent: "profile", judul: "Tutorial IOS SwiftUI #1", deskripsi: "Di tonton 300x - 1 jam yang lalu", durasi: "10:100")
      
      CellKontent(imageKontent: "content2", profileKontent: "profile", judul: "Tutorial IOS SwiftUI #2", deskripsi: "Di tonton 300x - 1 jam yang lalu", durasi: "15:100")
      
      CellKontent(imageKontent: "content2", profileKontent: "profile", judul: "Tutorial IOS SwiftUI #2", deskripsi: "Di tonton 300x - 1 jam yang lalu", durasi: "15:100")
    }
  }
}


//komponent untuk cell

struct CellKontent : View {
  
  var imageKontent: String
  var profileKontent : String
  var judul : String
  var deskripsi : String
  var durasi : String
  
  var body: some View {
    //kontent 1
    VStack{
      ZStack(alignment: .bottomTrailing){
        Image(imageKontent)
          .resizable()
          .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        
        Text(durasi)
          .padding(.all, 5)
          .foregroundColor(Color.white)
          .font(.caption)
          .background(Color.black)
          .cornerRadius(5)
          .padding(.trailing, 5)
          .padding(.bottom, 5)
      }
      
      HStack(spacing:20){
        Image(profileKontent)
          .resizable()
          .frame(width: 30, height: 30)
          .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
        VStack(alignment: .leading){
          Text(judul).font(.headline)
          HStack{
            Text(deskripsi).font(.caption)
          }
        }
        Spacer()
        Image(systemName: "list.bullet")
      }
    }
  }
  
}

