# General usage

To hydrate existing object change string changed change:

```php
use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$hydrator->hydrate($object, $data);
```

To create a new object and fill it with the data:

```php
use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$object = $hydrator->create(MyClass::class, $data);
$test = 1;
```

To pass arguments to the constructor of a nested object, use nested array or dot-notation:

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

That would pass the `name` constructor argument of the `Car` object and create a new `Engine` object for `engine`
argument passing `V8` as the `name` argument to its constructor.

| Place | User     | Rating  |
|-------|----------|---------|
| 1     | Sasha    | 118     |
| 2     | Ivan     | 92      |
| 3     | Ivan     | 36      |

- [x] One
- [x] Two
- [ ] Three
    - [x] Three
    - [x] Three
    - [ ] Three
- [ ] Four

~~Hello, Ivan!~~\
Hello, Ivan!

Hellow, [Doka](https://doka.guide "Page about web-dev")!

[Doka](https://doka.guide "Энциклопедия про web-dev") have own [repository](https://github.com/doka-guide "Репозиторий Доки").

1. One
1. One One
1. One
1. One


* One
* OneOneOne
    * One
    * OneOne

See the [Using keys containing separator / shortcut](./built-in-rules-nested.md#using-keys-containing-separator--shortcut) section for more
details.

Using php [attributes](./built-in-rules-nested.md#using-php-attributes)

# Yii Validator

A package for validating data.

## Guides

### Validation

- [Result](./index.rst)