# Infinitum SDK UI for iOS

## Installation

The Infinitum SDK UI can be added to the project using [Cocoapods](https://cocoapods.org/).

First you have no add Cocoapods to your project. For that purpose, go to the terminal, navigate into your project folder and type
the following command:

```
 pod init

```

Then, go to the Podfile generated and add the following pod to your file:

```ruby

 pod 'InfinitumSDKUI'

```

By default, the last uploaded version will be used.

## Usage

Infinitum is a library with a great variety of modules that can fit a lot of any application needs.

To use the modules, you must decide where you want to place them on your view, then you can call the Infinitum to get a ViewController
or a view depending on the module you need in your application.

For each submodule present in each module, there is a specific parameter class required for it, this parameters use some specific
layout description, a specific callback among other options specific for each submodule. In this matter, the submodules may require
one object or an array of objects specific for each module.

Example of usage of module List:

```swift
  
  let objects = [ObjectEntity(id: 1, title: "This is title", body: "this is body", image: UIImage(imageLiteralResourceName: "nata")),
                  ObjectEntity(id: 2, title: "This is title 2", body: "this is body", image: UIImage(imageLiteralResourceName: "nata"))]
  let slideshow = InfinitumUI.Object.slideshow(params: SlideshowParams(layout: SlideshowLayout(background: .black, headerColor: .brown, titleColor: .white, bodyColor: .white),objectList: objects, type: .Simple, callback: self))

```

And then present the view controller:

```swift

  self.present(slideshow, animated: true, completion: nil)

```

## Modules

The Infinitum SDK UI is divided in different modules according to their objectives.

### Object

The object module has the intent of displaying information of one or multiple objects.
For that purpose, in this module we can find a variety of ways to display this information.

 - List
 - Details
 - Slideshow

#### List

In this submodule, given an array of objects, it returns a viewcontroller with a list of all the objects passed.
It is even possible to decide what information will be displayed and how it will be displayed using one of several options on
the enum CellType.

#### Detail

Detail submodule has the purpose of displaying the information of a single object with more details.

#### Slideshow

This submodule will display the given information on a slideshow.

----

### Menu

The menu module has the intent of creating a way of navigate in your application.
In that matter, it disposes the following options of menus:

  - Bottom
  
#### Bottom

The purpose of this submodule is to be used as a bottom menu, with an image and a small title so the user can navigate easily
through the application without losing track of where he is and where he can go. It will return a view that you can add to your
as you please.
  

