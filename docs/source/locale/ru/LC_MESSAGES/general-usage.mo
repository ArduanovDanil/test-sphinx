��    '      T  5   �      `     a     c     g     i     k     n     q     �     �  8   �     �     �     �     �  	   �                  X     �   l  1     8   Q  Z   �     �     �  
                	   )  &   3     Z     n  	   v     �  �  �  `   d  {   �     A	  �  `	     �
     �
                    
  2     %   @  
   f  K   q     �     �     �     �     �  
             (  ~   1  4  �  [   �  h   A  �   �     {  9   �     �     �     �  
     X     !   i     �  
   �  
   �  �  �  `   �  {   �  3   g                           	            !          &   "             
                #                                                                '         %       $                1 118 2 3 36 92 A package for validating data. General usage Guides Hellow, [Doka](https://doka.guide "Page about web-dev")! Ivan One One One OneOne OneOneOne Place Rating Sasha See the [Using keys containing separator / shortcut][shortcut] section for more details. That would pass the `name` constructor argument of the `Car` object and create a new `Engine` object for `engine` argument passing `V8` as the `name` argument to its constructor. To create a new object and fill it with the data: To hydrate existing object change string changed change: To pass arguments to the constructor of a nested object, use nested array or dot-notation: User Using php [attributes][attr] Validation Yii Validator [ ] Four [ ] Three [Doka][1] have own [repository][repo]. [Result](index.rst) [x] One [x] Three [x] Two final class Engine
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
 use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$hydrator->hydrate($object, $data);
 use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$object = $hydrator->create(MyClass::class, $data);
$test = 1;
 ~~Hello, Ivan!~~\ Hello, Ivan! Project-Id-Version: Lumache
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-05-17 11:15+0500
Last-Translator: 
Language-Team: ru <LL@li.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
Generated-By: Babel 2.10.3
X-Generator: Poedit 3.4.3
 1 118 2 3 36 92 Пакет для валидации данных. Общее использование Гайды Привет, [Дока](https://doka.guide "Страница о web-dev")! Иван Один Один один Один один Один один один Место Рейтинг Саша Смотрите секцию [Использование ключей][shortcut] для большей информации . В примере выше в name передается аргумент конструктора объекта Car и создается новый объект Engine для аргумента engine, куда передается значение V8 как аргумент name конструктора. Создание нового объекта и заполнение его данными: Заполнение существующего объекта из тестовое изменение: Для передачи аргументов в конструктор вложенного объекта используйте вложенный массив или запись «через точку»: Пользователь Использование PHP [атрибутов][attr] Валидация Валидатор [ ] Четыре [ ] Три [Дока][1] имеет свой собственный [репозиторий][repo]. [Результаты](index.rst) [x] Один [x] Три [x] Два final class Engine
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
 use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$hydrator->hydrate($object, $data);
 use Yiisoft\Hydrator\Hydrator;

$hydrator = new Hydrator();
$object = $hydrator->create(MyClass::class, $data);
$test = 1;
 ~~Привет, Иван!~~\Привет, Иван! 