/**
 * Created by kgaug on 2023/05/31.
 */
/*
Create an Apex trigger
Create an Apex trigger that sets an account’s Shipping Postal Code to match the Billing Postal Code if the Match Billing Address option is selected. Fire the trigger before inserting an account or updating an account.

Pre-Work:
Add a checkbox field to the Account object:

Field Label: Match Billing Address
Field Name: Match_Billing_Address
Note: The resulting API Name should be Match_Billing_Address__c.
Create an Apex trigger:
Name: AccountAddressTrigger
Object: Account
Events: before insert and before update
Condition: Match Billing Address is true
Operation: set the Shipping Postal Code to match the Billing Postal Code
*/
trigger AccountAddressTrigger on Account (before insert, before update) {

    for (Account acct : Trigger.new){
       if (acct.Match_Billing_Address__c == true) {
           acct.ShippingPostalCode = acct.BillingPostalCode;

       }
/*       else if (Trigger.isUpdate) {

       }*/

    }
}