package ru.mfc22.helper.domain

import static org.junit.Assert.*
import org.junit.*

class DepartmentTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testSaveDepartment() {
        def department = new Department(
                name: """Управление Федеральной службы судебных
                        приставов по Алтайскому краю""", shortName: "суд. приставов")

        assertNotNull department.save()
        assertNotNull department.id

        def foundDepartment = Department.get(department.id)
        assertEquals """Управление Федеральной службы судебных
                        приставов по Алтайскому краю""", foundDepartment.name
        assertEquals "суд. приставов", foundDepartment.shortName
    }
}
