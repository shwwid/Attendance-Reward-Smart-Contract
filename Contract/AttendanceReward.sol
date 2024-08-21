// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttendanceReward {

    // Data Structure containing variables and their datatype to hold student information
    struct Student {
        uint attendanceCount;
        uint rewardBalance;
    }

    mapping(address => Student) public students;

    // Token reward per attendance as the Student check's in
    uint public rewardPerAttendance = 5;

    event CheckIn(address indexed studentAddress, uint attendanceCount, uint rewardTokens);

    // Function to record attendance and reward their attendance using the token.
    function checkIn() public {
       
        students[msg.sender].attendanceCount += 1;
            
        students[msg.sender].rewardBalance += rewardPerAttendance;

        emit CheckIn(msg.sender, students[msg.sender].attendanceCount, students[msg.sender].rewardBalance);
    }

    // Function to get student details using their Ethereum Address by checking from the memory
    function getStudent(address _studentAddress) public view returns (uint, uint) {
        Student memory student = students[_studentAddress];
        return (student.attendanceCount, student.rewardBalance);
    }
}
