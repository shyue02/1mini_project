package site.metacoding.miniproject.util;

import java.util.List;

public class BasicSkillList {

	private static List<String> skillList = List.of(
			"Python","Spring Framework","AWS","Git","iOS","HTML","JavaScript",
			"MySQL","Linux","Android","Kotlin","Swift"
			);
    
    static public List<String> getSkill(){
    	return skillList;
    }
}
