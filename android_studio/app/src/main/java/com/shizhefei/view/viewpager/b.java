package com.shizhefei.view.viewpager;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.view.View;

/* compiled from: RecycleBin.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private View[] f55511a = new View[0];

    /* renamed from: b  reason: collision with root package name */
    private int[] f55512b = new int[0];

    /* renamed from: c  reason: collision with root package name */
    private SparseArray<View>[] f55513c;

    /* renamed from: d  reason: collision with root package name */
    private int f55514d;

    /* renamed from: e  reason: collision with root package name */
    private SparseArray<View> f55515e;

    private void c() {
        int length = this.f55511a.length;
        int i4 = this.f55514d;
        SparseArray<View>[] sparseArrayArr = this.f55513c;
        for (int i10 = 0; i10 < i4; i10++) {
            SparseArray<View> sparseArray = sparseArrayArr[i10];
            int size = sparseArray.size();
            int i11 = size - length;
            int i12 = size - 1;
            int i13 = 0;
            while (i13 < i11) {
                sparseArray.remove(sparseArray.keyAt(i12));
                i13++;
                i12--;
            }
        }
    }

    static View d(SparseArray<View> sparseArray, int i4) {
        int size = sparseArray.size();
        if (size > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                int keyAt = sparseArray.keyAt(i10);
                View view = sparseArray.get(keyAt);
                if (keyAt == i4) {
                    sparseArray.remove(keyAt);
                    return view;
                }
            }
            int i11 = size - 1;
            View valueAt = sparseArray.valueAt(i11);
            sparseArray.remove(sparseArray.keyAt(i11));
            return valueAt;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"NewApi"})
    public void a(View view, int i4, int i10) {
        if (this.f55514d == 1) {
            this.f55515e.put(i4, view);
        } else {
            this.f55513c[i10].put(i4, view);
        }
        view.setAccessibilityDelegate(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View b(int i4, int i10) {
        if (this.f55514d == 1) {
            return d(this.f55515e, i4);
        }
        if (i10 >= 0) {
            SparseArray<View>[] sparseArrayArr = this.f55513c;
            if (i10 < sparseArrayArr.length) {
                return d(sparseArrayArr[i10], i4);
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"NewApi"})
    public void e() {
        View[] viewArr = this.f55511a;
        int[] iArr = this.f55512b;
        boolean z9 = this.f55514d > 1;
        SparseArray<View> sparseArray = this.f55515e;
        for (int length = viewArr.length - 1; length >= 0; length--) {
            View view = viewArr[length];
            if (view != null) {
                int i4 = iArr[length];
                viewArr[length] = null;
                iArr[length] = -1;
                if (g(i4)) {
                    if (z9) {
                        sparseArray = this.f55513c[i4];
                    }
                    sparseArray.put(length, view);
                    view.setAccessibilityDelegate(null);
                }
            }
        }
        c();
    }

    public void f(int i4) {
        if (i4 >= 1) {
            SparseArray<View>[] sparseArrayArr = new SparseArray[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                sparseArrayArr[i10] = new SparseArray<>();
            }
            this.f55514d = i4;
            this.f55515e = sparseArrayArr[0];
            this.f55513c = sparseArrayArr;
            return;
        }
        throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
    }

    protected boolean g(int i4) {
        return i4 >= 0;
    }
}
