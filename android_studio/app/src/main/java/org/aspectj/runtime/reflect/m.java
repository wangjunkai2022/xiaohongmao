package org.aspectj.runtime.reflect;

import k8.z;

/* compiled from: SourceLocationImpl.java */
/* loaded from: classes4.dex */
class m implements z {

    /* renamed from: a  reason: collision with root package name */
    Class f91104a;

    /* renamed from: b  reason: collision with root package name */
    String f91105b;

    /* renamed from: c  reason: collision with root package name */
    int f91106c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Class cls, String str, int i4) {
        this.f91104a = cls;
        this.f91105b = str;
        this.f91106c = i4;
    }

    @Override // k8.z
    public int a() {
        return this.f91106c;
    }

    @Override // k8.z
    public int b() {
        return -1;
    }

    @Override // k8.z
    public Class c() {
        return this.f91104a;
    }

    @Override // k8.z
    public String getFileName() {
        return this.f91105b;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getFileName());
        stringBuffer.append(":");
        stringBuffer.append(a());
        return stringBuffer.toString();
    }
}
