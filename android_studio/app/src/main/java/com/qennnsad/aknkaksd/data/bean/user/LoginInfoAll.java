package com.qennnsad.aknkaksd.data.bean.user;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class LoginInfoAll {
    @SerializedName("im_role")
    private int imRole;
    @SerializedName("jwt_token")
    private String jwtToken;
    private UserBean user;

    public int getImRole() {
        return this.imRole;
    }

    public String getJwtToken() {
        return this.jwtToken;
    }

    public UserBean getUser() {
        return this.user;
    }

    public void setImRole(int i4) {
        this.imRole = i4;
    }

    public void setJwtToken(String str) {
        this.jwtToken = str;
    }

    public void setUser(UserBean userBean) {
        this.user = userBean;
    }

    public String toString() {
        return "LoginInfoAll{jwtToken='" + this.jwtToken + "', user=" + this.user + ", imRole=" + this.imRole + '}';
    }
}
