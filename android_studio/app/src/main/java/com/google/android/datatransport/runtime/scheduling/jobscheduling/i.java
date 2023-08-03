package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.backends.BackendResponse;
import o2.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class i implements a.InterfaceC0791a {

    /* renamed from: a  reason: collision with root package name */
    private final l f20532a;

    /* renamed from: b  reason: collision with root package name */
    private final BackendResponse f20533b;

    /* renamed from: c  reason: collision with root package name */
    private final Iterable f20534c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20535d;

    /* renamed from: e  reason: collision with root package name */
    private final int f20536e;

    private i(l lVar, BackendResponse backendResponse, Iterable iterable, com.google.android.datatransport.runtime.o oVar, int i4) {
        this.f20532a = lVar;
        this.f20533b = backendResponse;
        this.f20534c = iterable;
        this.f20535d = oVar;
        this.f20536e = i4;
    }

    public static a.InterfaceC0791a a(l lVar, BackendResponse backendResponse, Iterable iterable, com.google.android.datatransport.runtime.o oVar, int i4) {
        return new i(lVar, backendResponse, iterable, oVar, i4);
    }

    @Override // o2.a.InterfaceC0791a
    public Object execute() {
        return l.c(this.f20532a, this.f20533b, this.f20534c, this.f20535d, this.f20536e);
    }
}
