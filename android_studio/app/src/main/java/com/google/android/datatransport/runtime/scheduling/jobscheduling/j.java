package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import o2.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class j implements a.InterfaceC0791a {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.persistence.c f20537a;

    private j(com.google.android.datatransport.runtime.scheduling.persistence.c cVar) {
        this.f20537a = cVar;
    }

    public static a.InterfaceC0791a a(com.google.android.datatransport.runtime.scheduling.persistence.c cVar) {
        return new j(cVar);
    }

    @Override // o2.a.InterfaceC0791a
    public Object execute() {
        return Integer.valueOf(this.f20537a.c());
    }
}
