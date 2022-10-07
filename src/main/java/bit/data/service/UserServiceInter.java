package bit.data.service;

import bit.data.dto.UserDto;

import java.util.List;

public interface UserServiceInter {

    public int selectSearchId(String email_id);

    public int selectSearchNick(String ur_nk);

    public void insertUser(UserDto dto);

    public List<String> selectSubstrSi();

    public List<String> selectSubstrGu(String selGu);

    public UserDto selectDataById(int ur_id);


    public UserDto getDataById(String id);

    public int getIdPassCheck(String email_id, String ur_pw);

    public void deleteUser(int num);

    public UserDto getDataByNum(int num);

    public void updateUser(UserDto dto);

}
