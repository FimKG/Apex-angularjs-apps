public with sharing class StringArrayTest {
    public StringArrayTest() {

    }

    /* generateStringArray method must return a list of strings
    method must accept an incoming Integer as a parameter
    return a list of strings*/
    public static List<String> generateStringArray(Integer numString) {
        List<String> testList = new List<String>();

        for(Integer i=0; i < numString; i++) {
            testList.add('Test ' + i);
            System.debug(testList[i]);
        }
        return testList;
    }
}