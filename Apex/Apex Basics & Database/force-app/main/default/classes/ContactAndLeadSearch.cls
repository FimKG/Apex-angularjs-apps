/**
 * Created by kgaug on 2023/05/26.
 */

public with sharing class ContactAndLeadSearch {

    /*
    Create an Apex class that returns both contacts and leads based on a parameter.
To pass this challenge, create an Apex class that returns both contacts and leads that have first or last name matching the incoming parameter.
The Apex class must be called ContactAndLeadSearch and be in the public scope
The Apex class must have a public static method called searchContactsAndLeads
The method must accept an incoming string as a parameter
The method should then find any contact or lead that matches the string as part of either the first or last name
The method should finally use a return type of List<List< sObject>>
NOTE: Because SOSL indexes data for searching, you must create a Contact record and Lead record before checking this challenge. Both records must have the last name Smith. The challenge uses these records for the SOSL search
     */

    public static List<List<SObject>> searchContactsAndLeads(String name) {
        List<List<SObject>> searchList = [FIND :name IN ALL FIELDS
        RETURNING Contact(Name), Lead(Name)];

//        Contact[] searchContacts = (Contact[])searchList[0];
//        Lead[] searchLeads = (Lead[])searchList[1];
//
//        for(Contact c : searchContacts) {
//
//        }

        return searchList;


    }
}