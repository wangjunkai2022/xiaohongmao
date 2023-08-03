package io.sentry.util;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import m8.a;

/* compiled from: HttpUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f84067a = Arrays.asList("X-FORWARDED-FOR", "AUTHORIZATION", "COOKIE", "SET-COOKIE", "X-API-KEY", "X-REAL-IP", "REMOTE-ADDR", "FORWARDED", "PROXY-AUTHORIZATION", "X-CSRF-TOKEN", "X-CSRFTOKEN", "X-XSRF-TOKEN");

    public static boolean a(@m8.g String str) {
        return f84067a.contains(str.toUpperCase(Locale.ROOT));
    }
}
