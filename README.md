Retrieved	 all the information Using Swift and Tested on Physical Device.

The ui of this app has been built using UIKit framework to show the details to the user.
* UiKit is a framework  used for Building user interfaces on apple platforms


  UIDevice.current.isBatteryMonitoringEnabled = true
* UIDevice is a class in UIKit. It represents the device that is running the application and provides information about the device's
hardware and software characteristics.
The class allows developers to access details such as the device model,
 system version, and whether the battery monitoring is enabled.

# I have Extended the UIDevice Class for adding a computed property modelName #

var systemInfo = utsname()
uname(&systemInfo)

The utsname struct contains information about the system, including the machine type.
The extension then converts the machine identifier into a human-readable model name using a mapping function.

let machineMirror = Mirror(reflecting: systemInfo.machine)
    let identifier = machineMirror.children.reduce("") { identifier, element in
      guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }

    # The mapping function (mapToDevice(identifier:)) takes the machine identifier as input and returns the corresponding device model name. 
    It uses a switch statement to map specific identifiers to more user-friendly device names #

 **  AVFoundation is a framework provided by Apple in the iOS, macOS, watchOS, and tvOS software development kits.
 This framework is designed to work with audio and video on Apple platforms, 
 offering a wide range of functionalities for capturing, processing, 
 and playing multimedia content.   


 let apertureValue = cameraDevice.lensAperture
let aperture = String(apertureValue)

It retrieves the current aperture value of the camera (lensAperture). The aperture value is then converted to a string.


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
The function is declared to take an AVCaptureDevice object as a parameter and returns a CGSize, representing the maximum resolution.


let dimensions = CMVideoFormatDescriptionGetDimensions(format.formatDescription)
let resolution = CGSize(width: CGFloat(dimensions.width), height: CGFloat(dimensions.height))

For each format, it retrieves the dimensions using CMVideoFormatDescriptionGetDimensions and creates a CGSize named resolution with the width and height as CGFloat values.


# I have installed these two swift packages --> SwiftCPUDetect,
 #  Luminous using swift package manager .

let TotalSpace = (Luminous.Disk.totalSpaceInBytes) / (1024 * 1024 * 1024)
let AvailableSpace = (Luminous.Disk.freeSpaceInBytes ) / (1024 * 1024 * 1024)


The Luminous library is used for fetching information related to disk space.
let cpuCores = (HWInfo.CPU.coresCount() ?? 255)
 let cpuThreads = (HWInfo.CPU.threadsCount() ?? 255)
 ** The SwiftCPUDetect library is used to gather information about the device's CPU, such as architecture,
 number of cores, number of threads, and whether it's a 64-bit or 32-bit system.

 let ramAmount = (HWInfo.ramAmmount() ?? 0) / (1024 * 1024 * 1024)
the ramAmmount() method from HWInfo is used to retrieve information about the device's RAM.
 CpuArchitecture and HWInfo from the SwiftCPUDetect library.

if let uuid = UIDevice.current.identifierForVendor?.uuidString {
    print(uuid, " This is user's Unique identification number")
    iphoneModelUUIDLabel.text = "UUID: " + uuid
}
The identifierForVendor is a property that provides a unique identifier for the device.

##### 
1. As far My Knowledge there is no API for finding maximum battery capacity (Battery Health) using Swift.

2. Apple has some restrications over using IMEI number that's why I have used UUID for user device.
