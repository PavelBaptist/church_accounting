# API - Church Accounting
## Авторизация
basic auth

## Методы

---
### wallets
#### `GET`
* `id` - `string` - GUID4 (пример: `"4d182871-a8b0-469c-ad67-cfb35960ce40"`)
* `name` - `string` - Имя кассы
* `balance` - `double` - Текущий остаток в кассе
* `is_active` - `bool` - Активность кассы
* `holder` - ref `users` - Ответственный за кассу
* `watchers` - `array[string]` - Массив идентификаторов `users`
* `organization` - `string` - Идентификатор `organizations`
---

### wallet_operations
#### `GET` `POST`
* `id` - `string` - GUID4 (пример: `"4d182871-a8b0-469c-ad67-cfb35960ce40"`)
* `number` - `int` - Номер операции
* `date` - `string` - ISO8601 дата операции
* `sum` - `double` - Сумма
* `wallet` - `string` - Идентификатор `wallets`
* `comment` - `string` - Комментарий операции
* `user` - `string` - Идентификатор `users`
* `type_operation` - `string` - Идентификатор `type_operations`
* `type` - `string` - может иметь типы `"INCOME"` - приход, `"EXPENSE"` - расход
* `organization` - `string` - Идентификатор `organizations`

---
### type_operations
#### `GET` `POST`
* `id` - `string` - GUID4 (пример: `"4d182871-a8b0-469c-ad67-cfb35960ce40"`)
* `name` - `string` - Имя типа операции (статьи доходов/расходов)
* `type` - `string` - может иметь типы `"INCOME"` - приход, `"EXPENSE"` - расход 
* `organization` - `string` - Идентификатор `organizations`

---
### users
#### `GET`
* `name` - `string` - Имя пользователь
* `id` - `string` - GUID4 (пример: `"4d182871-a8b0-469c-ad67-cfb35960ce40"`)
* `img_avatar` - ref `user_avatar` - Аватар пользователя
* `organization` - `string` - Идентификатор `organizations`

---
### current_user
#### `GET`
* `name` - `string` - Имя пользователь
* `id` - `string` - GUID4 (пример: `"4d182871-a8b0-469c-ad67-cfb35960ce40"`)
* `img_avatar` - ref `user_avatar` - Аватар пользователя
* `organization` - `string` - Идентификатор `organizations`
    
---
### organizations
#### `GET`
* `name` - `string` - Имя пользователь
* `id` - `string` - GUID4 (пример: `"4d182871-a8b0-469c-ad67-cfb35960ce40"`)

---
### user_avatars
#### `GET`
* `user` - `string` - Идентификатор `users`
* `attachment` - `string` - Изображение в виде строки в формате `BASE64`



