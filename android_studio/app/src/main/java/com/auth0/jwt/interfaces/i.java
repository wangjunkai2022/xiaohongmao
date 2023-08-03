package com.auth0.jwt.interfaces;

import java.util.Date;
import java.util.List;
import java.util.Map;

/* compiled from: Payload.java */
/* loaded from: classes.dex */
public interface i {
    String a();

    Date b();

    Date c();

    String getId();

    String getIssuer();

    Date getNotBefore();

    Map<String, a> h();

    List<String> k();

    a l(String str);
}
