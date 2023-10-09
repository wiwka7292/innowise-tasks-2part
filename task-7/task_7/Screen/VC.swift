//import UIKit
//
//
//class ColorSwitchViewController: UIViewController {
//    
//    private let colorSwitchView: ColorSwitchView = {
//        let view = ColorSwitchView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupUI()
//    }
//    
//    private func setupUI() {
//        view.addSubview(colorSwitchView)
//        
//        NSLayoutConstraint.activate([
//            colorSwitchView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            colorSwitchView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            colorSwitchView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            colorSwitchView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//        ])
//    }
//}
//
//
//class ColorSwitchView: UIView {
//    
//    // Массив различных цветов
////    private let colors: [UIColor] = [
////        .red, .green, .blue, .yellow, .orange, .purple, .cyan, .magenta, .brown, .gray
////    ]
//    
//    // Текущий индекс цвета
//    private var currentIndex = 0
//    
//    // Элемент, отображающий цвет
//    private let colorView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.layer.borderWidth = 2
//        view.layer.borderColor = UIColor.black.cgColor
//        return view
//    }()
//    
//    // Кнопка для перехода к предыдущему цвету
//    private let previousButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("Previous", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    // Кнопка для перехода к следующему цвету
//    private let nextButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("Next", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    // TextView для отображения текущего индекса цвета
//    private let indexTextView: UITextView = {
//        let textView = UITextView()
//        textView.textAlignment = .center
//        textView.isEditable = false
//        textView.translatesAutoresizingMaskIntoConstraints = false
//        return textView
//    }()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupUI()
//        updateColor()
//        backgroundColor = .white
//    }
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        setupUI()
//        updateColor()
//    }
//    
//    private func setupUI() {
//        addSubview(colorView)
//        addSubview(previousButton)
//        addSubview(indexTextView)
//        addSubview(nextButton)
//        
//        NSLayoutConstraint.activate([
//            colorView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
//            colorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            colorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            colorView.heightAnchor.constraint(equalToConstant: 100),
//            
//            previousButton.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 20),
//            previousButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            
//            indexTextView.centerYAnchor.constraint(equalTo: previousButton.centerYAnchor),
//            indexTextView.leadingAnchor.constraint(equalTo: previousButton.trailingAnchor, constant: 20),
//            
//            nextButton.centerYAnchor.constraint(equalTo: previousButton.centerYAnchor),
//            nextButton.leadingAnchor.constraint(equalTo: indexTextView.trailingAnchor, constant: 20),
//            nextButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//        ])
//        
//        previousButton.addTarget(self, action: #selector(previousButtonTapped), for: .touchUpInside)
//        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
//    }
//    
//    private func updateColor() {
//        let color = colors[currentIndex]
//        colorView.backgroundColor = color
//        indexTextView.text = "Index: \(currentIndex + 1)"
//    }
//    
//    @objc private func previousButtonTapped() {
//        currentIndex -= 1
//        if currentIndex < 0 {
//            currentIndex = colors.count - 1
//        }
//        updateColor()
//    }
//    
//    @objc private func nextButtonTapped() {
//        currentIndex += 1
//        if currentIndex >= colors.count {
//            currentIndex = 0
//        }
//        updateColor()
//    }
//}
