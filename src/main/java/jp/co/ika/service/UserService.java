package jp.co.ika.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jp.co.ika.dto.UserDto;
import jp.co.ika.entity.UserEntity;
import jp.co.ika.mapper.UserMapper;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Transactional
	public UserDto getUser(String user_name, String password){
		//UserDto型のインスタンスを作成
		UserDto dto = new UserDto();
		UserEntity entity = userMapper.getUser(user_name, password);	//値はしっかり格納できている
		BeanUtils.copyProperties(entity, dto);
		
		return dto;
	}
	
}
