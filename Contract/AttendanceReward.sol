// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttendanceReward {

    
    struct Student {
        uint attendanceCount;
        uint rewardBalance;
    }

    mapping(address => Student) public students;

    
    uint public rewardPerAttendance = 5;

    event CheckIn(address indexed studentAddress, uint attendanceCount, uint rewardTokens);

    
    function checkIn() public {
       
        students[msg.sender].attendanceCount += 1;
            
        students[msg.sender].rewardBalance += rewardPerAttendance;

        emit CheckIn(msg.sender, students[msg.sender].attendanceCount, students[msg.sender].rewardBalance);
    }

    
    function getStudent(address _studentAddress) public view returns (uint, uint) {
        Student memory student = students[_studentAddress];
        return (student.attendanceCount, student.rewardBalance);
    }
}
