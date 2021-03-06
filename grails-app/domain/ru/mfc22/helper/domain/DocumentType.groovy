package ru.mfc22.helper.domain

class DocumentType {

    String name
    String note
    Integer original

    static constraints = {
        name(nullable: false, blank: false)
        note(nullable: true, blank: true, maxSize: 2000)
        original(nullable: false, min: 0, max: 1)
    }

    static hasMany = [serviceCards: ServiceCard]

    static belongsTo = [ServiceCard]

    String toString() {
        return "${original == 0 ? 'Копия' : 'Оригинал'}: ${name}";
    }

}
