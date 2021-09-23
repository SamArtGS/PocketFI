//
//  RegexAttributedLabel.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit

class CustomUILabel: UILabel{
    
    var banderin = false
    
    override var text: String? {
        didSet{
            guard let textoDestapado = text else { return }
            if banderin{
                colocarFormatosConRegex(texto: textoDestapado, interlineado: 2.5)
            }else{
                colocarFormatosConRegex(texto: textoDestapado)
            }
            
        }
    }

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func colocarFormatosConRegex(texto: String, interlineado:Float = 0){
        
        let formatos: [Formato] = [
            Formato(simbolo: "*", color: textColor, fuente: .Roboto(.bold, size: font.pointSize)),
            Formato(simbolo: "#", color: textColor, fuente: .Roboto(.bold, size: font.pointSize+10)),
        ]
        
        var textoSinSimbolos: String = texto
        
        for formato in formatos{
            textoSinSimbolos = textoSinSimbolos.replacingOccurrences(of: "\\\(formato.simbolo)", with: "", options: .regularExpression)
        }
        
        let textoFinal = NSMutableAttributedString(string: textoSinSimbolos)
        
        var posicionesColor:[PosicionRegexColor] = []
        
        for formato in formatos{
            let regex = try? NSRegularExpression(pattern: formato.regex, options: [])
            let range = NSRange(location: 0, length: texto.utf16.count)
            let matches = regex!.matches(in: texto, options: [], range: range)
            let ranges = matches.map {$0.range}
            
            for rango in ranges {
                posicionesColor.append(PosicionRegexColor(formato: formato, localizacion: rango.location, longitud: rango.length))
            }
        }
        
        posicionesColor.sort(by: {$0.localizacion < $1.localizacion})
        
        for num in 0..<posicionesColor.count{
            textoFinal.addAttribute(.foregroundColor, value: posicionesColor[num].formato.color,
                                    range: NSRange(location: posicionesColor[num].localizacion-(num*2),
                                                   length: posicionesColor[num].longitud-2
                                        ))
            textoFinal.addAttribute(.font, value: posicionesColor[num].formato.fuente,
                                        range: NSRange(location: posicionesColor[num].localizacion-(num*2),
                                                       length: posicionesColor[num].longitud-2
                                        ))
        }
        let style = NSMutableParagraphStyle()
        style.lineSpacing = CGFloat(interlineado)
        style.alignment = self.textAlignment

        textoFinal.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSRange(location: 0, length: textoSinSimbolos.count))
        
        
        attributedText = textoFinal
        banderin = true
    }
    
}
