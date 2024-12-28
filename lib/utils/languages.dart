



String getLanguageDisplayName(String languageCode) {

 final displayName = languageMapping[languageCode] ?? languageCode;
  return displayName;
}

Map<String, String> languageMapping = {
  'af': '🇿🇦 Afrikaans', // Африкаанс
  'zh-hk': '🇭🇰 Cantonese (Traditional Chinese)',
  'es-la': '🇲🇽 Latin American Spanish',
  'sq': '🇦🇱 Albanian', // Албанська
  'am': '🇪🇹 Amharic', // Амхарська
  'ar': '🇸🇦 Arabic', // Арабська
  'hy': '🇦🇲 Armenian', // Вірменська
  'az': '🇦🇿 Azerbaijani', // Азербайджанська
  'eu': '🇪🇸 Basque', // Баскська
  'be': '🇧🇾 Belarusian', // Білоруська
  'bn': '🇧🇩 Bengali', // Бенгальська
  'bs': '🇧🇦 Bosnian', // Боснійська
  'bg': '🇧🇬 Bulgarian', // Болгарська
  'ca': '🇪🇸 Catalan', // Каталонська
  'ceb': '🇵🇭 Cebuano', // Себуанська
  'ny': '🇲🇼 Chichewa', // Чічева
  'zh': '🇨🇳 Chinese', // Китайська
  'co': '🇫🇷 Corsican', // Корсиканська
  'hr': '🇭🇷 Croatian', // Хорватська
  'cs': '🇨🇿 Czech', // Чеська
  'da': '🇩🇰 Danish', // Данська
  'nl': '🇳🇱 Dutch', // Нідерландська
  'en': '🇬🇧 English', // Англійська
  'eo': '🌍 Esperanto', // Есперанто
  'et': '🇪🇪 Estonian', // Естонська
  'fi': '🇫🇮 Finnish', // Фінська
  'fr': '🇫🇷 French', // Французька
  'fy': '🇳🇱 Frisian', // Фризька
  'gl': '🇪🇸 Galician', // Галісійська
  'ka': '🇬🇪 Georgian', // Грузинська
  'de': '🇩🇪 German', // Німецька
  'el': '🇬🇷 Greek', // Грецька
  'gu': '🇮🇳 Gujarati', // Гуджараті
  'ht': '🇭🇹 Haitian Creole', // Гаїтянська креольська
  'ha': '🇳🇬 Hausa', // Хауса
  'haw': '🇺🇸 Hawaiian', // Гавайська
  'he': '🇮🇱 Hebrew', // Іврит
  'hi': '🇮🇳 Hindi', // Гінді
  'hmn': '🌍 Hmong', // Хмонг
  'hu': '🇭🇺 Hungarian', // Угорська
  'is': '🇮🇸 Icelandic', // Ісландська
  'ig': '🇳🇬 Igbo', // Ігбо
  'id': '🇮🇩 Indonesian', // Індонезійська
  'ga': '🇮🇪 Irish', // Ірландська
  'it': '🇮🇹 Italian', // Італійська
  'ja': '🇯🇵 Japanese', // Японська
  'jw': '🇮🇩 Javanese', // Яванська
  'kn': '🇮🇳 Kannada', // Каннада
  'kk': '🇰🇿 Kazakh', // Казахська
  'km': '🇰🇭 Khmer', // Кхмерська
  'rw': '🇷🇼 Kinyarwanda', // Кіньяруанда
  'ko': '🇰🇷 Korean', // Корейська
  'ku': '🇮🇶 Kurdish', // Курдська
  'ky': '🇰🇬 Kyrgyz', // Киргизька
  'lo': '🇱🇦 Lao', // Лаоська
  'la': '🌍 Latin', // Латинська
  'lv': '🇱🇻 Latvian', // Латвійська
  'lt': '🇱🇹 Lithuanian', // Литовська
  'lb': '🇱🇺 Luxembourgish', // Люксембурзька
  'mk': '🇲🇰 Macedonian', // Македонська
  'mg': '🇲🇬 Malagasy', // Малагасійська
  'ms': '🇲🇾 Malay', // Малайська
  'ml': '🇮🇳 Malayalam', // Малаялам
  'mt': '🇲🇹 Maltese', // Мальтійська
  'mi': '🇳🇿 Maori', // Маорі
  'mr': '🇮🇳 Marathi', // Маратхі
  'mn': '🇲🇳 Mongolian', // Монголська
  'my': '🇲🇲 Myanmar (Burmese)', // Бірманська
  'ne': '🇳🇵 Nepali', // Непальська
  'no': '🇳🇴 Norwegian', // Норвезька
  'or': '🇮🇳 Odia', // Орія
  'ps': '🇦🇫 Pashto', // Пушту
  'fa': '🇮🇷 Persian', // Перська
  'pl': '🇵🇱 Polish', // Польська
  'pt': '🇵🇹 Portuguese', // Португальська
  'pt-br': '🇧🇷 Brazilian Portuguese', // Бразильська португальська
  'pa': '🇮🇳 Punjabi', // Панджабська
  'ro': '🇷🇴 Romanian', // Румунська
  'ru': '🏳️ Russian', // Російська
  'sm': '🇼🇸 Samoan', // Самоанська
  'gd': '🇬🇧 Scots Gaelic', // Шотландська гельська
  'sr': '🇷🇸 Serbian', // Сербська
  'st': '🇱🇸 Sesotho', // Сесото
  'sn': '🇿🇼 Shona', // Шона
  'sd': '🇵🇰 Sindhi', // Сіндхі
  'si': '🇱🇰 Sinhala', // Сингальська
  'sk': '🇸🇰 Slovak', // Словацька
  'sl': '🇸🇮 Slovenian', // Словенська
  'so': '🇸🇴 Somali', // Сомалійська
  'es': '🇪🇸 Spanish', // Іспанська
  'su': '🇮🇩 Sundanese', // Сунданська
  'sw': '🇰🇪 Swahili', // Суахілі
  'sv': '🇸🇪 Swedish', // Шведська
  'tl': '🇵🇭 Tagalog', // Тагальська
  'tg': '🇹🇯 Tajik', // Таджицька
  'ta': '🇮🇳 Tamil', // Тамільська
  'tt': '🇷🇺 Tatar', // Татарська
  'te': '🇮🇳 Telugu', // Телугу
  'th': '🇹🇭 Thai', // Тайська
  'tr': '🇹🇷 Turkish', // Турецька
  'tk': '🇹🇲 Turkmen', // Туркменська
  'uk': '🇺🇦 Ukrainian', // Українська
  'ur': '🇵🇰 Urdu', // Урду
  'ug': '🇨🇳 Uyghur', // Уйгурська
  'uz': '🇺🇿 Uzbek', // Узбецька
  'vi': '🇻🇳 Vietnamese', // В'єтнамська
  'cy': '🏴 Welsh', // Валлійська
  'xh': '🇿🇦 Xhosa', // Кхоса
  'yi': '🌍 Yiddish', // Ідиш
  'yo': '🇳🇬 Yoruba', // Йоруба
  'zu': '🇿🇦 Zulu', // Зулуська
};
