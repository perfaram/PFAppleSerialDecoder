# PFAppleSerialDecoder ![ARC](https://img.shields.io/badge/ARC-Ready-lightgrey.svg) ![Platform](https://img.shields.io/badge/Platform-iOS/OSX-blue.svg) ![License](https://img.shields.io/badge/License-MIT-green.svg)
*Class for decoding Apple's Serial Numbers*
> Can you help ? Just open a PR !

### How to use
```objc
PFAppleSerialDecoder* serialDecoder = [[PFAppleSerialDecoder alloc] initWithSN:@"C02LGJ39FD57"];
NSLog(@"Made in : %@", [serialDecoder manufacturingLocation]); //Made in China
NSLog(@"Made in : %@", [serialDecoder manufacturingYear]); // 2013
NSLog(@"Week : %@", [serialDecoder manufacturingWeek]); // Week 39
```

### Todo
* Support older, shorter serials

Special thanks to Christoph Sinai, for explaining me how these nasty serials worked. Thanks, Chris !
