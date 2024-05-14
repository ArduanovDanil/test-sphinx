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
