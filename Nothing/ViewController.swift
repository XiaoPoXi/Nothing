//
//  ViewController.swift
//  Nothing
//
//  Created by xiaoxi on 2020/9/7.
//  Copyright © 2020 xiaoxi. All rights reserved.
//

import UIKit


//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        self.view.backgroundColor = .green
//        // Do any additional setup after loading the view.
//
//        forinxunhuan()
//        forinbianlizididian()
//        print(getName(name: "循环遍历"))
//
//        ifyuju()
//        print(getName(name: "if语句"))
//
//        switchyuju()
//        print(getName(name: "switch语句"))
//
//        print(greet(person: "哈哈", alreadyGreeted: true))
//
//    }
//
//
//
//    //    2020-9-7 学习内容
//    // MARK: - ---------遍历------------
//
//    //    for in 循环遍历字符串数组
//    func forinxunhuan() {
//        let names = ["Anna", "Alex", "Brian", "Jack"]
//        for name in names {
//            print("Hello, \(name)!")
//        }
//
//    }
////    循环遍历字典里的数据
////    这样遍历不是按照顺序遍历的
//    func forinbianlizididian() {
//        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
//        for (animalName, legCount) in numberOfLegs {
//            print("----\(animalName) ----- \(legCount) ----- ")
//        }
//    }
//
////    if语句
//    func ifyuju() {
//        let temperatureInFahrenheit = 40
//        if temperatureInFahrenheit <= 32 {
//            print("小于等于32")
//        } else {
//            print("大于32")
//        }
//    }
//
////    switch 语句
///*
//     case 后面可以直接跟方法 不用写大括号
//     每一个 case 分支都必须包含至少一条语句
//     case 分支的模式也可以是一个值的区间。下面的例子展示了如何使用区间匹配来输出任意数字对应的自然语言格式
//     Will never be executed 代码永远不会被执行 的意思
//     **/
//    func switchyuju() {
//        let someCharacter: Character = "z"
//        switch someCharacter {
//        case "a":
//            print("The first letter of the alphabet")
//        case "z":
//            print("The last letter of the alphabet")
//        default:
//            print("Some other character")
//        }
//
//
//        let approximateCount = 60
//        let countedThings = "moons orbiting Saturn"
//        let naturalCount: String
//        switch approximateCount {
//        case 0:
//            naturalCount = "no"
//        case 1..<5:
//            naturalCount = "a few"
//        case 5..<12:
//            naturalCount = "several"
//        case 12..<100:
//            naturalCount = "dozens of"
//        case 100..<1000:
//            naturalCount = "hundreds of"
//        default:
//            naturalCount = "many"
//        }
//        print("There are \(naturalCount) \(countedThings).")
//
//
//
//    }
//
////    MARK: ----函数----
//    /*
//     无参数函数：   name:String 可以不写，就是不携带参数的函数
//     多参数函数：   携带多个参数
//     **/
//    func getName(name:String) -> String {
//        return "---------------" + name + "---------------"
//    }
//
//    func greet(person: String, alreadyGreeted: Bool) -> String {
//        if alreadyGreeted {
//            return getName(name: person) + "true"
//        } else {
//            return getName(name: person) + "false"
//        }
//    }
//
////    MARK: ------闭包------
//    /*
//     闭包是自包含的函数代码块，可以在代码中被传递和使用。Swift 中的闭包与 C 和 Objective-C 中的代码块（blocks）以及其他一些编程语言中的匿名函数（Lambdas）比较相似。
//     闭包可以捕获和存储其所在上下文中任意常量和变量的引用。被称为包裹常量和变量。 Swift 会为你管理在捕获过程中涉及到的所有内存操作。
//
//     闭包采用如下三种形式之一：
//     1、全局函数是一个有名字但不会捕获任何值的闭包
//     2、嵌套函数是一个有名字并可以捕获其封闭函数域内值的闭包
//     3、闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包
//
//     Swift 的闭包表达式拥有简洁的风格，并鼓励在常见场景中进行语法优化，主要优化如下：
//     1-利用上下文推断参数和返回值类型
//     2-隐式返回单表达式闭包，即单表达式闭包可以省略 return 关键字
//     3-参数名称缩写
//     4-尾随闭包语法
//
//     **/
//
//
//}


//    MARK: --------点击屏幕出现爱心-----------

class ViewController: UIViewController {

    /**
     *检测轻点手势
     */
    var tapGestureRecognizer: UITapGestureRecognizer!
    var button: UIButton!
    let snowFlowerCell = CAEmitterCell()
    let emitterLayer = CAEmitterLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        tapGestureRecognizer.numberOfTouchesRequired = 1 // 检测轻触手势
        tapGestureRecognizer.numberOfTapsRequired = 1 // 点击次数
        view.addGestureRecognizer(tapGestureRecognizer)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        /**
         *检测轻点手势
         */
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTaps(sender:)))
    }

    @objc func handleTaps(sender: UITapGestureRecognizer) {
        for touchCounter in 0..<sender.numberOfTapsRequired {
            let touchPoint = sender.location(ofTouch: touchCounter, in: sender.view)
            print("Touch \(touchCounter + 1): \(touchPoint)")
            initButton(point: touchPoint)
            playAnimation()
        }
    }

    func initButton(point: CGPoint) {
        button = UIButton(frame: CGRect(x: 0, y: 0, width: 1.6, height: 1))
        button.center = point
        button.setImage(UIImage(named: "1"), for: .normal)
        self.view.addSubview(button)
    }

    func playAnimation() {
        UIView.animate(withDuration: 1.0, animations: {
            let scale = CGAffineTransform(scaleX: 200, y: 200)
            self.button.transform = scale
        }) { (_) in
            UIView.animate(withDuration: 0.1) {
                self.button.alpha = 0.0
            }
        }
    }

}



