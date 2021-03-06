//
//  MenuOpcoesAlunos.swift
//  Agenda
//
//  Created by Cristiane Goncalves Uliana on 23/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

enum MenuActionSheetAluno {
    case sms
    case ligacao
    case waze
    case mapa
    case abrirPaginaWeb
}


class MenuOpcoesAlunos: NSObject {
    
    func configuraMenuDeOpcoesDoAluno(completion: @escaping(_ opcao:MenuActionSheetAluno) -> Void) -> UIAlertController {
        let menu = UIAlertController(title: "Atenção", message: "Escolha uma das opções abaixo", preferredStyle: .actionSheet)
        
        let sms = UIAlertAction(title: "enviar SMS", style: .default) { (acao) in
            completion(.sms)
        }
        
        let ligacao = UIAlertAction(title: "ligar", style: .default) { (acao) in
            completion(.ligacao)
        }
        
        let waze = UIAlertAction(title: "localizar no waze", style: .default) { (acao) in
            completion(.waze)
        }
        
        let mapa = UIAlertAction(title: "localizar no mapa", style: .default) { (acao) in
            completion(.mapa)
        }
        
        let abrirPaginaWeb = UIAlertAction(title: "abrir página", style: .default) { (acao) in
            completion(.abrirPaginaWeb)
        }
        
        let cancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        
        menu.addAction(sms)
        menu.addAction(ligacao)
        menu.addAction(waze)
        menu.addAction(mapa)
        menu.addAction(abrirPaginaWeb)
        menu.addAction(cancelar)
        
        return menu
        
    }
    
}
