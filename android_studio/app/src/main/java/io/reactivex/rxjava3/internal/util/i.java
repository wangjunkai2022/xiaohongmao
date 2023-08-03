package io.reactivex.rxjava3.internal.util;

import java.util.ArrayList;

/* compiled from: LinkedArrayList.java */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    final int f81333a;

    /* renamed from: b  reason: collision with root package name */
    Object[] f81334b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f81335c;

    /* renamed from: d  reason: collision with root package name */
    volatile int f81336d;

    /* renamed from: e  reason: collision with root package name */
    int f81337e;

    public i(int capacityHint) {
        this.f81333a = capacityHint;
    }

    public void a(Object o9) {
        if (this.f81336d == 0) {
            Object[] objArr = new Object[this.f81333a + 1];
            this.f81334b = objArr;
            this.f81335c = objArr;
            objArr[0] = o9;
            this.f81337e = 1;
            this.f81336d = 1;
            return;
        }
        int i4 = this.f81337e;
        int i10 = this.f81333a;
        if (i4 == i10) {
            Object[] objArr2 = new Object[i10 + 1];
            objArr2[0] = o9;
            this.f81335c[i10] = objArr2;
            this.f81335c = objArr2;
            this.f81337e = 1;
            this.f81336d++;
            return;
        }
        this.f81335c[i4] = o9;
        this.f81337e = i4 + 1;
        this.f81336d++;
    }

    public Object[] b() {
        return this.f81334b;
    }

    public int c() {
        return this.f81336d;
    }

    public String toString() {
        int i4 = this.f81333a;
        int i10 = this.f81336d;
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
