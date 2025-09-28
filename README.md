# Motor Vehicle Repair Request — UNF → 3NF Normalization  

**Authors:** Vanness Christian Rulianto, Rayhan Permana, Josh Manuel Kristanto, Ghazi Athari.

---

## Project summary
This project normalizes a Motor Vehicle Repair Request Report Form (original UNF) into 3NF, documents functional dependencies and anomalies, produces an ERD, and provides SQL schema and sample data to demonstrate the normalized database. The full project report with assumptions, steps, and examples is included.

---

## What’s included
*(Add or replace files in the repo as appropriate)*

- `Project_Report.pdf` — final project report (UNF, FDs, 1NF→2NF→3NF mapping, assumptions, ERD snapshots, SQL examples).
- `SQL Table Code (normalized).sql` — final CREATE TABLE statements (3NF schema) and value insertion.  
- `UNF_to_3NF_mapping.xlsx` — Excel mapping from UNF → 3NF (recommended).  
- `erd.png` — ERD image (exported from your modeling tool).  
- `Slides.pdf` — presentation slides (optional).  
- `Form Sample(UNF)` — original form UNF.

> Note: `Project_Report.pdf` is included in this repo and contains the detailed normalization steps, functional dependencies, and project assumptions.

---

## Key highlights (from the report)
- **Case & purpose:** The form is used by subsidiaries to request vehicle repair budget approvals. Normalization improves data integrity and auditability.
- **Anomalies identified:** insertion, deletion, and update anomalies demonstrated on the UNF sample.
- **Functional Dependencies:** several FDs were extracted (e.g., `Nama Perusahaan → Alamat Perusahaan, Tel. Perusahaan, Web Perusahaan, Disetujui Oleh`; `No_Pol → KM_Sekarang, Model, Tahun_Pembuatan, Nama_Perusahaan, Pemohon`, etc.).
- **Normalization steps:** 1NF (atomic attributes), 2NF (eliminate partial dependencies), 3NF (remove transitive dependencies), with resulting ERD and table groupings described in the report.
