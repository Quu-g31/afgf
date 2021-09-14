### users

| Column                | Type    | Options                   |
|-----------------------|---------|---------------------------|
| nickname              | string  | null: false               |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |
| profile               | text    |                           |
| platform              | string  |                           |
| hiest_damage          | integer |                           |
| hiest_kill            | integer |                           |
| hiest_rank            | string  |                           |
| favorite_character    | string  |                           |
| voicechat             | string  |                           |
| apexid                | string  |                           |

### Association
- has_many :posts
- has_many :comments


### posts

| Column                | Type    | Options                   |
|-----------------------|---------|---------------------------|
| title                 | string  | null: false               |
| text                  | text    | null: false               |
| platform_id           | integer | null: false               |
| purpose_id            | integer | null: false               |

### Association
- belongs_to :users
- has_many   :comments
- has_many   :post_tags

### comments

| Column            | Type        | Options                        |
|-------------------|-------------|--------------------------------|
| user              | references  | null: false, foreign_key: true |
| post              | references  | null: false, foreign_key: true |
| text              | text        | null: false                    |


### Association
- belongs_to :users
- belongs_to :posts

### tags

| Column            | Type    | Options                        |
|-------------------|---------|--------------------------------|
| name              | string  | null: false                    |


### Association
- has_many :post_tags

### post_tags

| Column            | Type        | Options                        |
|-------------------|-------------|--------------------------------|
| post              | references  | null: false, foreign_key: true |
| tag               | references  | null: false, foreign_key: true |


### Association
- belongs_to :posts
- belongs_to :tags
