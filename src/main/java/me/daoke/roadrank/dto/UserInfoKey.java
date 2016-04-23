package me.daoke.roadrank.dto;

import java.io.Serializable;

public class UserInfoKey implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column userInfo.id
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column userInfo.mobile
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    private Long mobile;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column userInfo.accountID
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    private String accountID;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table userInfo
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column userInfo.id
     *
     * @return the value of userInfo.id
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column userInfo.id
     *
     * @param id the value for userInfo.id
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column userInfo.mobile
     *
     * @return the value of userInfo.mobile
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    public Long getMobile() {
        return mobile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column userInfo.mobile
     *
     * @param mobile the value for userInfo.mobile
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    public void setMobile(Long mobile) {
        this.mobile = mobile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column userInfo.accountID
     *
     * @return the value of userInfo.accountID
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    public String getAccountID() {
        return accountID;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column userInfo.accountID
     *
     * @param accountID the value for userInfo.accountID
     *
     * @mbggenerated Thu Apr 21 09:51:27 CST 2016
     */
    public void setAccountID(String accountID) {
        this.accountID = accountID == null ? null : accountID.trim();
    }
}