@isTest
public class ListPracticeTest {
    @isTest
    public static void addPlanetTest() {
        system.assertEquals('Planet added successfully', ListPractice.addPlanet('Earth', 3, 1));
        system.assertEquals('Planet without name cannot be added to the list', ListPractice.addPlanet('', 3, 1));
    }
}