package ru.mfc22.helper.domain

import static org.junit.Assert.*
import org.junit.*

class LifeSituationTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testSaveLifeSituation() {
        def lifeSituation = new LifeSituation(name: "Получить консультацию, информацию")

        assertNotNull lifeSituation.save()
        assertNotNull lifeSituation.id

        def foundLifeSituation = LifeSituation.get(lifeSituation.id)
        assertEquals "Получить консультацию, информацию", foundLifeSituation.name
    }
}
