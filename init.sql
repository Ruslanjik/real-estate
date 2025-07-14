CREATE TABLE real_estate (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    type TEXT NOT NULL,
    city TEXT NOT NULL,
    price INTEGER NOT NULL,
    status TEXT NOT NULL 
);

INSERT INTO real_estate (title, type, city, price, status) VALUES
('Квартира у моря', 'Квартира', 'Сочи', 8500000, 'активен'),
('Загородный дом', 'Дом', 'Москва', 23000000, 'неактивен'),
('Офис в центре', 'Коммерческая', 'Санкт-Петербург', 12000000, 'активен');
