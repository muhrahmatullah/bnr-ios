//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Muhammad Rahmatullah on 08/07/21.
//

import UIKit
import MapKit

class MapViewController : UIViewController {
    
    var mapView: MKMapView!
    var label: UILabel!
    var poiSwitch: UISwitch!
 
    override func loadView() {
        mapView = MKMapView()
        label = UILabel()
        poiSwitch = UISwitch()
        
        view = mapView
        
        label.text = "Point of interest"
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satelite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        poiSwitch.addTarget(self, action: #selector(onSwitchChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        poiSwitch.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControl)
        view.addSubview(label)
        view.addSubview(poiSwitch)
        
        let margin = view.layoutMarginsGuide
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        
        let labelTopConst = label.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8)
        let labelLeadingConstraint = label.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        
        let switchLeadingConst = poiSwitch.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 8)
        let switchTopConst = poiSwitch.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8)
        
        switchLeadingConst.isActive = true
        switchTopConst.isActive = true
        
        labelTopConst.isActive = true
        labelLeadingConstraint.isActive = true
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    @objc func onSwitchChanged(_ s: UISwitch) {
        print("maman \(s.isOn)")
        if s.isOn {
            mapView.pointOfInterestFilter?.includes(MKPointOfInterestCategory.bank)
        } else {
            mapView.pointOfInterestFilter?.excludes(MKPointOfInterestCategory.airport)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController load its view")
    }
    
}
