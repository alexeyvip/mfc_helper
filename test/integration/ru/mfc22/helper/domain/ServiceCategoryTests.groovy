package ru.mfc22.helper.domain

import static org.junit.Assert.*
import org.junit.*

class ServiceCategoryTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testSaveCategory() {

        def serviceCategory = new ServiceCategory(name: "Безопасность")

        assertNotNull serviceCategory.save()
        assertNotNull serviceCategory.id

        def foundServiceCategory = ServiceCategory.get(serviceCategory.id)
        assertEquals "Безопасность", foundServiceCategory.name
    }
}
