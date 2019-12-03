# Laboratorium 4 - generowanie vCard

# Opis usługi
| Metoda | Ścieżka                     | Parametr | Opis                                                |
|--------|-----------------------------|----------|-----------------------------------------------------|
| GET    | /           | -   | Zwraca stronę główną        |
| POST    | /browser/search   | {object/Employee}  | Zwraca stronę z wynikiem wyszukania osoby o podanym imieniu i nazwisku     |
| POST    | /generate-vcard    | {object/Employee}   | Zwraca wygenerowany plik vCard z danymi wyszukiwanej osoby      |