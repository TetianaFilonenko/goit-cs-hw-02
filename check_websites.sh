#!/bin/bash

# Список вебсайтів для перевірки
websites=("https://google.com" "https://facebook.com" "https://twitter.com" "https://twittere.com")

# Назва файлу логів
log_file="website_status.log"

# Очищення файлу логів перед записом нових результатів
> $log_file

# Перевірка доступності кожного вебсайту
for website in "${websites[@]}"; do
    # Використання команди curl для перевірки HTTP статусу зі слідуванням за редиректами
    http_status=$(curl -L -o /dev/null -s -w "%{http_code}\n" "$website")

    # Перевірка чи сайт доступний
    if [ $http_status -eq 200 ]; then
        echo "$website is UP"
        echo "$website is UP" >> $log_file
    else
        echo "$website is DOWN"
        echo "$website is DOWN" >> $log_file
    fi
done

# Вивід повідомлення про завершення роботи скрипту
echo "Результати записано у файл логів: $log_file"
