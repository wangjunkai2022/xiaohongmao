package io.reactivex.internal.util;

import java.util.ArrayList;

/* compiled from: LinkedArrayList.java */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    final int f75918a;

    /* renamed from: b  reason: collision with root package name */
    Object[] f75919b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f75920c;

    /* renamed from: d  reason: collision with root package name */
    volatile int f75921d;

    /* renamed from: e  reason: collision with root package name */
    int f75922e;

    public i(int i4) {
        this.f75918a = i4;
    }

    public void a(Object obj) {
        if (this.f75921d == 0) {
            Object[] objArr = new Object[this.f75918a + 1];
            this.f75919b = objArr;
            this.f75920c = objArr;
            objArr[0] = obj;
            this.f75922e = 1;
            this.f75921d = 1;
            return;
        }
        int i4 = this.f75922e;
        int i10 = this.f75918a;
        if (i4 == i10) {
            Object[] objArr2 = new Object[i10 + 1];
            objArr2[0] = obj;
            this.f75920c[i10] = objArr2;
            this.f75920c = objArr2;
            this.f75922e = 1;
            this.f75921d++;
            return;
        }
        this.f75920c[i4] = obj;
        this.f75922e = i4 + 1;
        this.f75921d++;
    }

    public Object[] b() {
        return this.f75919b;
    }

    public int c() {
        return this.f75921d;
    }

    public String toString() {
        int i4 = this.f75918a;
        int i10 = this.f75921d;
        ArrayList arrayList = new ArrayList(i10 + 1);
        Object[] b10 = b();
        int i11 = 0;
        while (true) {
            int i12 = 0;
            while (i11 < i10) {
                arrayList.add(b10[i12]);
                i11++;
                i12++;
                if (i12 == i4) {
                    break;
                }
            }
            return arrayList.toString();
            b10 = b10[i4];
        }
    }
}
