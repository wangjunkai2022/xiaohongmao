package org.aspectj.runtime.internal;

/* compiled from: CFlowPlusState.java */
/* loaded from: classes4.dex */
public class c extends l8.a {

    /* renamed from: b  reason: collision with root package name */
    private Object[] f91044b;

    public c(Object[] objArr) {
        this.f91044b = objArr;
    }

    @Override // l8.a
    public Object a(int i4) {
        return this.f91044b[i4];
    }

    public c(Object[] objArr, Object obj) {
        super(obj);
        this.f91044b = objArr;
    }
}
