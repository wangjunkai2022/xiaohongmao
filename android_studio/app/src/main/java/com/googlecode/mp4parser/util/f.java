package com.googlecode.mp4parser.util;

import java.util.Objects;

/* compiled from: IntHashMap.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private transient a[] f36974a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f36975b;

    /* renamed from: c  reason: collision with root package name */
    private int f36976c;

    /* renamed from: d  reason: collision with root package name */
    private float f36977d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IntHashMap.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f36978a;

        /* renamed from: b  reason: collision with root package name */
        int f36979b;

        /* renamed from: c  reason: collision with root package name */
        Object f36980c;

        /* renamed from: d  reason: collision with root package name */
        a f36981d;

        protected a(int i4, int i10, Object obj, a aVar) {
            this.f36978a = i4;
            this.f36979b = i10;
            this.f36980c = obj;
            this.f36981d = aVar;
        }
    }

    public f() {
        this(20, 0.75f);
    }

    public synchronized void a() {
        a[] aVarArr = this.f36974a;
        int length = aVarArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.f36975b = 0;
            } else {
                aVarArr[length] = null;
            }
        }
    }

    public boolean b(Object obj) {
        Objects.requireNonNull(obj);
        a[] aVarArr = this.f36974a;
        int length = aVarArr.length;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return false;
            }
            for (a aVar = aVarArr[i4]; aVar != null; aVar = aVar.f36981d) {
                if (aVar.f36980c.equals(obj)) {
                    return true;
                }
            }
            length = i4;
        }
    }

    public boolean c(int i4) {
        a[] aVarArr = this.f36974a;
        for (a aVar = aVarArr[(Integer.MAX_VALUE & i4) % aVarArr.length]; aVar != null; aVar = aVar.f36981d) {
            if (aVar.f36978a == i4) {
                return true;
            }
        }
        return false;
    }

    public boolean d(Object obj) {
        return b(obj);
    }

    public Object e(int i4) {
        a[] aVarArr = this.f36974a;
        for (a aVar = aVarArr[(Integer.MAX_VALUE & i4) % aVarArr.length]; aVar != null; aVar = aVar.f36981d) {
            if (aVar.f36978a == i4) {
                return aVar.f36980c;
            }
        }
        return null;
    }

    public boolean f() {
        return this.f36975b == 0;
    }

    public Object g(int i4, Object obj) {
        a[] aVarArr = this.f36974a;
        int i10 = Integer.MAX_VALUE & i4;
        int length = i10 % aVarArr.length;
        for (a aVar = aVarArr[length]; aVar != null; aVar = aVar.f36981d) {
            if (aVar.f36978a == i4) {
                Object obj2 = aVar.f36980c;
                aVar.f36980c = obj;
                return obj2;
            }
        }
        if (this.f36975b >= this.f36976c) {
            h();
            aVarArr = this.f36974a;
            length = i10 % aVarArr.length;
        }
        aVarArr[length] = new a(i4, i4, obj, aVarArr[length]);
        this.f36975b++;
        return null;
    }

    protected void h() {
        a[] aVarArr = this.f36974a;
        int length = aVarArr.length;
        int i4 = (length * 2) + 1;
        a[] aVarArr2 = new a[i4];
        this.f36976c = (int) (i4 * this.f36977d);
        this.f36974a = aVarArr2;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            a aVar = aVarArr[i10];
            while (aVar != null) {
                a aVar2 = aVar.f36981d;
                int i11 = (aVar.f36978a & Integer.MAX_VALUE) % i4;
                aVar.f36981d = aVarArr2[i11];
                aVarArr2[i11] = aVar;
                aVar = aVar2;
            }
            length = i10;
        }
    }

    public Object i(int i4) {
        a[] aVarArr = this.f36974a;
        int length = (Integer.MAX_VALUE & i4) % aVarArr.length;
        a aVar = null;
        for (a aVar2 = aVarArr[length]; aVar2 != null; aVar2 = aVar2.f36981d) {
            if (aVar2.f36978a == i4) {
                if (aVar != null) {
                    aVar.f36981d = aVar2.f36981d;
                } else {
                    aVarArr[length] = aVar2.f36981d;
                }
                this.f36975b--;
                Object obj = aVar2.f36980c;
                aVar2.f36980c = null;
                return obj;
            }
            aVar = aVar2;
        }
        return null;
    }

    public int j() {
        return this.f36975b;
    }

    public f(int i4) {
        this(i4, 0.75f);
    }

    public f(int i4, float f10) {
        if (i4 < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i4);
        } else if (f10 > 0.0f) {
            i4 = i4 == 0 ? 1 : i4;
            this.f36977d = f10;
            this.f36974a = new a[i4];
            this.f36976c = (int) (i4 * f10);
        } else {
            throw new IllegalArgumentException("Illegal Load: " + f10);
        }
    }
}
