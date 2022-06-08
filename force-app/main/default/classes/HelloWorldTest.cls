@isTest
public with sharing class HelloWorldTest {
    public HelloWorldTest() {
    }

    static testMethod void test1() {
        Test.startTest();
        String str = HelloWorld.greeting('Mike');
        Test.stopTest();
        System.assertEquals(str, 'Hello Mike');
    }
}
