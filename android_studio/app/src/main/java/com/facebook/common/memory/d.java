package com.facebook.common.memory;

/* compiled from: NoOpMemoryTrimmableRegistry.java */
/* loaded from: classes.dex */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private static d f10989a;

    public static synchronized d c() {
        d dVar;
        synchronized (d.class) {
            if (f10989a == null) {
                f10989a = new d();
            }
            dVar = f10989a;
        }
        return dVar;
    }

    @Override // com.facebook.common.memory.c
    public void a(b trimmable) {
    }

    @Override // com.facebook.common.memory.c
    public void b(b trimmable) {
    }
}
