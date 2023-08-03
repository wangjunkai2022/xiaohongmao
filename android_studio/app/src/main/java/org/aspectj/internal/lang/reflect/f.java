package org.aspectj.internal.lang.reflect;

import java.util.StringTokenizer;
import k8.a0;

/* compiled from: DeclarePrecedenceImpl.java */
/* loaded from: classes4.dex */
public class f implements k8.j {

    /* renamed from: a  reason: collision with root package name */
    private k8.c<?> f90964a;

    /* renamed from: b  reason: collision with root package name */
    private a0[] f90965b;

    /* renamed from: c  reason: collision with root package name */
    private String f90966c;

    public f(String str, k8.c cVar) {
        this.f90964a = cVar;
        this.f90966c = str;
        StringTokenizer stringTokenizer = new StringTokenizer(str.startsWith("(") ? str.substring(1, str.length() - 1) : str, ",");
        this.f90965b = new a0[stringTokenizer.countTokens()];
        int i4 = 0;
        while (true) {
            a0[] a0VarArr = this.f90965b;
            if (i4 >= a0VarArr.length) {
                return;
            }
            a0VarArr[i4] = new s(stringTokenizer.nextToken().trim());
            i4++;
        }
    }

    @Override // k8.j
    public k8.c a() {
        return this.f90964a;
    }

    @Override // k8.j
    public a0[] b() {
        return this.f90965b;
    }

    public String toString() {
        return "declare precedence : " + this.f90966c;
    }
}
