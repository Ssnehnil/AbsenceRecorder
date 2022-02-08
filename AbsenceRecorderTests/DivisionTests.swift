//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Ssnehnil Ghosh on 08/02/2022.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let absence = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence)
        
        //act
        let actual = division.getAbsence(for: dateToday)
        
        //assert
        XCTAssertNotNil(actual)
    }

}
