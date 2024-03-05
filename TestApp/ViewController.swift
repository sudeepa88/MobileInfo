//
//  ViewController.swift
//  TestApp
//
//  Created by Sudeepa Pal on 02/03/24.
//

import UIKit
import SwiftCPUDetect
import Luminous
import AVFoundation

class ViewController: UIViewController {
    
    var scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .brown
        return scrollView
    }()
    
    var contentView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .brown
        return view
    }()
    
    let cardViewForIphone : UIView = {
        let cardViewForIphone = UIView()
        cardViewForIphone.translatesAutoresizingMaskIntoConstraints = false
        cardViewForIphone.layer.cornerRadius = 20  // Set your desired corner radius
        cardViewForIphone.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardViewForIphone
    }()
    
    let iphoneModelNameLabel : UILabel = {
        let iphoneModelNameLabel = UILabel()
        iphoneModelNameLabel.translatesAutoresizingMaskIntoConstraints = false
        iphoneModelNameLabel.textColor = .black
        return iphoneModelNameLabel
    }()
    
    let cardViewForIphoneOS : UIView = {
        let cardViewForIphone = UIView()
        cardViewForIphone.translatesAutoresizingMaskIntoConstraints = false
        cardViewForIphone.layer.cornerRadius = 20  // Set your desired corner radius
        cardViewForIphone.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardViewForIphone
    }()
    
    
    let iphoneModelOSLabel : UILabel = {
        let iphoneModelOSLabel = UILabel()
        iphoneModelOSLabel.translatesAutoresizingMaskIntoConstraints = false
        iphoneModelOSLabel.textColor = .black
        return iphoneModelOSLabel
    }()
    
    
    let cardViewForUUID : UIView = {
        let cardViewForUUID = UIView()
        cardViewForUUID.translatesAutoresizingMaskIntoConstraints = false
        cardViewForUUID.layer.cornerRadius = 20  // Set your desired corner radius
        cardViewForUUID.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardViewForUUID
    }()
    
    let iphoneModelUUIDLabel : UILabel = {
        let iphoneModelUUIDLabel = UILabel()
        iphoneModelUUIDLabel.translatesAutoresizingMaskIntoConstraints = false
        iphoneModelUUIDLabel.textColor = .black
        iphoneModelUUIDLabel.font = UIFont.systemFont(ofSize: 12)
        return iphoneModelUUIDLabel
    }()
    
    
    let cardViewForStorage : UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 20  // Set your desired corner radius
        cardView.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardView
    }()
    
    let iphoneModelStorageLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let cardViewForBatteryLevel : UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 20  // Set your desired corner radius
        cardView.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardView
    }()
    
    let iphoneModelBatteryLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    // Camera Part
    let cardViewForCameraMegaPixels : UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 20  // Set your desired corner radius
        cardView.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardView
    }()
    
    let iphoneModelMegaPixelLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        //label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    
    let cardViewForCameraAperture : UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 20  // Set your desired corner radius
        cardView.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardView
    }()
    
    let iphoneModelApertureLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        //label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    // Ram
    let cardViewForRAM : UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 20  // Set your desired corner radius
        cardView.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardView
    }()
    
    let iphoneModelRAM : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        //label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    // Cores and Threads
    let cardViewForCoresAndThreads : UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 20  // Set your desired corner radius
        cardView.backgroundColor = UIColor(red: 221/255.0, green: 184/255.0, blue: 146/255.0, alpha: 1.0)
        return cardView
    }()
    
    let iphoneModelForCoresAndThreads : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 237/255.0, green: 224/255.0, blue: 212/255.0, alpha: 1.0)
        //view.addSubview(cardViewForIphone)
        scrollView.contentSize = CGSize(width: view.bounds.width, height: 1100)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        // Then add cardViewForIphone to the scrollView
        scrollView.addSubview(cardViewForIphone)
        scrollView.addSubview(cardViewForIphoneOS)
        scrollView.addSubview(cardViewForUUID)
        scrollView.addSubview(cardViewForStorage)
        scrollView.addSubview(cardViewForBatteryLevel)
        scrollView.addSubview(cardViewForCameraMegaPixels)
        scrollView.addSubview(cardViewForCameraAperture)
        scrollView.addSubview(cardViewForRAM)
        scrollView.addSubview(cardViewForCoresAndThreads)
        // Finally, add the label to the cardViewForIphone
        cardViewForIphone.addSubview(iphoneModelNameLabel)
        cardViewForIphoneOS.addSubview(iphoneModelOSLabel)
        cardViewForUUID.addSubview(iphoneModelUUIDLabel)
        cardViewForStorage.addSubview(iphoneModelStorageLabel)
        cardViewForBatteryLevel.addSubview(iphoneModelBatteryLabel)
        cardViewForCameraMegaPixels.addSubview(iphoneModelMegaPixelLabel)
        cardViewForCameraAperture.addSubview(iphoneModelApertureLabel)
        cardViewForRAM.addSubview(iphoneModelRAM)
        cardViewForCoresAndThreads.addSubview(iphoneModelForCoresAndThreads)
        
        configureLayout()
        
        
        UIDevice.current.isBatteryMonitoringEnabled = true
        let batteryLevel = UIDevice.current.batteryLevel * 100
        let batteryChargingLevel = String(batteryLevel)
        print("Battery Level: \(batteryLevel)%")
        
        iphoneModelBatteryLabel.text = "Current Battery Level: " + batteryChargingLevel + "%"
        
        
        print("My app is running using the \(CpuArchitecture.current()?.rawValue ?? "[Can't detect architecture]") architecture")
        let ramAmount = (HWInfo.ramAmmount() ?? 0) / (1024 * 1024 * 1024)
        let ram =  String(ramAmount)
        iphoneModelRAM.text = "iPhone has : " + ram + "GB of RAM"
        print("This device has \((HWInfo.ramAmmount() ?? 0) / (1024 * 1024 * 1024)) GB of RAM")
        
        //Prints the architecture of the current computer
        print("My computer is running using the \(CpuArchitecture.machineCurrent()?.rawValue ?? "[Can't detect architecture]") architecture")
        
        
        print("This cpu has \"\(HWInfo.CPU.coresCount() ?? 255)\" cores")
        let cpuCores = (HWInfo.CPU.coresCount() ?? 255)
        let cores = String(cpuCores)
        let cpuThreads = (HWInfo.CPU.threadsCount() ?? 255)
        let threads = String(cpuThreads)
        print("This cpu has \"\(HWInfo.CPU.threadsCount() ?? 255)\" threads")
        
        print("This cpu is \(HWInfo.CPU.is64Bit() ? "64" : "32" ) bits")
        iphoneModelForCoresAndThreads.text = "CPU cores: " + cores + " CPU thoreads: " + threads
        
        // MARK: Disk
        
        print("------------\nDisk\n------------")
        let TotalSpace = (Luminous.Disk.totalSpaceInBytes) / (1024 * 1024 * 1024)
        let AvailableSpace = (Luminous.Disk.freeSpaceInBytes ) / (1024 * 1024 * 1024)
        
        let totalSpaceString = String(TotalSpace)
        let availableSpaceString = String(AvailableSpace)
        
        iphoneModelStorageLabel.text = "Total Space: " + totalSpaceString + "GB " + " Available Space: " + availableSpaceString + "GB "
        
        
        print("freeSpaceInGB: \((Luminous.Disk.freeSpaceInBytes ) / (1024 * 1024 * 1024)) GB")
        
        print("totalSpaceInGB: \((Luminous.Disk.totalSpaceInBytes) / (1024 * 1024 * 1024)) GB")
        
        print("usedSpaceInPercentage: \(Luminous.Disk.usedSpaceInPercentage)%")
        
        
        
        print("------------\nBattery\n------------")
        print("level: \(Luminous.Battery.level ?? -1)")
        print("state: \(Luminous.Battery.state)")
        
        
        if let uuid = UIDevice.current.identifierForVendor?.uuidString {
            print(uuid, " This is user's Unique identification number")
            iphoneModelUUIDLabel.text = "UUID: " + uuid
        }
        
        
        let device = UIDevice.current
        
        // Access the device's model name
        let modelName = UIDevice.modelName
        iphoneModelNameLabel.text = "Device Name: " + modelName
        
        let iosVersion = device.systemVersion
        
        print("iphone Version name :  \(iosVersion)")
        iphoneModelOSLabel.text = "Model OS Version: " + iosVersion
        
        //getDeviceModelInfo()
        getCameraMegapixels()
        getCameraAperture()
        
    }
    // Camera Aperture
    
    func getCameraMegapixels() {
        if let backCamera = AVCaptureDevice.default(for: .video) {
            let maxResolution = getMaxResolution(for: backCamera)
            print("Maximum resolution of the rear camera: \(maxResolution.width) x \(maxResolution.height)")
            
            // Convert to megapixels (1 MP = 1,000,000 pixels)
            let megapixels = Double(maxResolution.width * maxResolution.height) / 1_000_000.0
            let megapixelsIntoInt = Int(megapixels)
            let mp = String(megapixelsIntoInt)
            print("Approximate megapixels: \(megapixels) MP")
            iphoneModelMegaPixelLabel.text = "Camera Mega Pixels: " + mp + "MP"
        } else {
            print("Unable to access the rear camera.")
        }
    }
    
    func getMaxResolution(for camera: AVCaptureDevice) -> CGSize {
        var maxResolution: CGSize = .zero
        
        for format in camera.formats {
            let dimensions = CMVideoFormatDescriptionGetDimensions(format.formatDescription)
            let resolution = CGSize(width: CGFloat(dimensions.width), height: CGFloat(dimensions.height))
            
            if resolution.width * resolution.height > maxResolution.width * maxResolution.height {
                maxResolution = resolution
            }
        }
        
        return maxResolution
    }
    
    
    
    
    func getCameraAperture() {
        // Check if the device has a camera
        guard let cameraDevice = AVCaptureDevice.default(for: .video) else {
            print("No camera found.")
            return
        }
        
        do {
            // Lock configuration to ensure changes
            try cameraDevice.lockForConfiguration()
            
            // Retrieve the current aperture value
            let apertureValue = cameraDevice.lensAperture
            let aperture = String(apertureValue)
            
            print("Camera Aperture: \(apertureValue)")
            iphoneModelApertureLabel.text = "Camera Aperture : " + aperture
            
            // Unlock configuration after retrieving the information
            cameraDevice.unlockForConfiguration()
        } catch {
            print("Error accessing camera configuration: \(error.localizedDescription)")
        }
    }
    
    
    func configureLayout(){
        NSLayoutConstraint.activate([
            
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint            (equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint         (equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint        (equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint       (equalTo: scrollView.trailingAnchor),
            
            contentView.widthAnchor.constraint          (equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint         (equalToConstant: 1000),
            
            cardViewForIphone.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 80),
            cardViewForIphone.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            cardViewForIphone.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForIphone.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForIphone.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelNameLabel.centerXAnchor.constraint(equalTo: cardViewForIphone.centerXAnchor),
            iphoneModelNameLabel.centerYAnchor.constraint(equalTo: cardViewForIphone.centerYAnchor),
            
            
            
            cardViewForIphoneOS.topAnchor.constraint(equalTo:  cardViewForIphone.bottomAnchor, constant: 20),
            cardViewForIphoneOS.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForIphoneOS.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForIphoneOS.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForIphoneOS.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelOSLabel.centerXAnchor.constraint(equalTo: cardViewForIphoneOS.centerXAnchor),
            iphoneModelOSLabel.centerYAnchor.constraint(equalTo: cardViewForIphoneOS.centerYAnchor),
            
            
            
            
            cardViewForUUID.topAnchor.constraint(equalTo:  cardViewForIphoneOS.bottomAnchor, constant: 20),
            cardViewForUUID.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForUUID.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForUUID.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForUUID.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelUUIDLabel.centerXAnchor.constraint(equalTo: cardViewForUUID.centerXAnchor),
            iphoneModelUUIDLabel.centerYAnchor.constraint(equalTo: cardViewForUUID.centerYAnchor),
            
            
            cardViewForStorage.topAnchor.constraint(equalTo:  cardViewForUUID.bottomAnchor, constant: 20),
            cardViewForStorage.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForStorage.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForStorage.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForStorage.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelStorageLabel.centerXAnchor.constraint(equalTo: cardViewForStorage.centerXAnchor),
            iphoneModelStorageLabel.centerYAnchor.constraint(equalTo: cardViewForStorage.centerYAnchor),
            
            
            cardViewForBatteryLevel.topAnchor.constraint(equalTo:  cardViewForStorage.bottomAnchor, constant: 20),
            cardViewForBatteryLevel.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForBatteryLevel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForBatteryLevel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForBatteryLevel.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelBatteryLabel.centerXAnchor.constraint(equalTo: cardViewForBatteryLevel.centerXAnchor),
            iphoneModelBatteryLabel.centerYAnchor.constraint(equalTo: cardViewForBatteryLevel.centerYAnchor),
            
            
            cardViewForCameraMegaPixels.topAnchor.constraint(equalTo:  cardViewForBatteryLevel.bottomAnchor, constant: 20),
            cardViewForCameraMegaPixels.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForCameraMegaPixels.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForCameraMegaPixels.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForCameraMegaPixels.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelMegaPixelLabel.centerXAnchor.constraint(equalTo: cardViewForCameraMegaPixels.centerXAnchor),
            iphoneModelMegaPixelLabel.centerYAnchor.constraint(equalTo: cardViewForCameraMegaPixels.centerYAnchor),
            
            cardViewForCameraAperture.topAnchor.constraint(equalTo:  cardViewForCameraMegaPixels.bottomAnchor, constant: 20),
            cardViewForCameraAperture.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForCameraAperture.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForCameraAperture.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForCameraAperture.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelApertureLabel.centerXAnchor.constraint(equalTo: cardViewForCameraAperture.centerXAnchor),
            iphoneModelApertureLabel.centerYAnchor.constraint(equalTo: cardViewForCameraAperture.centerYAnchor),
            
            
            cardViewForRAM.topAnchor.constraint(equalTo:   cardViewForCameraAperture.bottomAnchor, constant: 20),
            cardViewForRAM.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForRAM.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForRAM.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForRAM.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelRAM.centerXAnchor.constraint(equalTo: cardViewForRAM.centerXAnchor),
            iphoneModelRAM.centerYAnchor.constraint(equalTo: cardViewForRAM.centerYAnchor),
            
            
            cardViewForCoresAndThreads.topAnchor.constraint(equalTo:   cardViewForRAM.bottomAnchor, constant: 20),
            cardViewForCoresAndThreads.leadingAnchor.constraint(equalTo:  cardViewForIphone.leadingAnchor, constant: 0),
            cardViewForCoresAndThreads.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            cardViewForCoresAndThreads.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -30),
            cardViewForCoresAndThreads.heightAnchor.constraint(equalToConstant: 70),
            
            iphoneModelForCoresAndThreads.centerXAnchor.constraint(equalTo: cardViewForCoresAndThreads.centerXAnchor),
            iphoneModelForCoresAndThreads.centerYAnchor.constraint(equalTo: cardViewForCoresAndThreads.centerYAnchor),
            
        ])
    
    }
    
}



