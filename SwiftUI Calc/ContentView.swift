import SwiftUI
struct ContentView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var result: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hesap Makinesi")
                .font(.largeTitle)
                .bold()
            
            TextField("Birinci sayı", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            TextField("İkinci sayı", text: $number2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            HStack(spacing: 10) {
                Button(action: addNumbers) {
                    Text("+")
                        .frame(width: 50, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: subtractNumbers) {
                    Text("-")
                        .frame(width: 50, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: multiplyNumbers) {
                    Text("x")
                        .frame(width: 50, height: 50)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: divideNumbers) {
                    Text("/")
                        .frame(width: 50, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
            Text("Sonuç: \(result)")
                .font(.title)
                .padding()
            
            Spacer()
        }
        .padding()
    }
    
    
    func addNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2) {
            result = "\(num1 + num2)"
        } else {
            result = "Geçersiz giriş"
        }
    }
    
    func subtractNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2) {
            result = "\(num1 - num2)"
        } else {
            result = "Geçersiz giriş"
        }
    }
    
    func multiplyNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2) {
            result = "\(num1 * num2)"
        } else {
            result = "Geçersiz giriş"
        }
    }
    
    func divideNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2), num2 != 0 {
            result = "\(num1 / num2)"
        } else if let _ = Double(number1), let _ = Double(number2), Double(number2) == 0 {
            result = "0'a bölünemez"
        } else {
            result = "Geçersiz giriş"
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
