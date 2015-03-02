# PFAppleSerialDecoder ![ARC](https://img.shields.io/badge/ARC-Ready-lightgrey.svg) ![Platform](https://img.shields.io/badge/Platform-iOS/OSX-blue.svg) ![Awesomeness](https://img.shields.io/badge/Awesomeness-100%25-ff69b4.svg)
#### Class for decoding Apple's Serial Numbers

### How to use
```
PFAppleSerialDecoder* serialDecoder = [[PFAppleSerialDecoder alloc] initWithSN:@"C02LGJ39FD57"];
NSLog(@"Made in : %@", [serialDecoder manufacturingLocation]); //Made in China
NSLog(@"Made in : %@", [serialDecoder manufacturingYear]); // 2013
NSLog(@"Week : %@", [serialDecoder manufacturingWeek]); // Week 39
```

Special thanks to Christoph Sinai, for explaining me how these nasty serials worked. Thanks, Chris !
