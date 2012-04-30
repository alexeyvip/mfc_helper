package ru.mfc22.helper.domain

import org.springframework.dao.DataIntegrityViolationException

class ServiceReceiverController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def scaffold = true

//    def index() {
//        redirect(action: "list", params: params)
//    }
//
//    def list() {
//        params.max = Math.min(params.max ? params.int('max') : 10, 100)
//        [serviceReceiverInstanceList: ServiceReceiver.list(params), serviceReceiverInstanceTotal: ServiceReceiver.count()]
//    }
//
//    def create() {
//        [serviceReceiverInstance: new ServiceReceiver(params)]
//    }
//
//    def save() {
//        def serviceReceiverInstance = new ServiceReceiver(params)
//        if (!serviceReceiverInstance.save(flush: true)) {
//            render(view: "create", model: [serviceReceiverInstance: serviceReceiverInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), serviceReceiverInstance.id])
//        redirect(action: "show", id: serviceReceiverInstance.id)
//    }
//
//    def show() {
//        def serviceReceiverInstance = ServiceReceiver.get(params.id)
//        if (!serviceReceiverInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        [serviceReceiverInstance: serviceReceiverInstance]
//    }
//
//    def edit() {
//        def serviceReceiverInstance = ServiceReceiver.get(params.id)
//        if (!serviceReceiverInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        [serviceReceiverInstance: serviceReceiverInstance]
//    }
//
//    def update() {
//        def serviceReceiverInstance = ServiceReceiver.get(params.id)
//        if (!serviceReceiverInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        if (params.version) {
//            def version = params.version.toLong()
//            if (serviceReceiverInstance.version > version) {
//                serviceReceiverInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
//                        [message(code: 'serviceReceiver.label', default: 'ServiceReceiver')] as Object[],
//                        "Another user has updated this ServiceReceiver while you were editing")
//                render(view: "edit", model: [serviceReceiverInstance: serviceReceiverInstance])
//                return
//            }
//        }
//
//        serviceReceiverInstance.properties = params
//
//        if (!serviceReceiverInstance.save(flush: true)) {
//            render(view: "edit", model: [serviceReceiverInstance: serviceReceiverInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.updated.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), serviceReceiverInstance.id])
//        redirect(action: "show", id: serviceReceiverInstance.id)
//    }
//
//    def delete() {
//        def serviceReceiverInstance = ServiceReceiver.get(params.id)
//        if (!serviceReceiverInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        try {
//            serviceReceiverInstance.delete(flush: true)
//            flash.message = message(code: 'default.deleted.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), params.id])
//            redirect(action: "list")
//        }
//        catch (DataIntegrityViolationException e) {
//            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'serviceReceiver.label', default: 'ServiceReceiver'), params.id])
//            redirect(action: "show", id: params.id)
//        }
//    }
}
