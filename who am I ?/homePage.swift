//
//  homePage.swift
//  who am I ?
//
//  Created by GuneetSingh Lamba on 2020-02-03.
//  Copyright © 2020 GuneetSingh Lamba. All rights reserved.
//
// Version: 1.0
import SwiftUI

struct homePage: View {
     @State private var experienceSheet:Bool = false
    @State private var  skillsSheet:Bool = false
    @State private var  educationSheet:Bool = false


    init() {
        // To remove only extra separators below the list:
        UITableView.appearance().tableFooterView = UIView()

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    var body: some View {

     
        ZStack{
          
              
            Color.blue
            .edgesIgnoringSafeArea(.all)
  
            List {
                ZStack{
            Rectangle()
                .fill(Color.white)
                .frame(width: 300, height: 150, alignment: .center)
                .cornerRadius(6.0)
                .shadow(color: Color.init(red: 77/250, green: 77/250, blue: 77/250), radius: 6, x: 3, y: 3)
                .onTapGesture {
                    self.experienceSheet.toggle()
                    }  .sheet(isPresented: $experienceSheet) {
                       experienceView()
                }
                Text("Experience")
                .font(.title)
                .bold()
                .offset(x:-60,y: -50)
                    .onTapGesture {
                        print("Skills")
                    }
        Rectangle()
            .fill(Color.green)
            .frame(width:200,height:10)
            .cornerRadius(2.0)
              .offset(x:-30,y: -20)
                    
        Rectangle()
                  .fill(Color.green)
                  .frame(width:150,height:10)
                  .cornerRadius(2.0)
                    .offset(x:-55,y: -1)
        Rectangle()
                         .fill(Color.green)
                         .frame(width:190,height:10)
                         .cornerRadius(2.0)
                           .offset(x:-35,y: 20)
                  
        }
                
                
         ZStack{
     Rectangle()
         .fill(Color.white)
         .frame(width: 300, height: 150, alignment: .center)
         .cornerRadius(6.0)
        .shadow(color: Color.init(red: 77/250, green: 77/250, blue: 77/250), radius: 3, x: 3, y: 3)
           .onTapGesture {
                              self.skillsSheet.toggle()
                              }  .sheet(isPresented: $skillsSheet) {
                                 skillsView()
                          }
         Text("Skills")
         .font(.title)
         .bold()
          .offset(x:-100,y: -50)
            .onTapGesture {
                print("Skills")
            }
//
            
            Rectangle()
                     .fill(Color.purple)
                     .frame(width:200,height:10)
                     .cornerRadius(2.0)
                       .offset(x:-30,y: -20)
                             
                 Rectangle()
                           .fill(Color.purple)
                           .frame(width:150,height:10)
                           .cornerRadius(2.0)
                          .offset(x:-55,y: 0)
                 Rectangle()
                    .fill(Color.purple)
                                   .frame(width:150,height:10)
                     .cornerRadius(2.0)
                               .offset(x:-55,y: 20)
    }
                
        ZStack{
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 300, height: 150, alignment: .center)
                    .cornerRadius(6.0)
                    .shadow(color: Color.init(red: 77/250, green: 77/250, blue: 77/250), radius: 3, x: 3, y: 3)
           .onTapGesture {
                                        self.educationSheet.toggle()
                                        }  .sheet(isPresented: $educationSheet) {
                                        educationView()
                                    }
                    Text("Education")
                      .font(.title)
                    .bold()
                      .offset(x:-70,y: -50)
            .onTapGesture {
                print("Education")
            }
            Rectangle()
                    .fill(Color.yellow)
                    .frame(width:200,height:10)
                    .cornerRadius(2.0)
                      .offset(x:-30,y: -20)
                            
                Rectangle()
                          .fill(Color.yellow)
                          .frame(width:150,height:10)
                          .cornerRadius(2.0)
                            .offset(x:-55,y: -1)
                Rectangle()
                                 .fill(Color.yellow)
                                 .frame(width:190,height:10)
                                 .cornerRadius(2.0)
                                   .offset(x:-35,y: 20)
                    }
        }
            .offset(x: 0, y: 200)
Image("exp").resizable().scaledToFill().clipped().frame(width: 100, height: 90).clipShape(Circle())
                .offset(x:-100,y:-280)
            Text("Guneet").font(.title)
            .bold()
            .offset(x:20,y:-290)
            .foregroundColor(Color.white)
            Text("Mobile Application Developer")
            .font(.subheadline)
            .foregroundColor(Color.white)
            .bold()
            .offset(x:40,y:-260)
}
}
}

