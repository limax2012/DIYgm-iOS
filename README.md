# DIYgm-iOS
iOS app for DIY Geiger Muller radiation detector project at UMich Radiological Health Engineering Lab

APIs: Create a Keys.plist in the DIYgm-iOS folder. Add an entry with the key being "GoogleAPI" and value being your Google Cloud Platform API key.

Color Scale: The saturation of each marker is based on how high its measured count rate is, compared to a specified high value. This high value was set to 100, meaning a value of 0 is the least saturated and a value of 100 and above is the most saturated. To change the high value, modify the value of the highValue variable in setCountRate().

The DIYgm Raspberry Pi files needed to connect the DIYgm to this app can be found at https://github.com/experimex/DIYgm-RPi.
