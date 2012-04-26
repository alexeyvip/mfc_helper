package ru.mfc22.helper.domain

class ServiceCard {

    static constraints = {
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
    
}
