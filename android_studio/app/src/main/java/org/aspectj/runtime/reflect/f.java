package org.aspectj.runtime.reflect;

import java.lang.reflect.Field;

/* compiled from: FieldSignatureImpl.java */
/* loaded from: classes4.dex */
public class f extends j implements k8.l {

    /* renamed from: m  reason: collision with root package name */
    Class f91076m;

    /* renamed from: n  reason: collision with root package name */
    private Field f91077n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(int i4, String str, Class cls, Class cls2) {
        super(i4, str, cls);
        this.f91076m = cls2;
    }

    @Override // k8.l
    public Class h() {
        if (this.f91076m == null) {
            this.f91076m = u(3);
        }
        return this.f91076m;
    }

    @Override // k8.l
    public Field j() {
        if (this.f91077n == null) {
            try {
                this.f91077n = a().getDeclaredField(getName());
            } catch (Exception unused) {
            }
        }
        return this.f91077n;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String q(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nVar.e(getModifiers()));
        if (nVar.f91111b) {
            stringBuffer.append(nVar.g(h()));
        }
        if (nVar.f91111b) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(nVar.f(a(), m()));
        stringBuffer.append(".");
        stringBuffer.append(getName());
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str) {
        super(str);
    }
}
