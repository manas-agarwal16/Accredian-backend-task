# Accredian Backend Task - Refer Now API

This is a **Refer Now API** built using **Node.js, Express.js, MySQL, and Prisma ORM**. The API allows users to refer others for courses while ensuring that duplicate referrals for the same person and course are handled gracefully.

## 🚀 Features

- ✅ **Refer a person for a course**
- ✅ **Prevent duplicate referrals for the same person & course**
- ✅ **MySQL database with Prisma ORM**
- ✅ **Error handling & validation**
- ✅ **Deployed on Render**

## 🛠️ Tech Stack

- **Backend:** Node.js, Express.js
- **Database:** MySQL
- **ORM:** Prisma
- **Hosting:** Render

## 📂 Project Setup

### 1️⃣ Clone the Repository

```sh
git clone https://github.com/your-username/accredian-backend-task.git
cd accredian-backend-task
```

### 2️⃣ Install Dependencies

```sh
npm install
```

### 3️⃣ Set Up Environment Variables

Create a **.env** file and add:

```sh
DATABASE_URL=mysql://<USERNAME>:<PASSWORD>@<HOST>:<PORT>/<DATABASE>?sslaccept=strict&sslcert=/etc/secrets/aiven-ca.pem
CORS_ORIGIN=https://accredian-frontend-task-one-pink.vercel.app
PORT=8001
NODEMAILER_EMAIL=''
NODEMAILER_PASSWORD=''
```

### 4️⃣ Run Prisma Migrations

```sh
npx prisma migrate dev
npx prisma generate
```

### 5️⃣ Start the Server

```sh
npm start
```

## 🔗 API Endpoints

### 1️⃣ **Refer a Person**

- **Endpoint:** `POST /refer-now`

- **Request Body:**

  ```json
  {
  "referrerName": "John Doe",
  "referrerEmail": "john@example.com",
  "refereeName": "Jane Smith",
  "refereeEmail": "jane@example.com",
  "refereePhone": "9876543210", // (Optional)
  "courseName": "Full Stack Development",
  "referrerNote": "Highly recommended!", // (Optional)
  }
  ```

- **Response:**

  ```json
  {
    "message": "Your referral has been successfully recorded"
  }
  ```

- ✅ **Handles duplicate referrals for the same person and course**

## 🌍 Deployment

The API is deployed on Render:

🔗 **Backend URL:** [https://accredian-backend-task.onrender.com](https://accredian-backend-task.onrender.com)

