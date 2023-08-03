package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.List;

/* compiled from: ObjectBuffer.java */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: e  reason: collision with root package name */
    private static final int f16033e = 16384;

    /* renamed from: f  reason: collision with root package name */
    private static final int f16034f = 262144;

    /* renamed from: a  reason: collision with root package name */
    private l<Object[]> f16035a;

    /* renamed from: b  reason: collision with root package name */
    private l<Object[]> f16036b;

    /* renamed from: c  reason: collision with root package name */
    private int f16037c;

    /* renamed from: d  reason: collision with root package name */
    private Object[] f16038d;

    protected final void a(Object obj, int i4, Object[] objArr, int i10) {
        int i11 = 0;
        for (l<Object[]> lVar = this.f16035a; lVar != null; lVar = lVar.c()) {
            Object[] d4 = lVar.d();
            int length = d4.length;
            System.arraycopy(d4, 0, obj, i11, length);
            i11 += length;
        }
        System.arraycopy(objArr, 0, obj, i11, i10);
        int i12 = i11 + i10;
        if (i12 == i4) {
            return;
        }
        throw new IllegalStateException("Should have gotten " + i4 + " entries, got " + i12);
    }

    protected void b() {
        l<Object[]> lVar = this.f16036b;
        if (lVar != null) {
            this.f16038d = lVar.d();
        }
        this.f16036b = null;
        this.f16035a = null;
        this.f16037c = 0;
    }

    public Object[] c(Object[] objArr) {
        l<Object[]> lVar = new l<>(objArr, null);
        if (this.f16035a == null) {
            this.f16036b = lVar;
            this.f16035a = lVar;
        } else {
            this.f16036b.b(lVar);
            this.f16036b = lVar;
        }
        int length = objArr.length;
        this.f16037c += length;
        if (length < 16384) {
            length += length;
        } else if (length < 262144) {
            length += length >> 2;
        }
        return new Object[length];
    }

    public int d() {
        return this.f16037c;
    }

    public void e(Object[] objArr, int i4, List<Object> list) {
        int i10;
        l<Object[]> lVar = this.f16035a;
        while (true) {
            i10 = 0;
            if (lVar == null) {
                break;
            }
            Object[] d4 = lVar.d();
            int length = d4.length;
            while (i10 < length) {
                list.add(d4[i10]);
                i10++;
            }
            lVar = lVar.c();
        }
        while (i10 < i4) {
            list.add(objArr[i10]);
            i10++;
        }
        b();
    }

    public Object[] f(Object[] objArr, int i4) {
        int i10 = this.f16037c + i4;
        Object[] objArr2 = new Object[i10];
        a(objArr2, i10, objArr, i4);
        b();
        return objArr2;
    }

    public <T> T[] g(Object[] objArr, int i4, Class<T> cls) {
        int i10 = this.f16037c + i4;
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i10));
        a(tArr, i10, objArr, i4);
        b();
        return tArr;
    }

    public int h() {
        Object[] objArr = this.f16038d;
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public Object[] i() {
        b();
        Object[] objArr = this.f16038d;
        if (objArr == null) {
            Object[] objArr2 = new Object[12];
            this.f16038d = objArr2;
            return objArr2;
        }
        return objArr;
    }

    public Object[] j(Object[] objArr, int i4) {
        b();
        Object[] objArr2 = this.f16038d;
        if (objArr2 == null || objArr2.length < i4) {
            this.f16038d = new Object[Math.max(12, i4)];
        }
        System.arraycopy(objArr, 0, this.f16038d, 0, i4);
        return this.f16038d;
    }
}
