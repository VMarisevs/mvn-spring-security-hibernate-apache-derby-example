package com.example.model;

import javax.persistence.EntityManager;

public class FoodGroupOP {
	
	public FoodGroup[] getFoodGroupList(){
		
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		
		em.getTransaction().begin();
			
			FoodGroup[] fg = (FoodGroup[]) em.createQuery("SELECT fg FROM FoodGroup fg").getResultList().toArray(new FoodGroup[0]);
			
		em.getTransaction().commit();
		
		em.close();
		
		
		return fg;
	}
	
}
