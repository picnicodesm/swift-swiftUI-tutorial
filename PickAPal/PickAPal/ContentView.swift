//
//  ContentView.swift
//  PickAPal
//
//  Created by picnic on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    
    var body: some View {
        VStack {
            /* 빈 문자열 대신 단일 공백을 사용하면 텍스트 보기가 항상 화면의 세로 공간을 차지하도록 할 수 있습니다. 텍스트 보기는 콘텐츠가 없을 때 공간을 차지하지 않아 화면의 다른 보기가 이동하게 됩니다. */
            Text(pickedName.isEmpty ? " ": pickedName)
            
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            
            Divider()
            
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            
            Button {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    
                    if shouldRemovePickedName {
                        names.removeAll { name in
                            return (name == randomName)
                        }
                    }
                } else {
                    pickedName = ""
                }
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
