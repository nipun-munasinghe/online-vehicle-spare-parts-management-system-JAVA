# AutoElite – Online Vehicle Spare Parts Management System

A team project for an **Online Vehicle Spare Parts System** built with Java EE and Bootstrap.

---

## Overview

**AutoElite** is a web application designed to manage the complete process of browsing, buying, and administrating vehicle spare parts online. The project includes features for both end-users (customers and delivery personnel) as well as management (admins and managers). The main objective is to streamline the buying and selling of genuine vehicle parts using modern web technologies.

---

## Features

- **User Authentication:** Registration and login for all user roles
- **Product Catalogue:** Browse all spare parts with images, prices, and descriptions
- **Product Purchase:** Add to cart, place orders, view order history
- **Role-based Management:**
  - **Admin:** Manage all users, managers, products, and system settings
  - **Manager:** Manage products, handle messages
  - **Delivery Person:** View assigned orders
  - **Registered User:** Manage their accounts, purchase products
- **Messaging:** Contact and query forms for users to reach admins/managers
- **Responsive UI:** Mobile-friendly design using Bootstrap
- **Profile Pages:** Manage user details and profile photo
- **Secure Access:** Only authenticated users can access restricted areas
- **Order Management:** View and update the order statuses

---

## User Roles

- **Admin:** Full control over the system, managers management
- **Manager:** Can add/edit/delete products, respond to messages
- **Registered User:** Can login, browse & purchase products, manage profile
- **Delivery Person:** Access assigned deliveries, update status

---

## Technologies Used

- **Frontend:** HTML5, CSS3, JavaScript, Bootstrap 5
- **Backend:** Java EE (JSP, Servlets, JDBC), JSTL
- **Database:** MySQL
- **Dependencies:** [Bootstrap Icons](https://icons.getbootstrap.com/)
- **IDE:** Eclipse
- **Server:** Apache Tomcat

---

## How to Run

1. **Requirements:**
   - JDK 17+ (or matches your setup)
   - Apache Tomcat 9+ (or your servlet container)
   - MySQL 8+
   - Internet Connection (for CDNs if not hosting icons/fonts locally)

2. **Setup Database:**
   - Import the database schema (`.sql` provided in the /db or root directory)
   - Update your `/src/Service/DBConnection.java` with your DB URL, user and password

3. **Deploy Project:**
   - Import the project as a Maven or Dynamic Web Project in your IDE
   - Build and deploy on your local Tomcat server

4. **Start the Application:**
   - Visit [http://localhost:8080/online-spare-parts-management-system/](http://localhost:8080/online-spare-parts-management-system/)
   - Register as a new user, or login using a seeded admin account (`admin@example.com` / `password`)

---

## Screenshots

![Landing Page](./images/landing-page.png)

---

## Team Members

- [Nipun Munasinghe (Me)](https://github.com/nipun-munasinghe)
- [Thimira Thathsarana](https://github.com/ThimiraTJ)
- [Chanindu Isuranga](https://github.com/chaninduisuranga)
- [Heshani Munasinghe](https://github.com/hesh0331)

## License

© 2024 Sri Lanka Institute of Infomation Technology | Faculty Of Computing.  
This project is for educational purposes only.

---

## Contact

For any inquiries, please reach out at [nipunlakmal884@gmail.com](mailto:nipunlakmal884@gmail.com)
