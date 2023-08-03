package com.auth0.jwt.interfaces;

import com.auth0.jwt.exceptions.JWTDecodeException;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* compiled from: Claim.java */
/* loaded from: classes.dex */
public interface a {
    String a();

    Map<String, Object> asMap() throws JWTDecodeException;

    Date b();

    boolean c();

    <T> T[] d(Class<T> cls) throws JWTDecodeException;

    <T> List<T> e(Class<T> cls) throws JWTDecodeException;

    Integer f();

    Long g();

    Double h();

    Boolean i();

    <T> T j(Class<T> cls) throws JWTDecodeException;
}
