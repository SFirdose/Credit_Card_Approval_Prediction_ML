This GitHub repository contains a machine learning project for predicting credit card approval using a dataset stored in MySQL.

Overview
Credit card approval is a crucial task in the finance industry. Banks and financial institutions need to assess the creditworthiness of applicants before issuing credit cards to minimize the risk of defaults. This project aims to build a machine learning model that predicts whether a credit card application will be approved or denied based on various features such as income, age, credit score, and more.

Dataset
The dataset used for this project is stored in a MySQL database. It contains both input features and the target variable (approval status). You can find the SQL script to create the database and load the dataset in the data directory. The dataset includes the following columns:

Features name: (Credit_Card.csv)

Ind_ID: Client ID

Gender: Gender information

Car_owner: Having car or not

Propert_owner: Having property or not

Children: Count of children

Annual_income: Annual income

Type_Income: Income type

Education: Education level

Marital_status: Marital_status

Housing_type: Living style

Birthday_count: Use backward count from current day (0), -1 means yesterday.

Employed_days: Start date of employment. Use backward count from current day (0). Positive value means, individual is currently unemployed.

Mobile_phone: Any mobile phone

Work_phone: Any work phone

Phone: Any phone number

EMAIL_ID: Any email ID

Type_Occupation: Occupation

Family_Members: Family size


Another data set (Credit_card_label.csv) contains two key pieces of information

ID: The joining key between application data and credit status data, same is Ind_ID

Label: 0 is application approved and 1 is application rejected. Machine Learning
We have developed a machine learning model to predict credit card approval based on the provided dataset. The model is implemented in Python using popular libraries such as scikit-learn, pandas, and MySQL connector. You can find the Jupyter Notebook credit_card_approval_prediction.ipynb in the notebooks directory, which walks through the entire process of data preprocessing, model training, and evaluation.

Getting Started
To get started with this project, follow these steps:

Clone this repository to your local machine:

bash
Copy code
git clone https://github.com/SFirdose/Credit_Card_Approval_Prediction_ML.git
Set up a MySQL database and load the dataset using the SQL script in the data directory.


Contribution
Contributions to this project are welcome! If you have any ideas for improvements or bug fixes, please open an issue or submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
If you have any questions or need further information, feel free to contact me at firdose065@gmail.com

Happy coding!
