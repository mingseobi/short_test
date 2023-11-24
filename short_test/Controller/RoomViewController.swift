//
//  RoomViewController.swift
//  short_test
//
//  Created by 김민섭 on 2023/11/25.
//

import UIKit

class RoomViewController: UIViewController {
    
    let homeTitle: UILabel = {
        let label = UILabel()
        label.text = "로고 !!!!"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("방 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10 // 네모난 버튼을 만들기 위한 설정
        return button
    }()
    
    let editButton: UIButton = {
        let button = UIButton()
        button.setTitle("방 입장하기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10 // 네모난 버튼을 만들기 위한 설정
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black // 시스템 배경색 설정
        
        view.addSubview(homeTitle)
        view.addSubview(addButton)
        view.addSubview(editButton)
        addButton.addTarget(self, action: #selector(add), for: .touchUpInside)
        editButton.addTarget(self, action: #selector(editData), for: .touchUpInside)
        addConstraints()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - 제약 조건 설정하기
    func addConstraints() {
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            addButton.widthAnchor.constraint(equalToConstant: 100), // 버튼의 너비를 조절
            addButton.heightAnchor.constraint(equalToConstant: 100), // 버튼의 높이를 조절
            
            editButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            editButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            editButton.widthAnchor.constraint(equalToConstant: 100), // 버튼의 너비를 조절
            editButton.heightAnchor.constraint(equalToConstant: 100), // 버튼의 높이를 조절
            
            homeTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            homeTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // MARK: - add 버튼 클릭 시 실행될 함수 : 텍스트필드, alert, realm.add
    @objc func add() {
        print("add button Pressed")
    }
    
    // edit 버튼을 눌렀을 때 실행되는 함수
    @objc func editData() {
        print("edit button Pressed")
    }
}
