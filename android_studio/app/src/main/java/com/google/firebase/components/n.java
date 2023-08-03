package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentRuntime.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f35448a;

    /* renamed from: b  reason: collision with root package name */
    private final o3.b f35449b;

    private n(b0 b0Var, o3.b bVar) {
        this.f35448a = b0Var;
        this.f35449b = bVar;
    }

    public static Runnable a(b0 b0Var, o3.b bVar) {
        return new n(b0Var, bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f35448a.g(this.f35449b);
    }
}
