package ru.mfc22.helper.domain

import static org.junit.Assert.*
import org.junit.*

class ServiceResultTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testServiceResult() {
        def serviceResult =
            new ServiceResult(name: "Охотничий билет единого федерального образца")

        assertNotNull serviceResult.save()
        assertNotNull serviceResult.id

        def foundServiceResult = ServiceResult.get(serviceResult.id)
        assertEquals "Охотничий билет единого федерального образца",
                foundServiceResult.name
    }
}
