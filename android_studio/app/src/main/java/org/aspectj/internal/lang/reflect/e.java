package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Type;
import k8.a0;

/* compiled from: DeclareParentsImpl.java */
/* loaded from: classes4.dex */
public class e implements k8.i {

    /* renamed from: a  reason: collision with root package name */
    private k8.c<?> f90957a;

    /* renamed from: b  reason: collision with root package name */
    private a0 f90958b;

    /* renamed from: c  reason: collision with root package name */
    private Type[] f90959c;

    /* renamed from: d  reason: collision with root package name */
    private String f90960d;

    /* renamed from: e  reason: collision with root package name */
    private String f90961e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f90962f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f90963g;

    public e(String str, String str2, boolean z9, k8.c<?> cVar) {
        this.f90963g = false;
        this.f90958b = new s(str);
        this.f90962f = z9;
        this.f90957a = cVar;
        this.f90960d = str2;
        try {
            this.f90959c = q.a(str2, cVar.Z());
        } catch (ClassNotFoundException e4) {
            this.f90963g = true;
            this.f90961e = e4.getMessage();
        }
    }

    @Override // k8.i
    public k8.c a() {
        return this.f90957a;
    }

    @Override // k8.i
    public boolean b() {
        return !this.f90962f;
    }

    @Override // k8.i
    public Type[] c() throws ClassNotFoundException {
        if (!this.f90963g) {
            return this.f90959c;
        }
        throw new ClassNotFoundException(this.f90961e);
    }

    @Override // k8.i
    public a0 d() {
        return this.f90958b;
    }

    @Override // k8.i
    public boolean isExtends() {
        return this.f90962f;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare parents : ");
        stringBuffer.append(d().a());
        stringBuffer.append(isExtends() ? " extends " : " implements ");
        stringBuffer.append(this.f90960d);
        return stringBuffer.toString();
    }
}
