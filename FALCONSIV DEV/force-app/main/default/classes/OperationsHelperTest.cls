@isTest
public class OperationsHelperTest {
    @isTest
    public static void largestOutOfTwoNumbersTest() {
        OperationsHelper obj1 = new OperationsHelper();
        Decimal dec1  =obj1.largestOutOfTwoNumbers(2,5);
        OperationsHelper obj2 = new OperationsHelper();
        Decimal dec2  =obj2.largestOutOfTwoNumbers(5,2);
        system.assertEquals(5, dec1);
        system.assertEquals(5, dec1);
    }
    @isTest
    public static void smallestOutOfThreeNumbersTest() {
        Decimal dec1  =OperationsHelper.smallestOutOfThreeNumbers(2,5,10);
        Decimal dec2  =OperationsHelper.smallestOutOfThreeNumbers(10,2,5);
        Decimal dec3  =OperationsHelper.smallestOutOfThreeNumbers(5,10,2);
        system.assertEquals(2, dec1);
        system.assertEquals(2, dec2);
        system.assertEquals(2, dec3);
    }
    @isTest
    public static void sumTest() {
        List<Decimal> decList = new List<decimal>{1,3,4,6,8};
        List<Decimal> decList2 = new List<decimal>();
        Decimal dec1 = OperationsHelper.sum(decList);
        system.assertEquals(22, dec1);
        Decimal dec2 = OperationsHelper.sum(decList2);
        system.assertEquals(null, dec2);
    }

    @isTest
    public static void averageTest() {
        List<Decimal> decList3 = new List<decimal>{1,3,4,6,8};
        List<Decimal> decList4 = new List<decimal>();
        Decimal dec3 = OperationsHelper.average(decList3);
        system.assertEquals(4.4, dec3);
        Decimal dec4 = OperationsHelper.average(decList4);
        system.assertEquals(null, dec4);
    }
//=============================================================
    @isTest
    public static void highestTest() {
        List<Decimal> decList5 = new List<decimal>{1,3,4,6,8};
        List<Decimal> decList6 = new List<decimal>{12,45,3,56,1};
        List<Decimal> decList7 = new List<decimal>();
        Decimal dec5 = OperationsHelper.highest(decList5);
        system.assertEquals(8, dec5);
        Decimal dec6 = OperationsHelper.highest(decList6);
        system.assertEquals(56, dec6);
        Decimal dec7 = OperationsHelper.highest(decList7);
        system.assertEquals(null, dec7);
    }
//===============================================================
    @isTest
    public static void lowestTest() {
        List<Decimal> decList8 = new List<decimal>{1,3,4,6,8};
        List<Decimal> decList9 = new List<decimal>{12,45,3,56,1};
        List<Decimal> decList10 = new List<decimal>();
        Decimal dec8 = OperationsHelper.lowest(decList8);
        system.assertEquals(1, dec8);
        Decimal dec9 = OperationsHelper.lowest(decList9);
        system.assertEquals(1, dec9);
        Decimal dec10 = OperationsHelper.lowest(decList10);
        system.assertEquals(null, dec10);
    }
//==============================================================
    @isTest
    public static void reverseOrderTest() {
        List<Decimal> inputList1 = new List<decimal>{1,3,4,6,8};
        List<Decimal> outputList1 = new List<decimal>{8,6,4,3,1};
        List<Decimal> inputList2 = new List<decimal>{12,45,3,56,1};
        List<Decimal> outputList2 = new List<decimal>{1,56,3,45,12};
        
        OperationsHelper.reverseOrder(inputList1);
        // system.assert(outputList1[1]==6);
        OperationsHelper.reverseOrder(inputList2);
        // system.assert(outputList2[3]==45);
        
    }
//==============================================================
}