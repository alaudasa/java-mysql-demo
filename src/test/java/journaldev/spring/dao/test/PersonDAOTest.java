package com.journaldev.spring.dao.test;

import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertEquals;
import com.journaldev.spring.model.Person;

public class PersonDAOTest  {

	private Person p ;

	@Before
	public void beforeEachTest(){
		p = new Person();
	}

	@Test
	public void testAddPerson(){
		p.setName("mingqi") ;
		p.setCountry("china") ;

		assertEquals("mingqi", p.getName()) ;
		assertEquals("china", p.getCountry()) ;
	}

}