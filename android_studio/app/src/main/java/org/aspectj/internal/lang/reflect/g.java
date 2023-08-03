package org.aspectj.internal.lang.reflect;

import k8.x;

/* compiled from: DeclareSoftImpl.java */
/* loaded from: classes4.dex */
public class g implements k8.k {

    /* renamed from: a  reason: collision with root package name */
    private k8.c<?> f90967a;

    /* renamed from: b  reason: collision with root package name */
    private x f90968b;

    /* renamed from: c  reason: collision with root package name */
    private k8.c<?> f90969c;

    /* renamed from: d  reason: collision with root package name */
    private String f90970d;

    public g(k8.c<?> cVar, String str, String str2) {
        this.f90967a = cVar;
        this.f90968b = new n(str);
        try {
            this.f90969c = k8.d.a(Class.forName(str2, false, cVar.Z().getClassLoader()));
        } catch (ClassNotFoundException unused) {
            this.f90970d = str2;
        }
    }

    @Override // k8.k
    public k8.c a() {
        return this.f90967a;
    }

    @Override // k8.k
    public x b() {
        return this.f90968b;
    }

    @Override // k8.k
    public k8.c c() throws ClassNotFoundException {
        if (this.f90970d == null) {
            return this.f90969c;
        }
        throw new ClassNotFoundException(this.f90970d);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare soft : ");
        String str = this.f90970d;
        if (str != null) {
            stringBuffer.append(this.f90969c.getName());
        } else {
            stringBuffer.append(str);
        }
        stringBuffer.append(" : ");
        stringBuffer.append(b().a());
        return stringBuffer.toString();
    }
}
