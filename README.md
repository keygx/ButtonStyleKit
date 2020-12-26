# ButtonStyleKit

ButtonStyleKit is helper library for UIButton custom styles.

## Requirements
- Swift 5
- iOS 9.0 or later

## Installation

### Carthage

```Cartfile
github "keygx/ButtonStyleKit"
```

### CocoaPods

```PodFile
pod 'ButtonStyleKit', :git => 'https://github.com/keygx/ButtonStyleKit'
```


### Swift versions support

- Swift 5, tag "swift5"
- Swift 4.2, tag "swift4.2"
- Swift 4.1, tag "swift4.1"
- Swift 4.0, tag "swift4.0"


## Usage

### Standard Style Example

![](ButtonStyleKitSample/images/readme/StandardStyle.png)

#### make custom style

```SampleButtonStandardStyle.swift
import UIKit
import ButtonStyleKit

final class SampleButtonStandardStyle: ButtonStyleStandardBase {
    
    private let buttonStyle = ButtonStyleBuilder()
    
    final override func initializedTrigger() {
        let blue = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        let white = UIColor.white
        let orange = UIColor.orange
        let lightGray = UIColor.lightGray
        let whiteImage = buttonStyle.createViewToImage(color: white)
        
        /*---------- Common Settings ----------*/
        buttonStyle
            .setButton(self)
            .setState(.all)
            .setFont(UIFont.systemFont(ofSize: 16))
            .setCornerRadius(8.0)
            .setBorderWidth(1.0)
            .setClipsToBounds(true)
            .setExclusiveTouch(true)
            .build()
        
        /*---------- For State Settings ----------*/
        buttonStyle
            .setState(.normal)
            .setTitle("normal")
            .setTitleColor(blue)
            .setBackgroundImage(whiteImage!)
            .setBorderColor(blue)
            .build()
        
        buttonStyle
            .setState(.highlighted)
            .setTitle("highlighted")
            .setTitleColor(orange)
            .setBackgroundImage(whiteImage!)
            .setBorderColor(orange)
            .build()
        
        buttonStyle
            .setState(.disabled)
            .setTitle("disabled")
            .setTitleColor(lightGray)
            .setBackgroundImage(whiteImage!)
            .setBorderColor(lightGray)
            .build()
        
        buttonStyle.apply()
    }
    
    final override var currentState: ButtonStyleKit.ButtonState {
        didSet {
            buttonStyle.apply()
        }
    }
}
``` 

#### storyboard settings

- set Button Type "Custom"
- set Custom Class "SampleButtonStandardStyle"

![](ButtonStyleKitSample/images/readme/screen.png)


#### use viewcontroller

```ViewController.swift
import ButtonStyleKit

class ViewController: UIViewController {

    @IBOutlet weak var button: SampleButtonStandardStyle!
    
    ~~~
    
    button.setClickHandler { sender in
        print("clicked tag: \(sender.tag)")
    }
    
```

**For more information, please refer to the sample project**


## License

ButtonStyleKit is released under the MIT license. See LICENSE for details.

## Author

Yukihiko Kagiyama (keygx) <https://twitter.com/keygx>
