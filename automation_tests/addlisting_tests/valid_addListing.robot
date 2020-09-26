*** Settings ***
Documentation     A test suite with a single test for valid add listing.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resourceListing.robot

*** Test Cases ***
Valid Add Listing
    Open Browser To Login Page
    Input Username    reb@gmail.com
    Input Password    12345678
    Submit Credentials
    Dashboard Page Should Be Open
    Click Profile
    Profile Should be Open
    Click Listing
    Listing Should be Open
    Select Title   Among Us      
    Input Price    200
    Input Condition    Good as New
    Submit Credentials Upload
    Profile Should be Open
    [Teardown]    Close Browser

Invalid Add Listing - invalid price
    Open Browser To Login Page
    Input Username    reb@gmail.com
    Input Password    12345678
    Submit Credentials
    Dashboard Page Should Be Open
    Click Profile
    Profile Should be Open
    Click Listing
    Listing Should be Open
    Select Title   Among Us      
    Input Price    Invalid
    Input Condition    Good as New
    Submit Credentials Upload
    Listing Should be Open
    [Teardown]    Close Browser

Invalid Add Listing - Skip Select Game Title
    Open Browser To Login Page
    Input Username    reb@gmail.com
    Input Password    12345678
    Submit Credentials
    Dashboard Page Should Be Open
    Click Profile
    Profile Should be Open
    Click Listing
    Listing Should be Open    
    Input Price    Invalid
    Input Condition    Good as New
    Submit Credentials Upload
    Listing Should be Open
    [Teardown]    Close Browser