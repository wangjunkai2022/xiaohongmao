package com.ta.utdid2.core.persistent;

import java.util.Map;

/* compiled from: MySharedPreferences.java */
/* loaded from: classes3.dex */
public interface b {

    /* compiled from: MySharedPreferences.java */
    /* loaded from: classes3.dex */
    public interface a {
        a a(String str, String str2);

        a b(String str, long j4);

        a c(String str);

        a clear();

        boolean d();

        a e(String str, boolean z9);

        a f(String str, int i4);

        a g(String str, float f10);
    }

    /* compiled from: MySharedPreferences.java */
    /* renamed from: com.ta.utdid2.core.persistent.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0475b {
        void a(b bVar, String str);
    }

    boolean a(String str);

    boolean b();

    long c(String str, long j4);

    boolean d(String str, boolean z9);

    void e(InterfaceC0475b interfaceC0475b);

    void f(InterfaceC0475b interfaceC0475b);

    int g(String str, int i4);

    Map<String, ?> h();

    float i(String str, float f10);

    a j();

    String k(String str, String str2);
}
