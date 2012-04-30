package ru.mfc22.helper.domain

import org.springframework.dao.DataIntegrityViolationException

class ServiceResultController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def scaffold = true

//    def index() {
//        redirect(action: "list", params: params)
//    }
//
//    def list() {
//        params.max = Math.min(params.max ? params.int('max') : 10, 100)
//        [serviceResultInstanceList: ServiceResult.list(params), serviceResultInstanceTotal: ServiceResult.count()]
//    }
//
//    def create() {
//        [serviceResultInstance: new ServiceResult(params)]
//    }
//
//    def save() {
//        def serviceResultInstance = new ServiceResult(params)
//        if (!serviceResultInstance.save(flush: true)) {
//            render(view: "create", model: [serviceResultInstance: serviceResultInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), serviceResultInstance.id])
//        redirect(action: "show", id: serviceResultInstance.id)
//    }
//
//    def show() {
//        def serviceResultInstance = ServiceResult.get(params.id)
//        if (!serviceResultInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        [serviceResultInstance: serviceResultInstance]
//    }
//
//    def edit() {
//        def serviceResultInstance = ServiceResult.get(params.id)
//        if (!serviceResultInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        [serviceResultInstance: serviceResultInstance]
//    }
//
//    def update() {
//        def serviceResultInstance = ServiceResult.get(params.id)
//        if (!serviceResultInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        if (params.version) {
//            def version = params.version.toLong()
//            if (serviceResultInstance.version > version) {
//                serviceResultInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
//                        [message(code: 'serviceResult.label', default: 'ServiceResult')] as Object[],
//                        "Another user has updated this ServiceResult while you were editing")
//                render(view: "edit", model: [serviceResultInstance: serviceResultInstance])
//                return
//            }
//        }
//
//        serviceResultInstance.properties = params
//
//        if (!serviceResultInstance.save(flush: true)) {
//            render(view: "edit", model: [serviceResultInstance: serviceResultInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.updated.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), serviceResultInstance.id])
//        redirect(action: "show", id: serviceResultInstance.id)
//    }
//
//    def delete() {
//        def serviceResultInstance = ServiceResult.get(params.id)
//        if (!serviceResultInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), params.id])
//            redirect(action: "list")
//            return
//        }
//
//        try {
//            serviceResultInstance.delete(flush: true)
//            flash.message = message(code: 'default.deleted.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), params.id])
//            redirect(action: "list")
//        }
//        catch (DataIntegrityViolationException e) {
//            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'serviceResult.label', default: 'ServiceResult'), params.id])
//            redirect(action: "show", id: params.id)
//        }
//    }
}
