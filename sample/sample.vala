namespace GtkSourceView {
    
    public class Vampire {
        public string location;
        public int birth_date;
        public int death_date;
        public string[] weakness;
        
        public int age {
            get {
                return death_date - birth_date;
            }
        }
        
        public string to_string() {
            return @"$location $birth_date $death_date {$(string.joinv(", ", weakness))}";
        }
    }
    
    void main() {
        var dracula = new Vampire() {
            location = "Transylvania",
            birth_date = 1428,
            death_date = 1476,
            weakness = { "Sunlight", "Garlic" }
        };
        
        print(@"$dracula\n");
        print(@"$(dracula.age)\n");
    }
}
