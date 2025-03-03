# **1. Python**
Data Types
```
x = 10       # int
y = 3.14     # float
flag = True  # bool
name = "John" # str
```

Data Structures
```
my_list = [1, 2, 3, 4, 5]  # Mutable list
my_tuple = (1, 2, 3)       # Immutable tuple
my_set = {1, 2, 3, 4, 5}   # Set with unique values
my_dict = {"name": "Alice", "age": 25}  # Dictionary (key-value pairs)
```

Functions
```
def greet(name):
    return f"Hello, {name}!"
print(greet("Alice"))
```

OOP
```
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def introduce(self):
        return f"My name is {self.name}, and I am {self.age} years old."

p = Person("Bob", 30)
print(p.introduce())
```

# **2. Java**
Data Structures
```
// Array (fixed-size collection of elements)
int[] myArray = {1, 2, 3, 4, 5};  // Array of integers

// ArrayList (dynamic array)
ArrayList<String> myList = new ArrayList<>();  // List of Strings
myList.add("Apple");

// HashSet (collection of unique elements)
HashSet<Integer> mySet = new HashSet<>();  // Set of integers
mySet.add(10);
mySet.add(10);  // Duplicate, will be ignored

// HashMap (key-value pairs)
HashMap<String, Integer> myMap = new HashMap<>();  // Map with String keys and Integer values
myMap.put("Alice", 25);

// Queue (FIFO structure)
Queue<Integer> myQueue = new LinkedList<>();  // Queue of integers
myQueue.add(100);
```

Functions
```
public class FunctionExample {
    // Function to greet a user
    public static String greet(String name) {
        return "Hello, " + name + "!";
    }

    public static void main(String[] args) {
        System.out.println(greet("Alice"));
    }
}
```

OOP
```
public class Person {
    private String name;
    private int age;

    // Constructor
    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Method
    public String introduce() {
        return "My name is " + name + ", and I am " + age + " years old.";
    }

    public static void main(String[] args) {
        Person person1 = new Person("Alice", 25);
        System.out.println(person1.introduce());
    }
}
```
# **3. SQL**

# **4. Linux**


# OLTP and OLAP
| Category             | OLAP (Online Analytical Processing)                        | OLTP (Online Transaction Processing)                      |
|----------------------|----------------------------------------------------------|----------------------------------------------------------|
| **Definition**       | It is well-known as an online database query management system. | It is well-known as an online database modifying system. |
| **Data source**      | Consists of historical data from various Databases.      | Consists of only operational current data.               |
| **Method used**      | It makes use of a data warehouse.                        | It makes use of a standard database management system (DBMS). |
| **Application**      | It is subject-oriented. Used for Data Mining, Analytics, Decision making, etc. | It is application-oriented. Used for business tasks.     |
| **Normalized**       | In an OLAP database, tables are not normalized.          | In an OLTP database, tables are normalized (3NF).       |
| **Usage of data**    | The data is used in planning, problem-solving, and decision-making. | The data is used to perform day-to-day fundamental operations. |
| **Task**            | It provides a multi-dimensional view of different business tasks. | It reveals a snapshot of present business tasks.        |
| **Purpose**         | It serves the purpose to extract information for analysis and decision-making. | It serves the purpose to Insert, Update, and Delete information from the database. |
| **Volume of data**   | A large amount of data is stored typically in TB, PB.    | The size of the data is relatively small as the historical data is archived in MB, and GB. |
| **Queries**         | Relatively slow as the amount of data involved is large. Queries may take hours. | Very Fast as the queries operate on 5% of the data. |
| **Update**          | The OLAP database is not often updated. As a result, data integrity is unaffected. | The data integrity constraint must be maintained in an OLTP database. |
| **Backup and Recovery** | It only needs backup from time to time as compared to OLTP. | The backup and recovery process is maintained rigorously. |
| **Processing time**  | The processing of complex queries can take a lengthy time. | It is comparatively fast in processing because of simple and straightforward queries. |
| **Types of users**   | This data is generally managed by CEO, MD, and GM.       | This data is managed by clerks and managers. |
| **Operations**      | Only read and rarely write operations.                     | Both read and write operations.                          |
| **Updates**         | With lengthy, scheduled batch operations, data is refreshed on a regular basis. | The user initiates data updates, which are brief and quick. |
| **Nature of audience** | The process is focused on the customer.                | The process is focused on the market.                   |
| **Database Design**  | Design with a focus on the subject.                      | Design that is focused on the application.              |
| **Productivity**     | Improves the efficiency of business analysts.            | Enhances the user’s productivity.                       |


