# AttendanceReward Smart Contract
![alt text](image-2.png)
## Vision

The `AttendanceReward` smart contract aims to streamline the process of tracking student attendance and incentivizing participation through a decentralized reward system. By leveraging blockchain technology, this project ensures transparent and immutable records of attendance and rewards, motivating students to maintain consistent attendance. This project aims to develop a blockchain-based system for verifying and rewarding class attendance in educational institutions. The system will leverage the immutability and transparency of blockchain technology to ensure accurate and tamper-proof attendance records while incentivizing students to attend classes regularly through a rewards program.

## Flowchart

Below is the high-level flowchart of the contract's operation:

1. **Student Check-In**:
   - Student calls the `checkIn()` function.
   - Attendance count and reward balance are updated.

2. **Event Emission**:
   - `CheckIn` event is emitted with updated details.

3. **Querying Details**:
   - Use `getStudent(address _studentAddress)` to retrieve attendance count and reward balance.

```
          +-------------------+
          |  Contract Deployed |
          +-------------------+
                   |
                   |
         +-------------------+
         |    checkIn()      |
         +-------------------+
                   |
   +---------------+---------------+
   |                               |
   |   +--------------------+      |
   |   | Increment Attendance |    |
   |   +--------------------+      |
   |              |                |
   |              v                |
   |   +--------------------+      |
   |   | Increase Reward    |      |
   |   +--------------------+      |
   |              |                |
   |              v                |
   |   +--------------------+      |
   |   | Emit CheckIn Event|      |
   |   +--------------------+      |
   |                               |
   +-------------------------------+
                   |
                   |
           +---------------------+
           |   getStudent()      |
           +---------------------+
                   |
                   |
   +---------------+---------------+
   |                               |
   |   +---------------------+     |
   |   | Retrieve Student    |     |
   |   | Details from Mapping|     |
   |   +---------------------+     |
   |                               |
   +-------------------------------+
                   |
                   |
         +-----------------------+
         | Output: Details       |
         | (attendanceCount,     |
         | rewardBalance)        |
         +-----------------------+

```

## Contract Address

   - **Contract Name**: Attendance Reward System
   - **Contract Address**: 0xC7A0C6c939565621a88b1c9e2682119Bf678d152
   - **Network**: Edu_Chain

   ![alt text](image.png)

## Features
1. **Decentralization**
The system operates on a blockchain, eliminating the need for a central authority to manage attendance records. All data is distributed across the network, ensuring that no single entity has control over the records.
2. **Transparency**
All transactions, including check-ins and token redemptions, are recorded on the blockchain, which is a public ledger. This means that anyone with access to the blockchain can verify the authenticity of attendance records and token balances.
The contract emits events (CheckIn and Redeem) for key actions, which are recorded on the blockchain and can be monitored in real-time.
3. **Immutability**
Once data is written to the blockchain, it cannot be altered or deleted. This ensures that attendance records and token balances are immutable and secure from tampering.
4. **Automation**
The contract automatically manages attendance tracking, token rewards, and redemptions based on predefined rules. This reduces the need for manual intervention and minimizes the risk of errors.
Automated Reward Distribution: Students automatically receive tokens when they check in, and the smart contract handles token deduction during redemption.
5. **Incentivization**
Students are incentivized to attend classes regularly by earning tokens for each attendance. This gamification approach can increase student engagement and participation.
Students can redeem their earned tokens for rewards, such as gift cards or extra credit, providing tangible benefits for consistent attendance.
6. **Security**
Although not implemented in the basic version, access control can be added to restrict certain functions (e.g., setting reward amounts) to authorized users, such as teachers or administrators.
The contract operates on a blockchain network, benefiting from the inherent security features of blockchain technology, including cryptographic security and consensus mechanisms.
7. **Flexibility**
The reward per attendance can be adjusted using the setRewardPerAttendance function, allowing for flexibility in how students are incentivized.
The redeemTokens function allows for customizable rewards, where students can redeem tokens for a variety of items or benefits.

## Future Scope

- **Enhanced Reward System**: Implement varying reward rates based on attendance streaks or milestones.
- **Integration with Decentralized Applications (DApps)**: Allow integration with educational DApps for seamless student and reward management.
- **Automated Notifications**: Develop a system to notify students of their rewards or milestones via blockchain-based messaging.
- **Analytics Dashboard**: Create a dashboard to analyze attendance trends and reward distributions.

## Contact
For further inquiries or support, please reach out to:
- **Email**: shidharthlaishram@gmail.com
- **GitHub**: https://github.com/shwwid
