package org.aspectj.internal.lang.reflect;

/* compiled from: InterTypeDeclarationImpl.java */
/* loaded from: classes4.dex */
public class i implements k8.o {

    /* renamed from: a  reason: collision with root package name */
    private k8.c<?> f90972a;

    /* renamed from: b  reason: collision with root package name */
    protected String f90973b;

    /* renamed from: c  reason: collision with root package name */
    private k8.c<?> f90974c;

    /* renamed from: d  reason: collision with root package name */
    private int f90975d;

    public i(k8.c<?> cVar, String str, int i4) {
        this.f90972a = cVar;
        this.f90973b = str;
        this.f90975d = i4;
        try {
            this.f90974c = (k8.c) q.c(str, cVar.Z());
        } catch (ClassNotFoundException unused) {
        }
    }

    @Override // k8.o
    public k8.c<?> a() {
        return this.f90972a;
    }

    @Override // k8.o
    public k8.c<?> f() throws ClassNotFoundException {
        k8.c<?> cVar = this.f90974c;
        if (cVar != null) {
            return cVar;
        }
        throw new ClassNotFoundException(this.f90973b);
    }

    @Override // k8.o
    public int getModifiers() {
        return this.f90975d;
    }

    public i(k8.c<?> cVar, k8.c<?> cVar2, int i4) {
        this.f90972a = cVar;
        this.f90974c = cVar2;
        this.f90973b = cVar2.getName();
        this.f90975d = i4;
    }
}
