package org.aspectj.runtime.reflect;

/* compiled from: CodeSignatureImpl.java */
/* loaded from: classes4.dex */
abstract class c extends j implements k8.f {

    /* renamed from: m  reason: collision with root package name */
    Class[] f91065m;

    /* renamed from: n  reason: collision with root package name */
    String[] f91066n;

    /* renamed from: o  reason: collision with root package name */
    Class[] f91067o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(int i4, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        super(i4, str, cls);
        this.f91065m = clsArr;
        this.f91066n = strArr;
        this.f91067o = clsArr2;
    }

    @Override // k8.f
    public Class[] c() {
        if (this.f91067o == null) {
            this.f91067o = v(5);
        }
        return this.f91067o;
    }

    @Override // k8.f
    public String[] e() {
        if (this.f91066n == null) {
            this.f91066n = t(4);
        }
        return this.f91066n;
    }

    @Override // k8.f
    public Class[] getParameterTypes() {
        if (this.f91065m == null) {
            this.f91065m = v(3);
        }
        return this.f91065m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str) {
        super(str);
    }
}
