-- Підключаємося до таблиці бронювань, формуємо збагачену вибірку з тарифами

SELECT
    rd.date,
    rd.month,
    rd.room_name,
    rd.raw_code,
    rd.channel,
    rd.room_type,
    pl.rate,
    pl.accommodation

FROM reservation_data rd

-- Об'єднання з тарифною таблицею: зіставлення по типу кімнати, періоду та каналу
LEFT JOIN price_list pl
  ON rd.room_type = pl.room_type
  AND rd.date >= pl.start_date
  AND rd.date <= pl.end_date
  AND (
      (pl.accommodation = 'Hotel' AND rd.channel = pl.channel) -- у готелях ціна залежить від каналу
      OR (pl.accommodation <> 'Hotel')                         -- для інших типів — канал не враховується
  );
