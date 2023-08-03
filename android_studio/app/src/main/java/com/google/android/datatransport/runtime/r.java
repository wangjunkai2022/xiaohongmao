package com.google.android.datatransport.runtime;

/* compiled from: TransportImpl.java */
/* loaded from: classes2.dex */
final class r<T> implements com.google.android.datatransport.g<T> {

    /* renamed from: a  reason: collision with root package name */
    private final o f20462a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20463b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.c f20464c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.f<T, byte[]> f20465d;

    /* renamed from: e  reason: collision with root package name */
    private final s f20466e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(o oVar, String str, com.google.android.datatransport.c cVar, com.google.android.datatransport.f<T, byte[]> fVar, s sVar) {
        this.f20462a = oVar;
        this.f20463b = str;
        this.f20464c = cVar;
        this.f20465d = fVar;
        this.f20466e = sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(Exception exc) {
    }

    @Override // com.google.android.datatransport.g
    public void a(com.google.android.datatransport.d<T> dVar, com.google.android.datatransport.i iVar) {
        this.f20466e.a(n.a().f(this.f20462a).c(dVar).g(this.f20463b).e(this.f20465d).b(this.f20464c).a(), iVar);
    }

    @Override // com.google.android.datatransport.g
    public void b(com.google.android.datatransport.d<T> dVar) {
        a(dVar, q.b());
    }
}
