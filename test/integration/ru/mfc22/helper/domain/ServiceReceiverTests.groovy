package ru.mfc22.helper.domain

import static org.junit.Assert.*
import org.junit.*

class ServiceReceiverTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testSaveReceiver() {
        def serviceReceiver = new ServiceReceiver(name: "Физические лица", shortName: "физ. лица")

        assertNotNull serviceReceiver.save()
        assertNotNull serviceReceiver.id

        def foundServiceReceiver = ServiceReceiver.get(serviceReceiver.id)
        assertEquals "Физические лица", foundServiceReceiver.name
        assertEquals "физ. лица", foundServiceReceiver.shortName
    }
}
