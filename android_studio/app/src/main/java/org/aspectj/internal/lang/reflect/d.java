package org.aspectj.internal.lang.reflect;

import k8.x;

/* compiled from: DeclareErrorOrWarningImpl.java */
/* loaded from: classes4.dex */
public class d implements k8.h {

    /* renamed from: a  reason: collision with root package name */
    private x f90953a;

    /* renamed from: b  reason: collision with root package name */
    private String f90954b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f90955c;

    /* renamed from: d  reason: collision with root package name */
    private k8.c f90956d;

    public d(String str, String str2, boolean z9, k8.c cVar) {
        this.f90953a = new n(str);
        this.f90954b = str2;
        this.f90955c = z9;
        this.f90956d = cVar;
    }

    @Override // k8.h
    public k8.c a() {
        return this.f90956d;
    }

    @Override // k8.h
    public x b() {
        return this.f90953a;
    }

    @Override // k8.h
    public String c() {
        return this.f90954b;
    }

    @Override // k8.h
    public boolean isError() {
        return this.f90955c;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare ");
        stringBuffer.append(isError() ? "error : " : "warning : ");
        stringBuffer.append(b().a());
        stringBuffer.append(" : ");
        stringBuffer.append("\"");
        stringBuffer.append(c());
        stringBuffer.append("\"");
        return stringBuffer.toString();
    }
}
