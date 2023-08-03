package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentRuntime.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final x f35450a;

    /* renamed from: b  reason: collision with root package name */
    private final o3.b f35451b;

    private o(x xVar, o3.b bVar) {
        this.f35450a = xVar;
        this.f35451b = bVar;
    }

    public static Runnable a(x xVar, o3.b bVar) {
        return new o(xVar, bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f35450a.a(this.f35451b);
    }
}
