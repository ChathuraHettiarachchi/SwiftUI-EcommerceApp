//
//  Product.swift
//  FirstApp
//
//  Created by Chathura Hetti Arachchi on 31/08/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

var productList = [
    Product(name: "Leather Couch", image: "001", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", supplier: "IKEA", price: 329),
    Product(name: "Nice Couch", image: "002", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi aliquip ex ea commodo consequat.", supplier: "Herman Miller", price: 531),
    Product(name: "Beauty Couch", image: "003", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisilaboris nisi ut aliquip ex ea commodo consequat.", supplier: "Singer", price: 355),
    Product(name: "Banana Couch", image: "004", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", supplier: "DSI", price: 767),
    Product(name: "Coco Couch", image: "005", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", supplier: "Warehouse", price: 843),
    Product(name: "Hunuma Couch", image: "006", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", supplier: "IKEA", price: 584),
    Product(name: "Banana Couch", image: "004", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", supplier: "DSI", price: 767),
    Product(name: "Coco Couch", image: "005", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", supplier: "Warehouse", price: 843),
    Product(name: "Hunuma Couch", image: "006", description: "The standard Lorem Ipsum passage is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", supplier: "IKEA", price: 584)
]
