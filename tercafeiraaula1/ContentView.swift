//
//  ContentView.swift
//  tercafeiraaula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var anos: String = ""
    @State private var idadeCanina: String = ""

    func calcularIdadeCanina(anos:Int) -> Void {
        let idade = anos * 7
        idadeCanina = "A idade canina é: \(idade) anos."
    }
    func tryParse(){
        
    }
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de idade canina!")
            TextField(
                "User name (email address)",
                text: $anos
            )
            Button(action: {
                if let anosInt = Int(anos) {
                    calcularIdadeCanina(anos: anosInt)
                } else {
                    idadeCanina = "Por favor, insira um número válido."
                }
            }) {
                Text("Calcular")
            }
            Text(idadeCanina)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
