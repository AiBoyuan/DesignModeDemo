//
//  ViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/6.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var tableView:UITableView!
    var designModeArray:[[String]] = [[String]]()
    var modeDic:[[String:String]] = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "24种设计模式"
        self.view.backgroundColor = UIColor.white
        self.designModeArray = [
            ["单例模式", "简单工厂方法模式", "工厂方法模式", "抽象工厂模式", "构建者模式", "原型模式"],
            ["适配器模式", "装饰器模式", "代理模式", "外观模式", "桥接模式", "组合模式",                                                                                                                                                                                             "享元模式"],
            ["策略模式", "模板模式", "观察者模式", "中介者模式", "迭代器模式", "责任链模式",
            "命令模式","备忘录模式","状态模式","访问者模式","解释器模式"]]

        self.modeDic = [
            ["单例模式":"SingletonViewController",
             "简单工厂方法模式":"SimpleProductViewController",
             "工厂方法模式":"FactoryPatternViewController",
             "抽象工厂模式":"AbstractFactoryPatternViewController",
             "建造者模式":"BuilderViewController",
             "原型模式":"PrototypeViewController"],
            
            ["适配器模式":"AdapterViewController",
             "装饰器模式":"DecoratorViewController",
             "代理模式":"ProxyViewController",
             "外观模式":"FacedeViewController",
             "桥接模式":"BridgeViewController",
             "组合模式":"CompositeViewController",
             "享元模式":"FlyweightViewController"],
            
            ["策略模式":"StrategyViewController",
             "模板模式":"TemplateViewController",
             "观察者模式":"ObserverViewController",
             "中介者模式":"MediatorViewController",
             "迭代器模式":"IteratorViewController",
             "责任链模式":"ResponsibilityViewController",
             "命令模式":"CommandViewController",
             "备忘录模式":"MementoViewController",
             "状态模式":"StateViewController",
             "访问者模式":"VisitorViewController",
             "解释器模式":"InterpreterViewController"]
        ]
        
        self.tableView = UITableView.init(frame: self.view.bounds, style: .grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.tableFooterView = UIView()
        self.view.addSubview(self.tableView)
    }
    
    //MARK:- UITableViewDataSource & UITableViewDelegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.designModeArray.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let titleLable = UILabel()

        if section == 0 {
            titleLable.text = "创建型模式"
        } else if section == 1 {
            titleLable.text = "结构型模式"
        } else if section == 2 {
            titleLable.text = "行为型模式"
        }
        return titleLable
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {        
        return self.designModeArray[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
            cell?.selectionStyle = .none
        }
        cell?.textLabel?.text = self.designModeArray[indexPath.section][indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let type = designModeArray[indexPath.section][indexPath.row]
        print("\n=================设计模式：\(type)=================\n")

        let vcName:String = self.modeDic[indexPath.section][type]!

        /// Swift 通过字符串创建类
        /// 方式：先获得命名空间,拼接"命名空间"+"."+"对应的字符串"
        
        /// 1、解包
        let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"]
        guard let ns = nameSpace as? String else{
            return
        }
        /// 2.动态获取的命名空间是不包含"."的, 所以需要我们自己手动拼接, 类型依然是可以选的.将AnyClass类型转换为你想要创建的类型
        let controllerName: AnyClass? = NSClassFromString(ns + "." + vcName)
        guard let typeClass = controllerName as? UIViewController.Type else{
            return
        }
        //通过Class创建对象
        let subViewController = typeClass.init()
        
        subViewController.title = type
        subViewController.view.backgroundColor = UIColor.white
        self.navigationController?.pushViewController(subViewController, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

