package ru.mfc22.helper.domain

import static org.junit.Assert.*
import org.junit.*

class DocumentTypeTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testSaveDocumentType() {
        def documentType =
            new DocumentType(name: "Заявление о  получении охотничьего билета",
                    note: "Утвержденный бланк",
                    original: 1)

        assertNotNull documentType.save()
        assertNotNull documentType.id

        def foundDocumentType = DocumentType.get(documentType.id)
        assertEquals "Заявление о  получении охотничьего билета", foundDocumentType.name
        assertEquals "Утвержденный бланк", foundDocumentType.note
        assertEquals 1, foundDocumentType.original
    }

    void testFailSaveOriginal_2() {
        def documentType =
            new DocumentType(name: "Заявление о  получении охотничьего билета",
                    note: "Утвержденный бланк",
                    original: 2)

        assertNull documentType.save()
    }

}
