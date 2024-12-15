# **โครงสร้าง XCTest แบบสรุป **

## **สารบัญ**
1. [Unit Testing](#1-unit-testing)  
   - [โครงสร้างหลัก](#โครงสร้างหลัก)  
   - [ส่วนประกอบสำคัญ](#ส่วนประกอบสำคัญ)  
   - [ตัวอย่าง](#ตัวอย่าง-unit-testing)  
2. [UI Testing](#2-ui-testing)  
   - [โครงสร้างหลัก](#โครงสร้างหลัก-1)  
   - [ส่วนประกอบสำคัญ](#ส่วนประกอบสำคัญ-1)  
   - [ตัวอย่าง](#ตัวอย่าง-ui-testing)  
3. [ความแตกต่างระหว่าง Unit Testing และ UI Testing](#ความแตกต่างระหว่าง-unit-testing-และ-ui-testing)  
4. [ประโยชน์ของ XCTest](#ประโยชน์ของ-xctest)

---

## **1. Unit Testing**
### **โครงสร้างหลัก**
- ใช้ตรวจสอบ logic ในฟังก์ชันหรือคลาส
- ทำงานใน Test Target (`Unit Test Bundle`)

### **ส่วนประกอบสำคัญ**
1. **Test Class**: คลาสต้องสืบทอดจาก `XCTestCase`  
2. **setUp() / tearDown()**: ใช้เตรียมและล้างข้อมูล  
3. **Assertions**: ใช้ตรวจสอบค่าที่ได้ เช่น:  
   - `XCTAssertEqual(a, b)`  
   - `XCTAssertTrue(condition)`  

### **ตัวอย่าง Unit Testing**
```swift
import XCTest

class MyUnitTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // เตรียมข้อมูล
    }

    override func tearDown() {
        // ล้างข้อมูล
        super.tearDown()
    }

    func testAddition() {
        let sum = 2 + 3
        XCTAssertEqual(sum, 5, "ผลลัพธ์ควรเป็น 5")
    }
}
```

---

## **2. UI Testing**
### **โครงสร้างหลัก**
- ทดสอบการโต้ตอบใน UI เช่น การกดปุ่ม
- ทำงานใน Test Target (`UI Test Bundle`)

### **ส่วนประกอบสำคัญ**
1. **XCUIApplication**: ใช้ควบคุมการทำงานของแอป  
2. **Query API**: ค้นหา UI elements เช่น:  
   - `app.buttons["Login"]`  
   - `app.textFields["Username"]`  
3. **User Actions**: จำลองการกระทำ เช่น:  
   - `button.tap()`  
   - `textField.typeText("Hello")`  

### **ตัวอย่าง UI Testing**
```swift
import XCTest

class MyUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        app.launch() // เปิดแอป
    }

    func testLoginButton() {
        let loginButton = app.buttons["Login"]
        XCTAssertTrue(loginButton.exists, "ปุ่ม Login ควรปรากฏบนหน้าจอ")
        loginButton.tap() // กดปุ่ม
    }
}
```

---

## **ความแตกต่างระหว่าง Unit Testing และ UI Testing**

| **ลักษณะ**            | **Unit Testing**                       | **UI Testing**                    |
|------------------------|----------------------------------------|------------------------------------|
| **ตรวจสอบ**            | Logic, ฟังก์ชัน                      | การโต้ตอบกับ UI                   |
| **เป้าหมาย**           | ตรวจสอบความถูกต้องของโค้ด             | ตรวจสอบการแสดงผลและการโต้ตอบ     |
| **ทำงานเร็ว/ช้า**      | เร็ว                                   | ช้า (ต้องรันแอป)                  |
| **การใช้งานจริง**       | Mock/Test Data                       | แอปจริง                            |

---

## **ประโยชน์ของ XCTest**
1. ช่วยป้องกัน bug และความผิดพลาด  
2. ทำให้มั่นใจว่าโค้ดทำงานถูกต้อง  
3. เพิ่มคุณภาพของแอปด้วยการทดสอบ UI และ logic  

