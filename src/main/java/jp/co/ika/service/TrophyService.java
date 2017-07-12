package jp.co.ika.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jp.co.ika.mapper.TrophyMapper;

@Service
public class TrophyService {
	@Autowired
	private TrophyMapper trophyMapper;
	
	@Transactional
	public List<Map<String, Object>> getTrophy(int user_id){
		List<Map<String, Object>> result = trophyMapper.getTrophy(user_id);
		
		for(Map<String, Object> f: result){
			for(String key: f.keySet()){
				System.out.println("key = " + f.get(key));
			}
		}
		
		return result;
	}
}
