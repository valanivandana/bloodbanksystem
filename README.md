# Blood Bank Donor Management System

## Overview

The Blood Bank Donor Management System is a web-based application built using Django and Python. It helps manage blood donors, blood requests, and inventory efficiently.

## Prerequisites

Ensure you have the following installed before running the project:

- Python (latest stable version)
- Django framework
- MySQL Database (XAMPP recommended for local setup)
- PyCharm (or any preferred IDE)

## Installation & Setup

Follow these steps to set up and run the project:

### 1. Download and Extract

- Download the zip file containing the project.
- Extract the file and copy the `bbdms` folder.
- Paste it on your desktop or any desired location.

### 2. Set Up MySQL Database

- Open MySQL (using XAMPP or any MySQL server).
- Create a new database named `bbdmspythondb`.
- Import the SQL file available in the `SQL File` folder.

### 3. Open the Project in PyCharm/vs code

- Open PyCharm/vs code and navigate to the terminal.
- Use the `cd` command to navigate to the project folder:
  ```sh
  cd path_to_project_folder
  ```
  Example:
  ```sh
  cd C:\BLood-Bank-Donor-MS-Python-Django\bbdms\
  ```

### 4. Navigate to the Django App Folder

Move into the `bloodbanksystem` directory:

```sh
cd bloodbanksystem
```

### 5. Run the Django Development Server

Start the project with the following command:

```sh
python manage.py runserver
```

### 6. Access the Application

Open your browser and go to:

```
http://127.0.0.1:8000
```

## Login Credentials

### Admin Login

- **Username:** `admin`
- **Password:** `admin@1234`

### Donor Login

- **Username:** `test123`
- **Password:** `Test@123` (or register a new donor)

## Technologies Used

- Django (Python Framework)
- MySQL Database
- HTML, CSS, Bootstrap (Frontend)

## Contributing

If you would like to contribute, feel free to fork the repository and submit a pull request.

## License

This project is open-source and free to use for educational purposes.

---

Enjoy coding and managing blood donors efficiently!

