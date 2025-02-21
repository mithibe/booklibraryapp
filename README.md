# 📚 Book Lending Library (Rails 8 + Ruby 3.3 + SQLite)

A simple book lending library application built with **Ruby on Rails 8** and **SQLite**.  
This app allows users to **add, view, update, and delete books** as well as **track book borrowing and returning history**.  

---

## 🚀 Features

-  **Manage Books** (Create, Read, Update, Delete)
-  **Track Borrowing History** (Who borrowed a book, when, and when they returned it)
-  **Search Borrowing History by Borrower Name**
-  **Validation for Required Fields**
-  **Automatic Borrow and Return Date Recording**

---

## 🛠️ Installation & Setup  

### 1️⃣ **Install Prerequisites**  
Ensure you have the following installed on your system:  

- **Ruby 3.3** → Install via [Ruby Installer](https://rubyinstaller.org/) (Windows) or [RVM](https://rvm.io/) (Linux/macOS)  
- **Rails 8** → Install using `gem install rails`  
- **SQLite** → Already included with Ruby, but install it manually if needed:  
  ```bash
  gem install sqlite3
  ```
- **Git** → Install from [git-scm.com](https://git-scm.com/)  

---

### 2️⃣ **Clone the Repository**  

```bash
git clone <YOUR_REPO_URL>
cd <YOUR_REPO_FOLDER>
```

---

### 3️⃣ **Install Dependencies**  

```bash
bundle install
```

---

### 4️⃣ **Set Up the Database**  

```bash
rails db:migrate
```

---

##  How to Use the App  

### 1️⃣ **Start the Server**  

```bash
rails server
```

Then open **http://localhost:3000** in your browser.  

---

### 2️⃣ **Managing Books**  
- Click **"Add New Book"** to create a book.  
- Click a book to view details.  
- Edit or delete books as needed.  

---

### 3️⃣ **Borrowing a Book**  
- Click **"Borrow Book"** on a book’s page.  
- Enter the **borrower’s name**.  
- The book will be marked as borrowed.  

---

### 4️⃣ **Returning a Book**  
- Click **"Mark as Returned"** next to an active borrowing record.  
- The book’s return date will be recorded.  

---

### 5️⃣ **View Borrowing History**  
- A book’s page shows its full borrowing history.  
- To view a **specific borrower’s history**, search by name on the homepage.  

---

##  Testing the Application  

### Run Model & Controller Tests  
```bash
rails test
```

---

##  Project Structure  

```
 app
 ├──  controllers       # Handles app logic (Books & Borrowings)
 ├──  models            # Handles data (Book & Borrowing)
 ├──  views             # HTML templates (Books & Borrowings)
 ├──  db                # Database migrations & schema
 └──  config            # App configuration & routes
```

---

## 🤝 Contributing  
Feel free to fork this repo and contribute! Create a pull request with your changes.  

---

### 🎉 Happy Coding!
