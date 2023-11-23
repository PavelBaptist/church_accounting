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

---
### users
#### `GET`
* `name` - `string` - Имя пользователь
* `id` - `string` - GUID4 (пример: `"4d182871-a8b0-469c-ad67-cfb35960ce40"`)
* `img_avatar` - ref `users_files` - Аватар пользователя
---
