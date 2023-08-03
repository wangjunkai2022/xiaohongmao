package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* compiled from: SlidingPercentile.java */
/* loaded from: classes2.dex */
public class o0 {

    /* renamed from: h  reason: collision with root package name */
    private static final Comparator<b> f27625h = m0.f27588a;

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator<b> f27626i = n0.f27615a;

    /* renamed from: j  reason: collision with root package name */
    private static final int f27627j = -1;

    /* renamed from: k  reason: collision with root package name */
    private static final int f27628k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final int f27629l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f27630m = 5;

    /* renamed from: a  reason: collision with root package name */
    private final int f27631a;

    /* renamed from: e  reason: collision with root package name */
    private int f27635e;

    /* renamed from: f  reason: collision with root package name */
    private int f27636f;

    /* renamed from: g  reason: collision with root package name */
    private int f27637g;

    /* renamed from: c  reason: collision with root package name */
    private final b[] f27633c = new b[5];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<b> f27632b = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private int f27634d = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SlidingPercentile.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f27638a;

        /* renamed from: b  reason: collision with root package name */
        public int f27639b;

        /* renamed from: c  reason: collision with root package name */
        public float f27640c;

        private b() {
        }
    }

    public o0(int i4) {
        this.f27631a = i4;
    }

    private void d() {
        if (this.f27634d != 1) {
            Collections.sort(this.f27632b, f27625h);
            this.f27634d = 1;
        }
    }

    private void e() {
        if (this.f27634d != 0) {
            Collections.sort(this.f27632b, f27626i);
            this.f27634d = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.f27638a - bVar2.f27638a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.f27640c, bVar2.f27640c);
    }

    public void c(int i4, float f10) {
        b bVar;
        d();
        int i10 = this.f27637g;
        if (i10 > 0) {
            b[] bVarArr = this.f27633c;
            int i11 = i10 - 1;
            this.f27637g = i11;
            bVar = bVarArr[i11];
        } else {
            bVar = new b();
        }
        int i12 = this.f27635e;
        this.f27635e = i12 + 1;
        bVar.f27638a = i12;
        bVar.f27639b = i4;
        bVar.f27640c = f10;
        this.f27632b.add(bVar);
        this.f27636f += i4;
        while (true) {
            int i13 = this.f27636f;
            int i14 = this.f27631a;
            if (i13 <= i14) {
                return;
            }
            int i15 = i13 - i14;
            b bVar2 = this.f27632b.get(0);
            int i16 = bVar2.f27639b;
            if (i16 <= i15) {
                this.f27636f -= i16;
                this.f27632b.remove(0);
                int i17 = this.f27637g;
                if (i17 < 5) {
                    b[] bVarArr2 = this.f27633c;
                    this.f27637g = i17 + 1;
                    bVarArr2[i17] = bVar2;
                }
            } else {
                bVar2.f27639b = i16 - i15;
                this.f27636f -= i15;
            }
        }
    }

    public float f(float f10) {
        e();
        float f11 = f10 * this.f27636f;
        int i4 = 0;
        for (int i10 = 0; i10 < this.f27632b.size(); i10++) {
            b bVar = this.f27632b.get(i10);
            i4 += bVar.f27639b;
            if (i4 >= f11) {
                return bVar.f27640c;
            }
        }
        if (this.f27632b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<b> arrayList = this.f27632b;
        return arrayList.get(arrayList.size() - 1).f27640c;
    }

    public void i() {
        this.f27632b.clear();
        this.f27634d = -1;
        this.f27635e = 0;
        this.f27636f = 0;
    }
}
