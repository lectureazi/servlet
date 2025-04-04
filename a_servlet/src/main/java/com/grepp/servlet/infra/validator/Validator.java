package com.grepp.servlet.infra.validator;

public interface Validator<T> {
    
    void validate(T e);
    
}
