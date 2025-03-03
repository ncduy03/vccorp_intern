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
| Feature         | **OLTP (Online Transaction Processing)** | **OLAP (Online Analytical Processing)** |
|---------------|----------------------------------------|----------------------------------------|
| **Purpose**   | Real-time transaction processing     | Data analysis, reporting, decision-making |
| **Data Type** | Current, operational data            | Historical, aggregated data |
| **Query Type** | Simple queries (INSERT, UPDATE, DELETE) | Complex queries (JOINs, Aggregations) |
| **Performance** | Low latency (fast transactions) | High throughput (optimized for large queries) |
| **Data Storage** | Normalized (to reduce redundancy) | Denormalized (for faster queries) |
| **Concurrency** | Supports thousands of users | Supports fewer users |
| **Example Use Cases** | Banking, retail, e-commerce | Business intelligence, reporting, trend analysis |
| **Technology** | MySQL, PostgreSQL, SQL Server | Snowflake, Redshift, BigQuery |



