# **1. Học các kỹ năng nền tảng**
## 1.1. Python
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

## 1.2. Java
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
## 1.3. SQL

## 1.4. Linux
# **2. Phân biệt OLTP vs OLAP, hiểu rõ ETL/ELT**

| Tiêu chí              | OLTP (Xử lý giao dịch)          | OLAP (Phân tích dữ liệu)       |
|----------------------|--------------------------------|--------------------------------|
| **Mục đích**         | Xử lý giao dịch nhỏ, nhanh      | Phân tích dữ liệu lớn, báo cáo |
| **Dữ liệu**          | Dữ liệu giao dịch thời gian thực | Dữ liệu tổng hợp, lịch sử     |
| **Tốc độ xử lý**     | Rất nhanh (Milliseconds)       | Chậm hơn (Seconds - Minutes)  |
| **Tải xử lý**        | Nhiều giao dịch đồng thời      | Ít người dùng, truy vấn nặng  |
| **Cơ sở dữ liệu**    | Quan hệ (RDBMS: MySQL, PostgreSQL) | Data Warehouse (BigQuery, Redshift, Snowflake) |
| **Truy vấn phổ biến** | CRUD (Create, Read, Update, Delete) | Aggregation (SUM, AVG, COUNT, GROUP BY) |
| **Thiết kế dữ liệu**  | Lưu theo hàng (Row-based Storage) | Lưu theo cột (Column-based Storage) |
| **Tính nhất quán**   | Rất quan trọng (ACID)         | Ít quan trọng hơn, chỉ cần tính toàn vẹn dữ liệu |
| **Ứng dụng thực tế** | Ngân hàng, thương mại điện tử, POS | Báo cáo doanh thu, phân tích hành vi khách hàng |


# 3. Tìm hiểu các khái niệm CAP, BASE, ACID
## 3.1. CAP theorem
- **Consistency (Tính nhất quán)**: Mọi node trong hệ thống phải có cùng một dữ liệu tại cùng một thời điểm.
- **Availability (Tính sẵn sàng)**: Hệ thống luôn phản hồi yêu cầu, ngay cả khi một số node bị lỗi.
- **Partition Tolerance (Chịu lỗi phân vùng)**: Hệ thống vẫn hoạt động ngay cả khi có lỗi mạng làm mất kết nối giữa các node.

## 3.2. ACID vs BASE
### ACID (SQL)
- **Atomicity (Tính nguyên tử)**: Giao dịch phải thực hiện toàn bộ hoặc không có gì xảy ra.
- **Consistency (Tính nhất quán)**: Dữ liệu luôn hợp lệ trước và sau khi giao dịch hoàn tất.
- **Isolation (Tính cô lập)**: Giao dịch không bị ảnh hưởng bởi các giao dịch khác đang chạy đồng thời.
- **Durability (Tính bền vững)**: Dữ liệu vẫn tồn tại ngay cả khi có sự cố hệ thống.

### BASE (NoSQL)
- **Basically Available (Tính sẵn sàng cơ bản)**: Hệ thống luôn phản hồi, ngay cả khi có lỗi hoặc dữ liệu chưa được cập nhật đầy đủ.
- **Soft-state (Trạng thái mềm dẻo, không nhất quán ngay lập tức)**: Dữ liệu có thể thay đổi mà không cần sự can thiệp ngay lập tức.
- **Eventually Consistent (Nhất quán sau một khoảng thời gian nhất định)**: Dữ liệu không cần chính xác ngay lập tức, nhưng sẽ đồng bộ theo thời gian.


