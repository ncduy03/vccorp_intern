# **1. Học các kỹ năng nền tảng**
## SQL
- Tối ưu Query
  - Dùng index
  - Hạn chế sử dụng % (LIKE)
  - Hạn chế sử dụng full outer join
  - Hạn chế sử dụng SELECT *
  - Hạn chế sử dụng DISTINCT

## Linux

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


# **3. Tìm hiểu các khái niệm CAP, BASE, ACID**
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

# **4. Nghiên cứu các nền tảng Big Data**
## 4.1 Hadoop
- **Hadoop Distributed File System (HDFS)**: Phân tán dữ liệu  
    - **NameNode**: Quản lý metadata của hệ thống tệp.  
    - **DataNode**: Lưu trữ dữ liệu thực tế.  
    - **Secondary NameNode**: Hỗ trợ NameNode bằng cách tạo snapshot metadata.  

- **Yet Another Resource Negotiator (YARN)**: Quản lý tài nguyên  
    - **ResourceManager**: Quản lý và phân phối tài nguyên trong cluster.  
    - **NodeManager**: Giám sát tài nguyên trên từng node.  
    - **ApplicationMaster**: Điều phối các container và xử lý yêu cầu ứng dụng.  

- **MapReduce Processing Framework**: Xử lý dữ liệu song song  
    - **Map Phase**: Chia dữ liệu thành các phần nhỏ và xử lý song song.  
    - **Shuffle & Sort Phase**: Gom nhóm và sắp xếp dữ liệu trước khi đưa vào Reduce.  
    - **Reduce Phase**: Tổng hợp và xử lý dữ liệu cuối cùng để tạo ra kết quả.  

## 4.2. Apache Spark
- **Spark Core**: Thành phần cốt lõi của Spark, cung cấp các chức năng xử lý dữ liệu phân tán  
    - **RDD (Resilient Distributed Dataset)**: Cấu trúc dữ liệu chính giúp lưu trữ và xử lý dữ liệu phân tán.  
    - **Task Scheduling**: Lập lịch và phân phối công việc trên cluster.  
    - **Memory Management**: Quản lý bộ nhớ và tối ưu hóa thực thi.  

- **Spark SQL**: Xử lý dữ liệu có cấu trúc bằng SQL và DataFrame API  
    - **DataFrame API**: Cung cấp API mạnh mẽ để thao tác với dữ liệu có cấu trúc.  
    - **Catalyst Optimizer**: Hệ thống tối ưu hóa truy vấn giúp cải thiện hiệu suất.  
    - **Tích hợp với hệ thống lưu trữ**: Hỗ trợ HDFS, Hive, Parquet, JSON, JDBC, v.v.  

- **Spark Streaming**: Xử lý dữ liệu thời gian thực với mô hình micro-batch  
    - **DStream (Discretized Stream)**: Định dạng dữ liệu dòng thời gian thực trong Spark.  
    - **Window Operations**: Thực hiện các phép toán trên cửa sổ thời gian.  
    - **Tích hợp với Kafka, Flume, Kinesis**: Xử lý dữ liệu từ nhiều nguồn streaming phổ biến.  

- **Spark ML**: Thư viện Machine Learning hỗ trợ các thuật toán học máy  
    - **Thuật toán học máy**: Hỗ trợ các mô hình phân cụm, phân loại, hồi quy.  
    - **Pipeline API**: Xây dựng quy trình Machine Learning tự động.  
    - **MLlib**: Thư viện cũ trước đây của Spark ML.  

- **GraphX**: Xử lý dữ liệu đồ thị và thuật toán đồ thị  
    - **API Graph Processing**: Hỗ trợ thao tác trên dữ liệu dạng đồ thị.  
    - **Thuật toán đồ thị**: Hỗ trợ PageRank, Connected Components, Shortest Path, v.v.  

## 4.3 Apache Kafka  
- **Kafka Cluster**: Hệ thống xử lý và truyền dữ liệu phân tán  
    - **Broker**: Máy chủ Kafka chịu trách nhiệm lưu trữ dữ liệu và xử lý yêu cầu từ producer và consumer.  
    - **Topic**: Kênh dữ liệu logic nơi producer gửi dữ liệu và consumer đọc dữ liệu.  
    - **Partition**: Chia nhỏ dữ liệu trong topic để tăng khả năng mở rộng và xử lý song song.  

- **Producer & Consumer**: Gửi và nhận dữ liệu trong Kafka  
    - **Producer**: Gửi dữ liệu vào các topic trong Kafka theo mô hình publish-subscribe.  
    - **Consumer**: Nhận dữ liệu từ Kafka để xử lý, có thể thuộc một Consumer Group để đọc dữ liệu song song.  
    - **Consumer Group**: Nhóm các consumer để chia sẻ tải và xử lý dữ liệu từ các partition.  

- **Kafka Cluster Management**: Quản lý và điều phối hệ thống  
    - **Zookeeper**: Quản lý metadata của Kafka, theo dõi trạng thái các broker, topic và consumer offset.  
    - **Leader & Follower Partition**: Cơ chế sao chép dữ liệu giữa các broker để đảm bảo tính sẵn sàng và khôi phục khi lỗi.  
    - **Replication Factor**: Xác định số lượng bản sao của mỗi partition để bảo vệ dữ liệu khỏi mất mát.  

# **5. Kappa Architecture vs Lambda Architecture**
## 5.1. Kappa Architecture
- **Streaming Layer (Lớp xử lý dòng dữ liệu)**
    - Xử lý dữ liệu ngay khi nó xuất hiện.
    - Dữ liệu cũ có thể được tái xử lý bằng cách chạy lại pipeline streaming.

- **Serving Layer (Lớp cung cấp dữ liệu)**
    - Lưu trữ và cung cấp dữ liệu đã xử lý.

## 5.2. Lambda Architecture
- **Batch Layer (Lớp xử lý theo lô)**
    - Xử lý dữ liệu theo lô với độ trễ cao nhưng đảm bảo tính chính xác.
    - Lưu trữ dữ liệu thô để có thể tái xử lý khi cần thiết.

- **Speed Layer (Lớp xử lý nhanh - Real-time Layer)**
    - Xử lý dữ liệu ngay khi nó đến để cung cấp kết quả nhanh chóng.
    - Dữ liệu từ lớp này có thể không hoàn toàn chính xác (do chưa tổng hợp đầy đủ).

- **Serving Layer (Lớp cung cấp dữ liệu)**
    - Tổng hợp dữ liệu từ cả Batch Layer và Speed Layer để cung cấp kết quả đầu ra.
    - Khi dữ liệu batch hoàn tất, nó sẽ thay thế dữ liệu từ speed layer để đảm bảo độ chính xác.
