package me.daoke.roadrank.dao;

import java.util.List;
import me.daoke.roadrank.dto.LoginConfig;
import me.daoke.roadrank.dto.LoginConfigCriteria;
import org.apache.ibatis.annotations.Param;

public interface LoginConfigMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int countByExample(LoginConfigCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int deleteByExample(LoginConfigCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int insert(LoginConfig record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int insertSelective(LoginConfig record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    List<LoginConfig> selectByExample(LoginConfigCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    LoginConfig selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int updateByExampleSelective(@Param("record") LoginConfig record, @Param("example") LoginConfigCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int updateByExample(@Param("record") LoginConfig record, @Param("example") LoginConfigCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int updateByPrimaryKeySelective(LoginConfig record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loginconfig
     *
     * @mbggenerated Sun Apr 24 11:10:05 CST 2016
     */
    int updateByPrimaryKey(LoginConfig record);
}