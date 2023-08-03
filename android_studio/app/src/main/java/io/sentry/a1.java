package io.sentry;

import java.util.Arrays;
import java.util.List;
import m8.a;

/* compiled from: IpAddressUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class a1 {

    /* renamed from: a  reason: collision with root package name */
    static final String f81878a = "{{auto}}";

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f81879b = Arrays.asList(f81878a, "{{ auto }}");

    private a1() {
    }

    public static boolean a(@m8.h String str) {
        return str != null && f81879b.contains(str);
    }
}
