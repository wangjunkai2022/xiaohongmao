package org.aspectj.runtime.reflect;

import k8.z;
import org.aspectj.lang.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JoinPointImpl.java */
/* loaded from: classes4.dex */
public class h implements org.aspectj.lang.d {

    /* renamed from: n  reason: collision with root package name */
    Object f91079n;

    /* renamed from: o  reason: collision with root package name */
    Object f91080o;

    /* renamed from: p  reason: collision with root package name */
    Object[] f91081p;

    /* renamed from: q  reason: collision with root package name */
    c.b f91082q;

    /* renamed from: r  reason: collision with root package name */
    private org.aspectj.runtime.internal.a f91083r;

    /* compiled from: JoinPointImpl.java */
    /* loaded from: classes4.dex */
    static class a extends b implements c.a {
        public a(int i4, String str, org.aspectj.lang.e eVar, z zVar) {
            super(i4, str, eVar, zVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JoinPointImpl.java */
    /* loaded from: classes4.dex */
    public static class b implements c.b {

        /* renamed from: a  reason: collision with root package name */
        String f91084a;

        /* renamed from: b  reason: collision with root package name */
        org.aspectj.lang.e f91085b;

        /* renamed from: c  reason: collision with root package name */
        z f91086c;

        /* renamed from: d  reason: collision with root package name */
        private int f91087d;

        public b(int i4, String str, org.aspectj.lang.e eVar, z zVar) {
            this.f91084a = str;
            this.f91085b = eVar;
            this.f91086c = zVar;
            this.f91087d = i4;
        }

        String a(n nVar) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(nVar.d(getKind()));
            stringBuffer.append("(");
            stringBuffer.append(((l) getSignature()).D(nVar));
            stringBuffer.append(")");
            return stringBuffer.toString();
        }

        @Override // org.aspectj.lang.c.b
        public final String b() {
            return a(n.f91107j);
        }

        @Override // org.aspectj.lang.c.b
        public final String d() {
            return a(n.f91109l);
        }

        @Override // org.aspectj.lang.c.b
        public z e() {
            return this.f91086c;
        }

        @Override // org.aspectj.lang.c.b
        public int getId() {
            return this.f91087d;
        }

        @Override // org.aspectj.lang.c.b
        public String getKind() {
            return this.f91084a;
        }

        @Override // org.aspectj.lang.c.b
        public org.aspectj.lang.e getSignature() {
            return this.f91085b;
        }

        @Override // org.aspectj.lang.c.b
        public final String toString() {
            return a(n.f91108k);
        }
    }

    public h(c.b bVar, Object obj, Object obj2, Object[] objArr) {
        this.f91082q = bVar;
        this.f91079n = obj;
        this.f91080o = obj2;
        this.f91081p = objArr;
    }

    @Override // org.aspectj.lang.c
    public Object a() {
        return this.f91080o;
    }

    @Override // org.aspectj.lang.c
    public final String b() {
        return this.f91082q.b();
    }

    @Override // org.aspectj.lang.c
    public c.b c() {
        return this.f91082q;
    }

    @Override // org.aspectj.lang.c
    public final String d() {
        return this.f91082q.d();
    }

    @Override // org.aspectj.lang.c
    public z e() {
        return this.f91082q.e();
    }

    @Override // org.aspectj.lang.d
    public Object f() throws Throwable {
        org.aspectj.runtime.internal.a aVar = this.f91083r;
        if (aVar == null) {
            return null;
        }
        return aVar.f(aVar.c());
    }

    @Override // org.aspectj.lang.d
    public Object g(Object[] objArr) throws Throwable {
        org.aspectj.runtime.internal.a aVar = this.f91083r;
        if (aVar == null) {
            return null;
        }
        int a10 = aVar.a();
        int i4 = 1;
        boolean z9 = (65536 & a10) != 0;
        int i10 = (a10 & 4096) != 0 ? 1 : 0;
        int i11 = (a10 & 256) != 0 ? 1 : 0;
        boolean z10 = (a10 & 16) != 0;
        boolean z11 = (a10 & 1) != 0;
        Object[] c10 = this.f91083r.c();
        int i12 = i10 + 0 + ((!z10 || z9) ? 0 : 1);
        if (i10 == 0 || i11 == 0) {
            i4 = 0;
        } else {
            c10[0] = objArr[0];
        }
        if (z10 && z11) {
            if (z9) {
                i4 = i11 + 1;
                c10[0] = objArr[i11];
            } else {
                i4 = i10 + 1;
                c10[i10] = objArr[i10];
            }
        }
        for (int i13 = i4; i13 < objArr.length; i13++) {
            c10[(i13 - i4) + i12] = objArr[i13];
        }
        return this.f91083r.f(c10);
    }

    @Override // org.aspectj.lang.c
    public String getKind() {
        return this.f91082q.getKind();
    }

    @Override // org.aspectj.lang.c
    public org.aspectj.lang.e getSignature() {
        return this.f91082q.getSignature();
    }

    @Override // org.aspectj.lang.c
    public Object h() {
        return this.f91079n;
    }

    @Override // org.aspectj.lang.c
    public Object[] i() {
        if (this.f91081p == null) {
            this.f91081p = new Object[0];
        }
        Object[] objArr = this.f91081p;
        Object[] objArr2 = new Object[objArr.length];
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        return objArr2;
    }

    @Override // org.aspectj.lang.d
    public void j(org.aspectj.runtime.internal.a aVar) {
        this.f91083r = aVar;
    }

    @Override // org.aspectj.lang.c
    public final String toString() {
        return this.f91082q.toString();
    }
}
