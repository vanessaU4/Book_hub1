#  Book Hub – Full Stack Application with DevOps Foundation

**Book Hub** is a full-stack web application that allows users to browse, search, and discover books through a responsive and modern UI. This project is professionally structured with DevOps best practices including secure repository configuration, automated CI workflows, and structured project planning.

---

## Tech Stack

### 🔹 Frontend
- React + TypeScript
- Vite
- Context API & Redux

### 🔹 Backend
- Python, Django
- Django REST Framework

### 🔹 Database
- SQLite (Development)
- PostgreSQL (Optional for Production)

### 🔹 DevOps & Tooling
- GitHub Actions for CI
- Branch Protection Rules
- GitHub Projects for task tracking

---

## 🚀 Key Features

- 🔍 Browse and search books by title or author
- 📚 Filter by genre, author, or published date
- 📱 Fully responsive design
- ⚙️ REST API for all CRUD operations on book data
- ✅ CI pipeline for automated linting and unit testing on pull requests

---

## 📂 API Endpoints

| Method | Endpoint              | Description          |
|--------|-----------------------|----------------------|
| GET    | `/api/books/`         | Get all books        |
| GET    | `/api/books/<id>/`    | Get a specific book  |
| POST   | `/api/books/`         | Add a new book       |
| PUT    | `/api/books/<id>/`    | Update a book        |
| DELETE | `/api/books/<id>/`    | Delete a book        |

---

## 🧪 Continuous Integration (CI)

Book Hub uses **GitHub Actions** for automated CI that runs on every pull request to ensure high code quality and stability.

### ✅ CI Tasks:
- **Linting** with ESLint and Flake8
- **Unit tests** with Jest and Pytest
- **Triggered on:** Pull Requests to `main` or `develop`

> The `main` branch is protected and requires PR review + passing status checks before merge.

---

## 🛠 Local Development Setup

### 🔹 Backend (Django)
```bash
# 1. Clone the repo
git clone https://github.com/vanessaU4/book_hub.git
cd book-hub/backend

# 2. Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Run migrations and start server
python manage.py migrate
python manage.py runserver
````

### 🔹 Frontend (React + Vite)

```bash
cd ../frontend

# 1. Install dependencies
npm install

# 2. Start development server
npm run dev
```

---

## 📋 Project Management

* 🗂 Epics for CI/CD, containerization, infrastructure setup
* ✅ Task breakdown with PR linking
* 📌 Workflow automation for agile delivery

---

## 🔐 Repository Security

* `main` branch is protected with:

  * Required pull requests before merging
  * Required status checks (CI must pass)
  * At least one reviewer approval
* Feature branches used for development and merged via PRs

---

## 🧠 Future Enhancements

* 🔐 User authentication
* 🌟 Book rating system
* 📄 Pagination and sorting

---

## 📌 Useful Links

* 🔗 **Link to public Github)**: https://github.com/vanessaU4/Book_hub
* 🔗 **Project Board**:  https://github.com/users/vanessaU4/projects/2


---

## 👩🏽‍💻 Author

**Vanessa UMUGWANEZA**
v.umugwanez@alustudent.com
---

## 📄 License

This project is open-source and licensed under the [MIT License](LICENSE).
