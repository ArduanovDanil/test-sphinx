# Общее использование

Заполнение существующего объекта из тестовое изменение:

```php
use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$hydrator->hydrate($object, $data);
```

Создание нового объекта и заполнение его данными:

```php
use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$object = $hydrator->create(MyClass::class, $data);
$test = 1;
```

Для передачи аргументов в конструктор вложенного объекта используйте вложенный массив или запись «через точку»:

```php
final class Engine
{
    public function __construct(
        private string $name,
    ) {}
}

final class Car
{
    public function __construct(
        private string $name,
        private Engine $engine,
    ) {}
}

// nested arrays
$object = $hydrator->create(Car::class, [
    'name' => 'Ferrari',
    'engine' => [
        'name' => 'V8',
    ]
]);

// or dot-notation
$object = $hydrator->create(Car::class, [
    'name' => 'Ferrari',
    'engine.name' => 'V8',
]);
```

В примере выше в name передается аргумент конструктора объекта Car и создается новый объект Engine для аргумента engine, куда передается значение V8 как аргумент name конструктора.

|   Место | Пользователь   |   Рейтинг |
|---------|----------------|-----------|
|       1 | Саша           |       118 |
|       2 | Иван           |        92 |
|       3 | Иван           |        36 |
- [x] Один
- [x] Два
- [ ] Три
  - [x] Три
  - [x] Три
  - [ ] Три
- [ ] Четыре

~~Привет, Иван!~~\\Привет, Иван!

Привет, [Дока](https://doka.guide)!

[Дока][1] имеет свой собственный [репозиторий][repo].

1. Один
2. Один один
3. Один
4. Один

* Один
* Один один один
  * Один
  * Один один

Смотрите секцию [Использование ключей][shortcut] для большей информации .

Использование PHP [атрибутов][attr]

# Валидатор

Пакет для валидации данных.

## Гайды

### Валидация

- [Результаты](index.md)
