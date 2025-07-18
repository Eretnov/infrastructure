# Terraform Module: yandex_cloud_instance

Этот модуль позволяет быстро создавать виртуальную машину в Яндекс.Облаке (Yandex Cloud) с помощью terraform.

## Описание

Модуль создаёт одну виртуальную машину (`yandex_compute_instance`) с заданными параметрами: размер, образ, платформа, параметры сети, загрузочный диск и передача SSH-ключа через cloud-init.

## Переменные

| Переменная    | Тип     | Описание                                                                 | Значение по умолчанию                  | Обязательная |
|:--------------|:--------|:-------------------------------------------------------------------------|:---------------------------------------|:------------:|
| `name`        | string  | Имя ресурса/инстанса. Используется для идентификации создаваемых ресурсов| `"chapter5-lesson2-std-040-31"`        |      Нет     |
| `platform_id` | string  | Идентификатор платформы виртуальной машины| `"standard-v1"` |      Нет     |
| `size`        | number  | Размер диска (ГБ), выделяемого для ВМ                                  | `50`                                   |      Нет     |
| `ssh_key`     | string  | Публичный SSH-ключ для доступа к виртуальной машине                     | —                                       |     Да      |
| `zone`        | string  | Зона доступности Yandex Cloud, где создаётся ресурс (например, `ru-central1-a`) | —                              |     Да      |
| `image_id`    | string  | Идентификатор образа диска, используемого для создания ВМ               | —                                       |     Да      |
| `subnet_id`   | string  | Идентификатор подсети, в которой будет создан ресурс                    | —                                       |     Да      |

## Описание параметров

- **name** – Позволяет задать уникальное имя для будущих ресурсов.
- **platform_id** – Определяет платформу сервера (например, `standard-v1`, `standard-v2`).
- **size** – Указывает требуемый размер диска в гигабайтах.
- **ssh_key** – Ваш публичный ключ SSH для безопасного подключения к серверу. Генерируется командой `ssh-keygen`.
- **zone** – Зона размещения ресурса.
- **image_id** – ID публичного или вашего кастомного образа для создания ВМ.
- **subnet_id** – ID подсети в выбранной VPC.

## Требования

- Terraform = 1.5.7
- Провайдер Yandex Cloud версии >= 0.87.0

---

> **Важно:** Все переменные, кроме `name`, `platform_id` и `size`, обязательны для корректного запуска модуля.

---
