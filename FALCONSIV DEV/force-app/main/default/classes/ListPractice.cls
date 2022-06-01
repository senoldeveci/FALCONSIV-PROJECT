public class ListPractice {
    // Public static List<Planets> allPlanets = new List<Planets>();
   

    // public static string addPlanet(string name, integer num1, integer num2){
    //     string msg ='';
    //     if (name!=null && name!=''){
    //         Planets plnt1 = new Planets();
    //         plnt1.planetName = name;
    //         plnt1.planetNumber = num1;
    //         plnt1.numberOfMoon = num2;
    //         allPlanets.add(plnt1);
    //         msg = 'Planet added successfully';
    //     }else {
    //         msg = 'Planet without name cannot be added to the list';
    //     }
    //     return msg;
        
    // }
    Public static List<Planets> planetsList = new List<Planets>();

    public static string addPlanet(string name, integer num1, integer num2){
        string msg = '';
        if (name!=null && name!=''){
            Planets planet1 = new Planets();
            planet1.planetName = name;
            planet1.planetNumber = num1;
            planet1.numberOfMoon = num2;
            planetsList.add(planet1);
            msg = 'Planet added successfully';
        }else {
            msg = 'Planet without name cannot be added to the list';
        }
        return msg;
    }
}