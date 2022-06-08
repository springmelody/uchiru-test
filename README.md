# UCHI.ru Тестовое задание

## Установка

```sh
make install
make test # run tests
```

## Задачи

1) Есть массив
   ```[1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]```

   a) напишите функцию, которая получает на вход исходный массив и возвращает 2
   максимальных значения
   * функция **/lib/get_two_max_values.rb**
   * тесты **/test/get_two_max_values_test.rb**
   
   b) напишите функцию, которая получает на вход исходный массив и возвращает 2
   минимальных значения
    * функция **/lib/get_two_min_values.rb**
    * тесты **/test/get_two_min_values_test.rb**

2) Есть массив
   ```arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]```

   a) напишите выражение, которое получает массив всех ключей
   ```ruby
   arr.map(&:keys).flatten
   ```

   b) напишите выражение, которое получает массив всех значений
   ```ruby
   arr.map(&:values).flatten
   ```

   с) напишите выражение, которое получает сумму всех значений

   ```ruby
   arr.map(&:values).flatten.sum
   ```

3) Найдите вхождения каждого элемента в массив
   ```[ nil, 2, :foo, “bar”, “foo”, “apple”, “orange”, :orange, 45, nil, :foo, :bar, 25, 45, :apple, “bar”, nil]```
   чтобы на выходе получился Hash по типу ```{ элемент => количество вхождений в
   массив}```

   ```ruby
   arr.tally
   ```

4) Напишите функцию

   a) которая переводит градусы по Цельсию в градусы по Фаренгейту (формулу нужно
   найти в интернете)
    * функция **/lib/convert_c_to_f.rb**
    * тесты **/test/convert_c_to_f_test_test.rb**

   b) напишите консольную программу, которая просит юзера ввести число (градусы по
   Цельсию) и переводит его в Фаренгейты
   * консольная программа **/lib/console_convert.rb**

   с) необязательно, но будет плюсом Напишите обработку ошибок, если юзер ввел
   неправильные данные (программа должна просить ввести число заново и сообщать об
   ошибке, но не прерываться)
   * консольная программа **/lib/console_convert.rb**
   
+ Напишите функцию, которая имитирует работу светафора

     a) на вход она получает один из цветов в виде строки (‘red’, ‘green’, ‘yellow’ ), на выходе
     будет результат (идти, стоять или ждать)
     * функция **/lib/lightforward.rb**
     * тесты **/test/lightforward_test.rb**

     b) напишите это в виде консольной программы, которая не прекращает работу после
     однократного вызова, а ждет следующих запросов
     консольная программа **/lib/console_lightforward.rb**

     c) необязательно, но будет плюсом напишите обработку некорректных данных и
     добавьте возможность юзеру завершить работу программы
    * консольная программа **/lib/console_lightforward.rb**

5) Обязательное задание
   Есть таблица students с колонками
   ```sql
   id int
   name varchar
   created_at datetime
   parent_id int
   ```
   a) посчитайте количество всех студентов
   ```sql 
   SELECT COUNT(*) as count FROM students
   ```
   
   b) посчитайте количество студентов с именем Иван
   ```sql
   SELECT COUNT(*) as count FROM students WHERE name = 'Иван'
   ```
   c) посчитайте количество студентов созданных после 1 сентября 2020 года
   ```sql
   SELECT COUNT(*) as count FROM students WHERE created_at > '2020-09-01 12:00:00'
   ```

6) Необязательное задание, но его выполнение будет плюсом.Так же есть таблица parents (см задание 5)
   ```sql
   id int
   name varchar
   created_at datetime
   ```
   a) посчитайте количество студентов с родителями
   ```sql 
    SELECT COUNT(parent_id) as count FROM students 
   ```
   b) посчитайте количество студентов с родителями при том что имя родителя Марина
   ```sql 
   SELECT COUNT(*) as count FROM students JOIN parents ON parents.id = students.parent_id WHERE parents.name = 'Марина'
   ```
   c) посчитайте количество студентов без родителя
   ```sql 
   SELECT COUNT(*) as count FROM students WHERE parent_id is NULL
   ```
   
### [Ссылка на блог](https://github.com/springmelody/uchiru-test-bog)