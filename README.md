### Stack

<details>
  <summary>Общая ифнормация</summary>
<br />

Stack (стек) - это контейнер с элементами, организованными по принцнипу LIFO (Last-In, First-Out). Объект контейнерного класса стека содержит в себе указатели на "голову" стека, удаление и добавление элементов производится строго из "головы". Стек удобно представлять как стакан или трубу с одним запаянным концом: для того чтобы добраться до элемента, помещенного в контейнер первым, требуется сначала вынуть все элементы, находящиеся сверху.

![](misc/images/stack01.png)

</details>

<details>
  <summary>Спецификация</summary>
<br />

*Stack Member type*

В этой таблице перечислены внутриклассовые переопределения типов (типичные для стандартной библиотеки STL), принятые для удобства восприятия кода класса:

| Member type      | Definition                                       |
|------------------|--------------------------------------------------|
| `value_type`       | `T` the template parameter T                   |
| `reference`              | `T &` defines the type of the reference to an element                                                             |
| `const_reference`        | `const T &` defines the type of the constant reference                                         |
| `size_type`        | `size_t` defines the type of the container size (standard type is size_t) |

*Stack Member functions*

В этой таблице перечислены основные публичные методы для взаимодействия с классом:

| Functions      | Definition                                      |
|----------------|-------------------------------------------------|
| `stack()`  | default constructor, creates empty stack                                 |
| `stack(std::initializer_list<value_type> const &items)`  | initializer list constructor, creates stack initizialized using std::initializer_list<T>    |
| `stack(const stack &s)`  | copy constructor  |
| `stack(stack &&s)`  | move constructor  |
| `~stack()`  | destructor  |
| `operator=(stack &&s)`      | assignment operator overload for moving object                                |

*Stack Element access*   

В этой таблице перечислены публичные методы для доступа к элементам класса:

| Element access   | Definition                                       |
|------------------|--------------------------------------------------|
| `const_reference top()`              | accesses the top element                         |

*Stack Capacity*   

В этой таблице перечислены публичные методы для доступа к информации о наполнении контейнера:

| Capacity       | Definition                                      |
|----------------|-------------------------------------------------|
| `bool empty()`          | checks whether the container is empty           |
| `size_type size()`           | returns the number of elements                  |

*Stack Modifiers*        

В этой таблице перечислены публичные методы для изменения контейнера:

| Modifiers        | Definition                                       |
|------------------|--------------------------------------------------|
| `void push(const_reference value)`             | inserts element at the top                       |
| `void pop()`              | removes the top element                        |
| `void swap(stack& other)`             | swaps the contents                               |

</details>
