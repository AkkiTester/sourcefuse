*** Settings ***
Library    SeleniumLibrary
#Library         DatabaseLibrary
Test Setup    Open Browser With URL
Test Teardown    Close Browser
*** Variables ***

${User name}    sfwebhtml
${Password}     t63KUfxL5vUyFLG4eqZNUcuRQ

*** Keywords ***
open browser with URL
    Open Browser    http://${User name}:${Password}@sfwebhtml.sourcefuse.com/automation-form-demo-for-interview/     chrome

*** Test Cases ***
TestCase1

    Click Button    xpath://button[@type='submit']


TestCase2

    Page Should Contain Element      xpath:(//input[@type='text'])[1]
    Page Should Contain Element      xpath:(//input[@type='text'])[2]
    Page Should Contain Element      xpath:(//input[@type='email'])
    Page Should Contain Element      xpath:(//input[@type='text'])[3]
    Page Should Contain Element      xpath:(//input[@type='tel'])
    Page Should Contain Element      xpath:(//input[@type='text'])[4]
    Page Should Contain Element      xpath:(//input[@type='text'])[5]
    Page Should Contain Element      xpath:(//input[@type='url'])
    Page Should Contain Element      xpath:(//input[@type='text'])[6]
    Page Should Contain Element      xpath:(//input[@type='text'])[7]
    Page Should Contain Element      xpath://textarea[@id='address']
    Page Should Contain Element      xpath:(//input[@type='file'])
    Page Should Contain Element      xpath://input[@id='yes']
    Page Should Contain Element      xpath://input[@id='no']
    Page Should Contain Element      xpath://input[@id='notSure']

TestCase3

    Input Text          xpath:(//input[@type='text'])[1]    Akash
    Input Text          xpath:(//input[@type='text'])[2]    Dilwale
    Input Text          xpath:(//input[@type='email'])      akashdilwale@gmail.com
    Input Text          xpath:(//input[@type='text'])[3]    Smart Software Solution
    Input Text          xpath:(//input[@type='tel'])        7058221614
    Input Text          xpath:(//input[@type='text'])[4]    09/06/1995
    Input Text          xpath:(//input[@type='text'])[5]    Software Tester
    Input Text          xpath:(//input[@type='url'])        https://akashdilwale.netlify
    Input Text          xpath:(//input[@type='text'])[6]    1000000 negotiable
    Input Text          xpath:(//input[@type='text'])[7]    07/20/2023
    Input Text          xpath://textarea[@id='address']     At Post Paithn Aurangabad Maharastra
    Choose File         xpath:(//input[@type='file'])       C:\\Users\\ADMIN\\Desktop\\Akash_STE.pdf
    Click Element       xpath://input[@id='yes']
    Click Button        xpath://button[@type='submit']


#Test Case 4: Verify DB entry after submitting the form
#DB ID and Pass Not provider --- i can check in db by manual testing just fetch the table and check recent input in presnt in table or not
#just run below query
# select * from Table_name where Name='Akash'


#Test Case 5: Verify Email is triggered or not after submitting the form using assertion on DB considering an email trigger column as email_sent.
#After the form submission, it executes a query on the database using the Query keyword from the DatabaseLibrary. You need to specify the appropriate SQL query to retrieve the email_sent column value from the relevant table based on your database.*** Variables ***
#SELECT email_sent FROM your_table WHERE form_id = 'your_form_id'