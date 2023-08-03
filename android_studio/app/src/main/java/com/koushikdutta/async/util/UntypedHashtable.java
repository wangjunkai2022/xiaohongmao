package com.koushikdutta.async.util;

import java.util.Hashtable;

/* loaded from: classes3.dex */
public class UntypedHashtable {

    /* renamed from: a  reason: collision with root package name */
    private Hashtable<String, Object> f45185a = new Hashtable<>();

    public <T> T a(String str) {
        return (T) this.f45185a.get(str);
    }

    public <T> T b(String str, T t9) {
        T t10 = (T) a(str);
        return t10 == null ? t9 : t10;
    }

    public void c(String str, Object obj) {
        this.f45185a.put(str, obj);
    }

    public void d(String str) {
        this.f45185a.remove(str);
    }
}
