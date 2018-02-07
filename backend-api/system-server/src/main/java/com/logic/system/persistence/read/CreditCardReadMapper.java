package com.logic.system.persistence.read;


import com.logic.system.domain.CreditCard;

public interface CreditCardReadMapper {

  CreditCard selectByPrimaryKey(Integer id);

}
