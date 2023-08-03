package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentRuntime.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class l implements o3.b {

    /* renamed from: a  reason: collision with root package name */
    private final q f35445a;

    /* renamed from: b  reason: collision with root package name */
    private final f f35446b;

    private l(q qVar, f fVar) {
        this.f35445a = qVar;
        this.f35446b = fVar;
    }

    public static o3.b a(q qVar, f fVar) {
        return new l(qVar, fVar);
    }

    @Override // o3.b
    public Object get() {
        Object a10;
        a10 = r1.d().a(new e0(this.f35446b, this.f35445a));
        return a10;
    }
}
