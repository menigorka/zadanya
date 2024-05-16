CREATE TABLE specialities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10),
    title VARCHAR(100)
);

CREATE TABLE subjects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100)
);

CREATE TABLE subjects_to_specialities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    speciality_id INT,
    subject_id INT,
    FOREIGN KEY (speciality_id) REFERENCES specialities(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

CREATE TABLE schedule (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject_id INT,
    date DATE,
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);
