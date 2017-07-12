package jp.co.ika.mapper;

import org.apache.ibatis.annotations.Param;

import jp.co.ika.entity.UserEntity;

public interface UserMapper {
	UserEntity getUser(@Param("user_name") String user_name, @Param("password") String password);
}
