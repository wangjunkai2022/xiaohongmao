package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* compiled from: MemberKey.java */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: c  reason: collision with root package name */
    static final Class<?>[] f15307c = new Class[0];

    /* renamed from: a  reason: collision with root package name */
    final String f15308a;

    /* renamed from: b  reason: collision with root package name */
    final Class<?>[] f15309b;

    public n(Method method) {
        this(method.getName(), method.getParameterTypes());
    }

    public int a() {
        return this.f15309b.length;
    }

    public String b() {
        return this.f15308a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == n.class) {
            n nVar = (n) obj;
            if (this.f15308a.equals(nVar.f15308a)) {
                Class<?>[] clsArr = nVar.f15309b;
                int length = this.f15309b.length;
                if (clsArr.length != length) {
                    return false;
                }
                for (int i4 = 0; i4 < length; i4++) {
                    if (clsArr[i4] != this.f15309b[i4]) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return this.f15308a.hashCode() + this.f15309b.length;
    }

    public String toString() {
        return this.f15308a + "(" + this.f15309b.length + "-args)";
    }

    public n(Constructor<?> constructor) {
        this("", constructor.getParameterTypes());
    }

    public n(String str, Class<?>[] clsArr) {
        this.f15308a = str;
        this.f15309b = clsArr == null ? f15307c : clsArr;
    }
}
