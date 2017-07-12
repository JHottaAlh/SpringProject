package jp.co.ika.mapper;

import java.util.List;
import java.util.Map;

public interface TrophyMapper {
	List<Map<String, Object>> getTrophy(int user_id);
}
