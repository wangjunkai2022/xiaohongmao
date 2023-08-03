package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.o;
import o2.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultScheduler.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements a.InterfaceC0791a {

    /* renamed from: a  reason: collision with root package name */
    private final c f20471a;

    /* renamed from: b  reason: collision with root package name */
    private final o f20472b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.i f20473c;

    private b(c cVar, o oVar, com.google.android.datatransport.runtime.i iVar) {
        this.f20471a = cVar;
        this.f20472b = oVar;
        this.f20473c = iVar;
    }

    public static a.InterfaceC0791a a(c cVar, o oVar, com.google.android.datatransport.runtime.i iVar) {
        return new b(cVar, oVar, iVar);
    }

    @Override // o2.a.InterfaceC0791a
    public Object execute() {
        return c.b(this.f20471a, this.f20472b, this.f20473c);
    }
}
