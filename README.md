# Nori

**Nori** designs the view of the storyboard with source code.

![nori](https://cloud.githubusercontent.com/assets/6880730/23615653/79cb71fc-02ca-11e7-8c5f-0b1ba2698190.gif)

## Usage

### Label

Define the custom class that extends `StyleableLabel` as `@IBDesignable`. And implement the `func intrinsicStyle() -> LabelStyle`.

``` swift
import Nori

@IBDesignable class LargeLabel: StyleableLabel {
    override func intrinsicStyle() -> LabelStyle {
        return LabelStyle {
            $0.textColor = Color.black.color
            $0.font = UIFont.systemFont(ofSize: FontSize.large.point)
        }
    }
}
```

### Button

It's same as the Label.

``` swift
@IBDesignable class StarButton: StyleableButton {
    override func intrinsicStyle(for state: UIControlState) -> ButtonStyle {
        return ButtonStyle {
            $0.backgroundColor = Color.green.color
            $0.cornerRadius = 10
            $0.title = LabelStyle {
                $0.textColor = UIColor.white
            }
        }
    }
}
```

## Supported views

* View
* Button
* ImageView
* Label
* TextField
* Switch

## License

Nori is released under the MIT license. See LICENSE for details.
