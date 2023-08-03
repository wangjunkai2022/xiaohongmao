package com.google.android.exoplayer2.source;

import android.util.SparseArray;

/* compiled from: SpannedData.java */
/* loaded from: classes2.dex */
final class f1<V> {

    /* renamed from: a  reason: collision with root package name */
    private int f24931a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<V> f24932b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h<V> f24933c;

    public f1() {
        this(e1.f24926a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Object obj) {
    }

    public void b(int i4, V v9) {
        if (this.f24931a == -1) {
            com.google.android.exoplayer2.util.a.i(this.f24932b.size() == 0);
            this.f24931a = 0;
        }
        if (this.f24932b.size() > 0) {
            SparseArray<V> sparseArray = this.f24932b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            com.google.android.exoplayer2.util.a.a(i4 >= keyAt);
            if (keyAt == i4) {
                SparseArray<V> sparseArray2 = this.f24932b;
                this.f24933c.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f24932b.append(i4, v9);
    }

    public void c() {
        for (int i4 = 0; i4 < this.f24932b.size(); i4++) {
            this.f24933c.accept(this.f24932b.valueAt(i4));
        }
        this.f24931a = -1;
        this.f24932b.clear();
    }

    public void d(int i4) {
        for (int size = this.f24932b.size() - 1; size >= 0 && i4 < this.f24932b.keyAt(size); size--) {
            this.f24933c.accept(this.f24932b.valueAt(size));
            this.f24932b.removeAt(size);
        }
        this.f24931a = this.f24932b.size() > 0 ? Math.min(this.f24931a, this.f24932b.size() - 1) : -1;
    }

    public void e(int i4) {
        int i10 = 0;
        while (i10 < this.f24932b.size() - 1) {
            int i11 = i10 + 1;
            if (i4 < this.f24932b.keyAt(i11)) {
                return;
            }
            this.f24933c.accept(this.f24932b.valueAt(i10));
            this.f24932b.removeAt(i10);
            int i12 = this.f24931a;
            if (i12 > 0) {
                this.f24931a = i12 - 1;
            }
            i10 = i11;
        }
    }

    public V f(int i4) {
        if (this.f24931a == -1) {
            this.f24931a = 0;
        }
        while (true) {
            int i10 = this.f24931a;
            if (i10 <= 0 || i4 >= this.f24932b.keyAt(i10)) {
                break;
            }
            this.f24931a--;
        }
        while (this.f24931a < this.f24932b.size() - 1 && i4 >= this.f24932b.keyAt(this.f24931a + 1)) {
            this.f24931a++;
        }
        return this.f24932b.valueAt(this.f24931a);
    }

    public V g() {
        SparseArray<V> sparseArray = this.f24932b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean h() {
        return this.f24932b.size() == 0;
    }

    public f1(com.google.android.exoplayer2.util.h<V> hVar) {
        this.f24932b = new SparseArray<>();
        this.f24933c = hVar;
        this.f24931a = -1;
    }
}
