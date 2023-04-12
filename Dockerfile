# FROM ubuntu
FROM python
WORKDIR /app

# RUN sudo install python3

# # https://www.dol.gov/agencies/eta/foreign-labor/performance

RUN pip install xlsx2csv
RUN pip install sqlite-utils

ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2021_Q1.xlsx /FY2021_Q1.xlsx
RUN xlsx2csv /FY2021_Q1.xlsx /FY2021_Q1.csv
RUN sqlite-utils insert /data.db FY2021_Q1 /FY2021_Q1.csv --csv

ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2021_Q2.xlsx /FY2021_Q2.xlsx
RUN xlsx2csv /FY2021_Q2.xlsx /FY2021_Q2.csv
RUN sqlite-utils insert /data.db FY2021_Q2 /FY2021_Q2.csv --csv

# ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2021_Q3.xlsx /FY2021_Q3.xlsx
# RUN xlsx2csv /FY2021_Q3.xlsx /FY2021_Q3.csv

# ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2021_Q4.xlsx /FY2021_Q4.xlsx
# RUN xlsx2csv /FY2021_Q4.xlsx /FY2021_Q4.csv

# ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2022_Q1.xlsx /FY2022_Q1.xlsx
# RUN xlsx2csv /FY2022_Q1.xlsx /FY2022_Q1.csv

# ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2022_Q2.xlsx /FY2022_Q2.xlsx
# RUN xlsx2csv /FY2022_Q2.xlsx /FY2022_Q2.csv

# ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2022_Q3.xlsx /FY2022_Q3.xlsx
# RUN xlsx2csv /FY2022_Q3.xlsx /FY2022_Q3.csv

# ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2022_Q4.xlsx /FY2022_Q4.xlsx
# RUN xlsx2csv /FY2022_Q4.xlsx /FY2022_Q4.csv

# ADD https://www.dol.gov/sites/dolgov/files/ETA/oflc/pdfs/LCA_Disclosure_Data_FY2023_Q1.xlsx /FY2023_Q1.xlsx
# RUN xlsx2csv /FY2023_Q1.xlsx /FY2023_Q1.csv


