package ru.mfc22.helper.domain

import static org.junit.Assert.*
import org.junit.*

class ServiceCardTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testAddCard() {
        def serviceReceiver =
            new ServiceReceiver(name: "Физические лица", shortName: "физ. лица")
        assertNotNull serviceReceiver.save()
        assertNotNull serviceReceiver.id

        def department = new Department(
                name: """Управление Федеральной службы судебных
                        приставов по Алтайскому краю""", shortName: "суд. приставов")

        assertNotNull department.save()
        assertNotNull department.id

        def lifeSituation = new LifeSituation(name: "Получить консультацию, информацию")

        assertNotNull lifeSituation.save()
        assertNotNull lifeSituation.id

        def serviceCategory = new ServiceCategory(name: "Безопасность")

        assertNotNull serviceCategory.save()
        assertNotNull serviceCategory.id

        def foundServiceCategory = ServiceCategory.get(serviceCategory.id)
        assertEquals "Безопасность", foundServiceCategory.name

        def serviceResult =
            new ServiceResult(name: "Охотничий билет единого федерального образца")

        assertNotNull serviceResult.save()
        assertNotNull serviceResult.id

        def documentType =
            new DocumentType(name: "Заявление о  получении охотничьего билета",
                    note: "Утвержденный бланк",
                    original: 1)

        assertNotNull documentType.save()
        assertNotNull documentType.id

        def serviceCard = new ServiceCard(serviceReceiver: serviceReceiver,
                department: department, lifeSituation: lifeSituation,
                serviceCategory: serviceCategory, amount: "Бесплатно",
                name: "выдачи паспорта гражданина Российской Федерации",
                shortName: "выдача паспорта")

        serviceCard.addToDocumentTypes(documentType)
        serviceCard.addToServiceResults(serviceResult)

        assertNotNull serviceCard.save()
        assertNotNull serviceCard.id
    }

    @Test
    void testAddCardDeleteCardDictionaryStays() {
        def serviceReceiver =
            new ServiceReceiver(name: "Физические лица", shortName: "физ. лица")
        assertNotNull serviceReceiver.save()
        assertNotNull serviceReceiver.id

        def department = new Department(
                name: """Управление Федеральной службы судебных
                        приставов по Алтайскому краю""", shortName: "суд. приставов")

        assertNotNull department.save()
        assertNotNull department.id

        def lifeSituation = new LifeSituation(name: "Получить консультацию, информацию")

        assertNotNull lifeSituation.save()
        assertNotNull lifeSituation.id

        def serviceCategory = new ServiceCategory(name: "Безопасность")

        assertNotNull serviceCategory.save()
        assertNotNull serviceCategory.id

        def foundServiceCategory = ServiceCategory.get(serviceCategory.id)
        assertEquals "Безопасность", foundServiceCategory.name

        def serviceResult =
            new ServiceResult(name: "Охотничий билет единого федерального образца")

        assertNotNull serviceResult.save()
        assertNotNull serviceResult.id

        def documentType =
            new DocumentType(name: "Заявление о  получении охотничьего билета",
                    note: "Утвержденный бланк",
                    original: 1)

        assertNotNull documentType.save()
        assertNotNull documentType.id

        def serviceCard = new ServiceCard(serviceReceiver: serviceReceiver,
                department: department, lifeSituation: lifeSituation,
                serviceCategory: serviceCategory, amount: "1000 руб",
                name: "выдачи паспорта гражданина Российской Федерации",
                shortName: "выдача паспорта")

        serviceCard.addToDocumentTypes(documentType)
        serviceCard.addToServiceResults(serviceResult)

        assertNotNull serviceCard.save()
        assertNotNull serviceCard.id
        
        serviceCard.delete()
        assertNull ServiceCard.get(serviceCard.id)
        assertNotNull serviceReceiver.id
        assertNotNull department.id
        assertNotNull lifeSituation.id
        assertNotNull serviceCategory.id
        assertNotNull serviceResult.id
        assertNotNull documentType.id
        
    }

}