struct experienceView: View
{
    var body: some View
    {
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
        VStack
        {
         Text("Experience")
        .font(.title)
        .bold()
        .foregroundColor(Color.white)
        .offset(x:0,y:-80)
            Image(systemName: "briefcase.fill").resizable().frame(width: 40, height: 40, alignment: .center).foregroundColor(Color.yellow)
        .offset(x:0,y:-70)
        VStack{
        Text("Stablehacks")
        .font(.headline)
        .bold()
        .foregroundColor(Color.black)
        .offset(x: -5,y:-50)
        .padding(.leading, -140)
        Text("Mobile Application Developer-Intern")
        .font(.headline)
        .bold()
        .foregroundColor(Color.white)
        .offset(x: -5,y:-40)
        Text("May 2019 - August 2019")
        .font(.subheadline)
        .foregroundColor(Color.white)
        .bold()
        .offset(x: -5,y:-30)
        .padding(.leading, -110)
                Text("Developed PWA using HTML5, CSS, Angular Typescript\nServer-Side  development using IBM loopback, nodeJS, MySQL\n QA using selenium, postman, JMeter and protractor\n UI/UX prototyping  using Adobe XD")
               .font(.subheadline)
               .foregroundColor(Color.white)
               .bold()
               .offset(x: 0,y:-30)
               .padding()
               Text("DistApps")
               .font(.headline)
               .bold()
               .offset(x: -10)
               .padding(.leading, -140)
               .foregroundColor(Color.black)
             Text("FullStack Developer")
             .font(.subheadline)
              .foregroundColor(Color.white)
             .bold()
             .offset(x: -7,y:10)
             .padding(.leading, -140)
               Text("September 2019 - Present")
               .font(.subheadline)
                .foregroundColor(Color.white)
               .bold()
                .offset(x: 7,y:20)
             .padding(.leading, -120)
             Text("Developed PWA using HTML5, CSS, Angular Typescript\nServer-Side  development using IBM loopback, nodeJS, MySQL\nQA using selenium, postman, JMeter and protractor\nUI/UX prototyping using Adobe XD")
            .font(.subheadline)
            .foregroundColor(Color.white)
            .bold()
            .offset(x: 0,y:10)
            .padding()
            
    }
        }
    }
}

   }
struct skillsView: View
{
    var body: some View
    {
        ZStack
        {
         Color.purple
        .edgesIgnoringSafeArea(.all)
        VStack
               {
               Text("Skills")
               .font(.title)
               .bold()
               .offset(x:0,y:-10)
                Image(systemName: "paintbrush.fill").resizable().frame(width: 40, height: 40, alignment: .center).foregroundColor(Color.green)
                      .offset(x:0,y:5)
                Text("• Languages: C, C++, Java, Swift, HTML, CSS, JavaScript, PHP\n• IDE: XCode, Android Studio, Visual Studio, Eclipse, Unity\n• Database: Firebase, MongoDB, SQLite, MySQL, Core Data\n• API Development and Testing: Postman and SoapUI\n•Dependency Managers: Cocoa pods, Gradle\n•Frameworks: Cordova, Specter CSS, Materialize CSS, Bootstrap, Alamo fire, Cocoa Touch, AV Foundation, Web Kit, Scene Kit, Map Kit, Sprite Kit, Media Library, UI Kit, JUnit, Selenium, Scrum, Kanban.\n• SDLC Methods: Agile, Waterfall, Iterative\n•Model Design: UML, Data Flow Diagrams, Flowcharts\n•MS Suite: MS Word, MS Excel, MS PowerPoint\n• Code Management Tools: GitHub, Bitbucket\n•Machine Learning: IBM Watson Studio, CoreML, Google CloudAI\n• Certifications: C++, Java")
                .bold()
                .foregroundColor(Color.white)
                .offset(x:0,y:10)
                .padding()
                
                
               
               }
        }
    }
}
struct educationView: View
{
    var body: some View
    {
        ZStack{
            Color.yellow
            .edgesIgnoringSafeArea(.all)
            VStack
               {
               Text("Education")
               .font(.title)
               .bold()
               .offset(x:0,y:-150)
                Image(systemName: "book.fill").resizable().frame(width: 40, height: 40, alignment: .center).foregroundColor(Color.pink)
                    .offset(x:0,y:-130)
                Text("• Mobile Application Design and Development\nLambton College, Toronto, January 2018-2019\nGratuated with 3.6 overall GPA\n\n\n• Bachelor’s in Computer Science and Engineering\nChandigarh University, India August 2013-September 2017\nGratuated with 3.6 overall GPA")
                .bold()
                .offset(x:0,y:-110)
                .padding()
               }
    }
}
}





struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
