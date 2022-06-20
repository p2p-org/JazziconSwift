import XCTest
@testable import JazziconSwift

final class JazziconSwiftTests: XCTestCase {
    func testHexToHSL() throws {
        XCTAssertEqual(hexToHSL("#01888C"), .init(h: 182, s: 99, l: 28))
        XCTAssertEqual(hexToHSL("#FC7500"), .init(h: 28, s: 100, l: 49))
        XCTAssertEqual(hexToHSL("#034F5D"), .init(h: 189, s: 94, l: 19))
        XCTAssertEqual(hexToHSL("#F73F01"), .init(h: 15, s: 99, l: 49))
        XCTAssertEqual(hexToHSL("#FC1960"), .init(h: 341, s: 97, l: 54))
        XCTAssertEqual(hexToHSL("#C7144C"), .init(h: 341, s: 82, l: 43))
        XCTAssertEqual(hexToHSL("#F3C100"), .init(h: 48, s: 100, l: 48))
        XCTAssertEqual(hexToHSL("#1598F2"), .init(h: 204, s: 89, l: 52))
        XCTAssertEqual(hexToHSL("#2465E1"), .init(h: 219, s: 76, l: 51))
        XCTAssertEqual(hexToHSL("#F19E02"), .init(h: 39, s: 98, l: 48))
    }
    
    func testMersenneTwister() throws {
        let genTest: (UInt32) -> [UInt32] = {seed in
            let source = Gust(seed: seed)
            
            var result = [UInt32]()
            for _ in 0..<20 {
                let uint32: UInt32 = source.random()
                result.append(uint32)
            }
            return result
        }
        
        // seed == 1
        XCTAssertEqual(genTest(1), [1791095845,4282876139,3093770124,4005303368,491263,550290313,1298508491,4290846341,630311759,1013994432,396591248,1703301249,799981516,1666063943,1484172013,2876537340,1704103302,4018109721,2314200242,3634877716])
        
        // seed == 1234
        XCTAssertEqual(genTest(1234), [822569775,2137449171,2671936806,3512589365,1880026316,2629000564,3373089432,3312965625,3349970575,3696548529,1170776343,646980841,1187404954,852631582,3444014763,3501098142,4115177196,682106748,3762102042,498808182])
        
        // seed == 74827683
        XCTAssertEqual(genTest(74827683), [1874567590,1381319807,2452295942,413698133,2930433667,2041850130,145822294,289449903,3658892885,109263213,3827765471,3223829248,129467459,4248183330,1007513768,1421789520,2115629014,2934614723,3386829114,2101908351])
    }
    
    func testHueShift() throws {
        //        let num = MersenneTwisterGenerator(seed: 1).next()
        //        XCTAssertEqual(num, 1791095845)
        //
        //        print(UInt32(1234123) >> 2)
        //
        //        let colors = hueShift(
        //            colors: jazziconColorHexes,
        //            generator: MersenneTwisterGenerator(seed: 1)
        //        )
        
    }
}
