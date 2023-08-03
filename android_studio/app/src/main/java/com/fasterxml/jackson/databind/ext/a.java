package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.util.g;

/* compiled from: Java7Handlers.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final a f15126a;

    static {
        a aVar;
        try {
            aVar = (a) g.n(b.class, false);
        } catch (Throwable unused) {
            aVar = null;
        }
        f15126a = aVar;
    }

    public static a d() {
        return f15126a;
    }

    public abstract Class<?> a();

    public abstract com.fasterxml.jackson.databind.d<?> b(Class<?> cls);

    public abstract com.fasterxml.jackson.databind.g<?> c(Class<?> cls);
}
