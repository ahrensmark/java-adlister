package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {

    User findByUsername(String username);
    // insert a new user and return the new user's id
    Long insert(User user);
}
