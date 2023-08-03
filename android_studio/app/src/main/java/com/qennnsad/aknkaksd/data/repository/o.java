package com.qennnsad.aknkaksd.data.repository;

/* compiled from: StaticSourceFactory.java */
/* loaded from: classes3.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public static c f47776a;

    private o() {
    }

    public static c a() {
        if (f47776a == null) {
            synchronized (l.class) {
                if (f47776a == null) {
                    f47776a = new l();
                }
            }
        }
        return f47776a;
    }
}
