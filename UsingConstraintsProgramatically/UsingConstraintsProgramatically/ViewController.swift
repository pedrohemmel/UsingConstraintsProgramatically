//
//  ViewController.swift
//  UsingConstraintsProgramatically
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 19/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Criação da primeira view
    private let myView: UIView = {
        let myView = UIView()
        //A propriedade translatesAutoresizingMaskIntoConstraints  permite que façamos mudanças no tamanho da view
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()
    
    //Criação da segunda view
    private let secondView: UIView = {
        let myView = UIView()
        //A propriedade translatesAutoresizingMaskIntoConstraints  permite que façamos mudanças no tamanho da view
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .systemRed
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Adiciona myView dentro da view padrão
        view.addSubview(myView)
        //Adiciona secondView dentro da myView
        myView.addSubview(secondView)
        addConstraints()
    }
    
    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        //Adicionar constraints
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        //O tamanho do bloco vermelho vai ser a metado do bloco azul, isso acontece porque o tamanho é igual ao tamanho do myView multiplicado por 0.5
        constraints.append(secondView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5))
        constraints.append(secondView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5))
        constraints.append(secondView.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
        constraints.append(secondView.centerXAnchor.constraint(equalTo: myView.centerXAnchor))
        
        
        //ativar
        NSLayoutConstraint.activate(constraints)
    }


}

