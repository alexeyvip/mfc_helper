package ru.mfc22.helper.domain

class ServiceCard {

    String amount
    String name
    String shortName

    static constraints = {
        name(nullable:  false, blank: false)
        shortName(nullable: false, blank:  false)
    }

    static hasMany = [documentTypes : DocumentType,
            serviceResults : ServiceResult]

    static belongsTo = [serviceReceiver : ServiceReceiver,
            department : Department, lifeSituation : LifeSituation,
            serviceCategory : ServiceCategory]

    static mapping = {
        serviceReceiver(lazy: false)
        department(lazy: false)
        lifeSituation(lazy: false)
        serviceCategory(lazy: false)
    }

    String toString() {
        return name
    }

}
