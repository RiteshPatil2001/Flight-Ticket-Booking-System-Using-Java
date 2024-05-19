

# FlyEase Flight Ticket Booking System

FlyEase is a flight ticket booking system built using Java Spring Boot MVC framework. It allows users to search for flights, book tickets, and manage their bookings conveniently.

## Installation

### Prerequisites
- Java JDK installed on your system
- Maven installed on your system
- MySQL installed on your system

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/RiteshPatil2001/Flight-Ticket-Booking-System-Using-Java.git
   ```

2. Navigate to the project directory:
   ```bash
   cd Flight-Ticket-Booking-System-Using-Java
   ```

3. Update database details:
   - Open `src/main/resources/application.properties` file.
   - Update the MySQL database details under `spring.datasource.*`.
   - Create a MySQL database with the provided details. No need to create tables, the program will automatically create them on startup.

4. Activate Payment Integration:
   - Open `src/main/webapp/WEB-INF/views/booking.jsp` file.
   - Go to line number 343 and replace `razorpay-text-api-id` with your Razorpay API ID.
   - Open `src/main/java/controller/UserController.java` file.
   - Go to line number 173 and replace `razorpay-text-api-id` and `razorpay-secret-ID` with your API's ID to activate payment integration.

5. Run the application:
   ```bash
   mvn spring-boot:run
   ```
   Or Run project using IDE like Eclipse or VsCode

6. Access the application:
   - Open a web browser and navigate to `http://localhost:2001`.

7. Set up admin credentials:
   - After running the application, the necessary tables will be created in the MySQL database.
   - Manually insert admin credentials into the `admin` table in the database.

## Features
- Search and book flights.
- Manage bookings.
- Payment integration with Razorpay.
- Admin panel for managing system settings.

## Technologies Used
- Java Spring Boot
- MVC framework
- MySQL database
- Maven for dependency management

## Contributors
- [Ritesh patil](https://github.com/RiteshPatil2001)
- [Anjali Salvi](https://github.com/Anjali-Salvi)

Feel free to customize it further according to your needs or add any additional information about the project.
