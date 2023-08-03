package com.tangxiaolv.telegramgallery.Utils;

import android.os.Looper;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: NotificationCenter.java */
/* loaded from: classes3.dex */
public class h {
    public static final int A;
    public static final int B;
    public static final int C;
    public static final int D;
    public static final int E;
    private static volatile h F = null;

    /* renamed from: h  reason: collision with root package name */
    private static int f56679h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f56680i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f56681j;

    /* renamed from: k  reason: collision with root package name */
    public static final int f56682k;

    /* renamed from: l  reason: collision with root package name */
    public static final int f56683l;

    /* renamed from: m  reason: collision with root package name */
    public static final int f56684m;

    /* renamed from: n  reason: collision with root package name */
    public static final int f56685n;

    /* renamed from: o  reason: collision with root package name */
    public static final int f56686o;

    /* renamed from: p  reason: collision with root package name */
    public static final int f56687p;

    /* renamed from: q  reason: collision with root package name */
    public static final int f56688q;

    /* renamed from: r  reason: collision with root package name */
    public static final int f56689r;

    /* renamed from: s  reason: collision with root package name */
    public static final int f56690s;

    /* renamed from: t  reason: collision with root package name */
    public static final int f56691t;

    /* renamed from: u  reason: collision with root package name */
    public static final int f56692u;

    /* renamed from: v  reason: collision with root package name */
    public static final int f56693v;

    /* renamed from: w  reason: collision with root package name */
    public static final int f56694w;

    /* renamed from: x  reason: collision with root package name */
    public static final int f56695x;

    /* renamed from: y  reason: collision with root package name */
    public static final int f56696y;

    /* renamed from: z  reason: collision with root package name */
    public static final int f56697z;

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<ArrayList<Object>> f56698a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private SparseArray<ArrayList<Object>> f56699b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private SparseArray<ArrayList<Object>> f56700c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<b> f56701d = new ArrayList<>(10);

    /* renamed from: e  reason: collision with root package name */
    private int f56702e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int[] f56703f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f56704g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NotificationCenter.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private int f56705a;

        /* renamed from: b  reason: collision with root package name */
        private Object[] f56706b;

        private b(int i4, Object[] objArr) {
            this.f56705a = i4;
            this.f56706b = objArr;
        }
    }

    /* compiled from: NotificationCenter.java */
    /* loaded from: classes3.dex */
    public interface c {
        void h(int i4, Object... objArr);
    }

    static {
        int i4 = 1 + 1;
        int i10 = i4 + 1;
        f56681j = i4;
        int i11 = i10 + 1;
        f56682k = i10;
        int i12 = i11 + 1;
        f56683l = i11;
        int i13 = i12 + 1;
        f56684m = i12;
        int i14 = i13 + 1;
        f56685n = i13;
        int i15 = i14 + 1;
        f56686o = i14;
        int i16 = i15 + 1;
        f56687p = i15;
        int i17 = i16 + 1;
        f56688q = i16;
        int i18 = i17 + 1;
        f56689r = i17;
        int i19 = i18 + 1;
        f56690s = i18;
        int i20 = i19 + 1;
        f56691t = i19;
        int i21 = i20 + 1;
        f56692u = i20;
        int i22 = i21 + 1;
        f56693v = i21;
        int i23 = i22 + 1;
        f56694w = i22;
        int i24 = i23 + 1;
        f56695x = i23;
        int i25 = i24 + 1;
        f56696y = i24;
        int i26 = i25 + 1;
        f56697z = i25;
        int i27 = i26 + 1;
        A = i26;
        int i28 = i27 + 1;
        B = i27;
        int i29 = i28 + 1;
        C = i28;
        int i30 = i29 + 1;
        D = i29;
        f56679h = i30 + 1;
        E = i30;
    }

    public static h b() {
        h hVar = F;
        if (hVar == null) {
            synchronized (h.class) {
                hVar = F;
                if (hVar == null) {
                    hVar = new h();
                    F = hVar;
                }
            }
        }
        return hVar;
    }

    public void a(Object obj, int i4) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (this.f56702e != 0) {
                ArrayList<Object> arrayList = this.f56700c.get(i4);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f56700c.put(i4, arrayList);
                }
                arrayList.add(obj);
                return;
            }
            ArrayList<Object> arrayList2 = this.f56698a.get(i4);
            if (arrayList2 == null) {
                SparseArray<ArrayList<Object>> sparseArray = this.f56698a;
                ArrayList<Object> arrayList3 = new ArrayList<>();
                sparseArray.put(i4, arrayList3);
                arrayList2 = arrayList3;
            }
            if (arrayList2.contains(obj)) {
                return;
            }
            arrayList2.add(obj);
            return;
        }
        throw new RuntimeException("addObserver allowed only from MAIN thread");
    }

    public boolean c() {
        return this.f56704g;
    }

    public void d(int i4, Object... objArr) {
        boolean z9 = false;
        if (this.f56703f != null) {
            int i10 = 0;
            while (true) {
                int[] iArr = this.f56703f;
                if (i10 >= iArr.length) {
                    break;
                } else if (iArr[i10] == i4) {
                    z9 = true;
                    break;
                } else {
                    i10++;
                }
            }
        }
        e(i4, z9, objArr);
    }

    public void e(int i4, boolean z9, Object... objArr) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (!z9 && this.f56704g) {
                this.f56701d.add(new b(i4, objArr));
                return;
            }
            this.f56702e++;
            ArrayList<Object> arrayList = this.f56698a.get(i4);
            if (arrayList != null && !arrayList.isEmpty()) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    ((c) arrayList.get(i10)).h(i4, objArr);
                }
            }
            int i11 = this.f56702e - 1;
            this.f56702e = i11;
            if (i11 == 0) {
                if (this.f56699b.size() != 0) {
                    for (int i12 = 0; i12 < this.f56699b.size(); i12++) {
                        int keyAt = this.f56699b.keyAt(i12);
                        ArrayList<Object> arrayList2 = this.f56699b.get(keyAt);
                        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                            f(arrayList2.get(i13), keyAt);
                        }
                    }
                    this.f56699b.clear();
                }
                if (this.f56700c.size() != 0) {
                    for (int i14 = 0; i14 < this.f56700c.size(); i14++) {
                        int keyAt2 = this.f56700c.keyAt(i14);
                        ArrayList<Object> arrayList3 = this.f56700c.get(keyAt2);
                        for (int i15 = 0; i15 < arrayList3.size(); i15++) {
                            a(arrayList3.get(i15), keyAt2);
                        }
                    }
                    this.f56700c.clear();
                    return;
                }
                return;
            }
            return;
        }
        throw new RuntimeException("addObserver allowed only from MAIN thread");
    }

    public void f(Object obj, int i4) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (this.f56702e != 0) {
                ArrayList<Object> arrayList = this.f56699b.get(i4);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f56699b.put(i4, arrayList);
                }
                arrayList.add(obj);
                return;
            }
            ArrayList<Object> arrayList2 = this.f56698a.get(i4);
            if (arrayList2 != null) {
                arrayList2.remove(obj);
                return;
            }
            return;
        }
        throw new RuntimeException("addObserver allowed only from MAIN thread");
    }

    public void g(int[] iArr) {
        this.f56703f = iArr;
    }

    public void h(boolean z9) {
        this.f56704g = z9;
        if (z9 || this.f56701d.isEmpty()) {
            return;
        }
        Iterator<b> it = this.f56701d.iterator();
        while (it.hasNext()) {
            b next = it.next();
            e(next.f56705a, true, next.f56706b);
        }
        this.f56701d.clear();
    }
}
