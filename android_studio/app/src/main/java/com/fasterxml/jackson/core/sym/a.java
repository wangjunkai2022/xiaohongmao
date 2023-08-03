package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ByteQuadsCanonicalizer.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: p  reason: collision with root package name */
    private static final int f14153p = 64;

    /* renamed from: q  reason: collision with root package name */
    private static final int f14154q = 65536;

    /* renamed from: r  reason: collision with root package name */
    private static final int f14155r = 16;

    /* renamed from: s  reason: collision with root package name */
    protected static final int f14156s = 6000;

    /* renamed from: t  reason: collision with root package name */
    private static final int f14157t = 33;

    /* renamed from: u  reason: collision with root package name */
    private static final int f14158u = 65599;

    /* renamed from: v  reason: collision with root package name */
    private static final int f14159v = 31;

    /* renamed from: a  reason: collision with root package name */
    protected final a f14160a;

    /* renamed from: b  reason: collision with root package name */
    protected final AtomicReference<C0114a> f14161b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f14162c;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f14163d;

    /* renamed from: e  reason: collision with root package name */
    protected final boolean f14164e;

    /* renamed from: f  reason: collision with root package name */
    protected int[] f14165f;

    /* renamed from: g  reason: collision with root package name */
    protected int f14166g;

    /* renamed from: h  reason: collision with root package name */
    protected int f14167h;

    /* renamed from: i  reason: collision with root package name */
    protected int f14168i;

    /* renamed from: j  reason: collision with root package name */
    protected int f14169j;

    /* renamed from: k  reason: collision with root package name */
    protected int f14170k;

    /* renamed from: l  reason: collision with root package name */
    protected String[] f14171l;

    /* renamed from: m  reason: collision with root package name */
    protected int f14172m;

    /* renamed from: n  reason: collision with root package name */
    protected int f14173n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f14174o;

    private a(int i4, int i10) {
        this.f14160a = null;
        this.f14170k = 0;
        this.f14174o = true;
        this.f14162c = i10;
        this.f14163d = false;
        this.f14164e = true;
        int i11 = 16;
        if (i4 < 16) {
            i4 = 16;
        } else if (((i4 - 1) & i4) != 0) {
            while (i11 < i4) {
                i11 += i11;
            }
            i4 = i11;
        }
        this.f14161b = new AtomicReference<>(C0114a.a(i4));
    }

    private void J(C0114a c0114a) {
        int i4 = c0114a.f14176b;
        C0114a c0114a2 = this.f14161b.get();
        if (i4 == c0114a2.f14176b) {
            return;
        }
        if (i4 > f14156s) {
            c0114a = C0114a.a(64);
        }
        this.f14161b.compareAndSet(c0114a2, c0114a);
    }

    private void K(boolean z9) {
        this.f14170k = 0;
        this.f14172m = l();
        this.f14173n = this.f14166g << 3;
        if (z9) {
            Arrays.fill(this.f14165f, 0);
            Arrays.fill(this.f14171l, (Object) null);
        }
    }

    private void M() {
        this.f14174o = false;
        int[] iArr = this.f14165f;
        String[] strArr = this.f14171l;
        int i4 = this.f14166g;
        int i10 = this.f14170k;
        int i11 = i4 + i4;
        int i12 = this.f14172m;
        if (i11 > 65536) {
            K(true);
            return;
        }
        this.f14165f = new int[iArr.length + (i4 << 3)];
        this.f14166g = i11;
        int i13 = i11 << 2;
        this.f14167h = i13;
        this.f14168i = i13 + (i13 >> 1);
        this.f14169j = c(i11);
        this.f14171l = new String[strArr.length << 1];
        K(false);
        int[] iArr2 = new int[16];
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15 += 4) {
            int i16 = iArr[i15 + 3];
            if (i16 != 0) {
                i14++;
                String str = strArr[i15 >> 2];
                if (i16 == 1) {
                    iArr2[0] = iArr[i15];
                    s(str, iArr2, 1);
                } else if (i16 == 2) {
                    iArr2[0] = iArr[i15];
                    iArr2[1] = iArr[i15 + 1];
                    s(str, iArr2, 2);
                } else if (i16 != 3) {
                    if (i16 > iArr2.length) {
                        iArr2 = new int[i16];
                    }
                    System.arraycopy(iArr, iArr[i15 + 1], iArr2, 0, i16);
                    s(str, iArr2, i16);
                } else {
                    iArr2[0] = iArr[i15];
                    iArr2[1] = iArr[i15 + 1];
                    iArr2[2] = iArr[i15 + 2];
                    s(str, iArr2, 3);
                }
            }
        }
        if (i14 == i10) {
            return;
        }
        throw new IllegalStateException("Failed rehash(): old count=" + i10 + ", copyCount=" + i14);
    }

    private int a(int[] iArr, int i4) {
        int i10 = this.f14173n;
        int i11 = i10 + i4;
        int[] iArr2 = this.f14165f;
        if (i11 > iArr2.length) {
            this.f14165f = Arrays.copyOf(this.f14165f, this.f14165f.length + Math.max(i11 - iArr2.length, Math.min(4096, this.f14166g)));
        }
        System.arraycopy(iArr, 0, this.f14165f, i10, i4);
        this.f14173n += i4;
        return i10;
    }

    private final int b(int i4) {
        return (i4 & (this.f14166g - 1)) << 2;
    }

    static int c(int i4) {
        int i10 = i4 >> 2;
        if (i10 < 64) {
            return 4;
        }
        if (i10 <= 256) {
            return 5;
        }
        return i10 <= 1024 ? 6 : 7;
    }

    private boolean d() {
        if (this.f14170k > (this.f14166g >> 1)) {
            int l10 = (this.f14172m - l()) >> 2;
            int i4 = this.f14170k;
            return l10 > ((i4 + 1) >> 7) || ((double) i4) > ((double) this.f14166g) * 0.8d;
        }
        return false;
    }

    private int e(int i4) {
        int b10 = b(i4);
        int[] iArr = this.f14165f;
        if (iArr[b10 + 3] == 0) {
            return b10;
        }
        if (d()) {
            return k(i4);
        }
        int i10 = this.f14167h + ((b10 >> 3) << 2);
        if (iArr[i10 + 3] == 0) {
            return i10;
        }
        int i11 = this.f14168i;
        int i12 = this.f14169j;
        int i13 = i11 + ((b10 >> (i12 + 2)) << i12);
        int i14 = (1 << i12) + i13;
        while (i13 < i14) {
            if (iArr[i13 + 3] == 0) {
                return i13;
            }
            i13 += 4;
        }
        int i15 = this.f14172m;
        int i16 = i15 + 4;
        this.f14172m = i16;
        if (i16 >= (this.f14166g << 3)) {
            if (this.f14164e) {
                j();
            }
            return k(i4);
        }
        return i15;
    }

    private String f(int i4, int i10) {
        int i11 = this.f14168i;
        int i12 = this.f14169j;
        int i13 = i11 + ((i4 >> (i12 + 2)) << i12);
        int[] iArr = this.f14165f;
        int i14 = (1 << i12) + i13;
        while (i13 < i14) {
            int i15 = iArr[i13 + 3];
            if (i10 == iArr[i13] && 1 == i15) {
                return this.f14171l[i13 >> 2];
            }
            if (i15 == 0) {
                return null;
            }
            i13 += 4;
        }
        for (int l10 = l(); l10 < this.f14172m; l10 += 4) {
            if (i10 == iArr[l10] && 1 == iArr[l10 + 3]) {
                return this.f14171l[l10 >> 2];
            }
        }
        return null;
    }

    private String g(int i4, int i10, int i11) {
        int i12 = this.f14168i;
        int i13 = this.f14169j;
        int i14 = i12 + ((i4 >> (i13 + 2)) << i13);
        int[] iArr = this.f14165f;
        int i15 = (1 << i13) + i14;
        while (i14 < i15) {
            int i16 = iArr[i14 + 3];
            if (i10 == iArr[i14] && i11 == iArr[i14 + 1] && 2 == i16) {
                return this.f14171l[i14 >> 2];
            }
            if (i16 == 0) {
                return null;
            }
            i14 += 4;
        }
        for (int l10 = l(); l10 < this.f14172m; l10 += 4) {
            if (i10 == iArr[l10] && i11 == iArr[l10 + 1] && 2 == iArr[l10 + 3]) {
                return this.f14171l[l10 >> 2];
            }
        }
        return null;
    }

    private String h(int i4, int i10, int i11, int i12) {
        int i13 = this.f14168i;
        int i14 = this.f14169j;
        int i15 = i13 + ((i4 >> (i14 + 2)) << i14);
        int[] iArr = this.f14165f;
        int i16 = (1 << i14) + i15;
        while (i15 < i16) {
            int i17 = iArr[i15 + 3];
            if (i10 == iArr[i15] && i11 == iArr[i15 + 1] && i12 == iArr[i15 + 2] && 3 == i17) {
                return this.f14171l[i15 >> 2];
            }
            if (i17 == 0) {
                return null;
            }
            i15 += 4;
        }
        for (int l10 = l(); l10 < this.f14172m; l10 += 4) {
            if (i10 == iArr[l10] && i11 == iArr[l10 + 1] && i12 == iArr[l10 + 2] && 3 == iArr[l10 + 3]) {
                return this.f14171l[l10 >> 2];
            }
        }
        return null;
    }

    private String i(int i4, int i10, int[] iArr, int i11) {
        int i12 = this.f14168i;
        int i13 = this.f14169j;
        int i14 = i12 + ((i4 >> (i13 + 2)) << i13);
        int[] iArr2 = this.f14165f;
        int i15 = (1 << i13) + i14;
        while (i14 < i15) {
            int i16 = iArr2[i14 + 3];
            if (i10 == iArr2[i14] && i11 == i16 && m(iArr, i11, iArr2[i14 + 1])) {
                return this.f14171l[i14 >> 2];
            }
            if (i16 == 0) {
                return null;
            }
            i14 += 4;
        }
        for (int l10 = l(); l10 < this.f14172m; l10 += 4) {
            if (i10 == iArr2[l10] && i11 == iArr2[l10 + 3] && m(iArr, i11, iArr2[l10 + 1])) {
                return this.f14171l[l10 >> 2];
            }
        }
        return null;
    }

    private int k(int i4) {
        M();
        int b10 = b(i4);
        int[] iArr = this.f14165f;
        if (iArr[b10 + 3] == 0) {
            return b10;
        }
        int i10 = this.f14167h + ((b10 >> 3) << 2);
        if (iArr[i10 + 3] == 0) {
            return i10;
        }
        int i11 = this.f14168i;
        int i12 = this.f14169j;
        int i13 = i11 + ((b10 >> (i12 + 2)) << i12);
        int i14 = (1 << i12) + i13;
        while (i13 < i14) {
            if (iArr[i13 + 3] == 0) {
                return i13;
            }
            i13 += 4;
        }
        int i15 = this.f14172m;
        this.f14172m = i15 + 4;
        return i15;
    }

    private final int l() {
        int i4 = this.f14166g;
        return (i4 << 3) - i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0031 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean m(int[] r6, int r7, int r8) {
        /*
            r5 = this;
            int[] r0 = r5.f14165f
            r1 = 0
            r2 = 1
            switch(r7) {
                case 4: goto L42;
                case 5: goto L34;
                case 6: goto L26;
                case 7: goto L18;
                case 8: goto Lc;
                default: goto L7;
            }
        L7:
            boolean r6 = r5.n(r6, r7, r8)
            return r6
        Lc:
            r7 = r6[r1]
            int r3 = r8 + 1
            r8 = r0[r8]
            if (r7 == r8) goto L15
            return r1
        L15:
            r8 = r3
            r7 = 1
            goto L19
        L18:
            r7 = 0
        L19:
            int r3 = r7 + 1
            r7 = r6[r7]
            int r4 = r8 + 1
            r8 = r0[r8]
            if (r7 == r8) goto L24
            return r1
        L24:
            r8 = r4
            goto L27
        L26:
            r3 = 0
        L27:
            int r7 = r3 + 1
            r3 = r6[r3]
            int r4 = r8 + 1
            r8 = r0[r8]
            if (r3 == r8) goto L32
            return r1
        L32:
            r8 = r4
            goto L35
        L34:
            r7 = 0
        L35:
            int r3 = r7 + 1
            r7 = r6[r7]
            int r4 = r8 + 1
            r8 = r0[r8]
            if (r7 == r8) goto L40
            return r1
        L40:
            r8 = r4
            goto L43
        L42:
            r3 = 0
        L43:
            int r7 = r3 + 1
            r3 = r6[r3]
            int r4 = r8 + 1
            r8 = r0[r8]
            if (r3 == r8) goto L4e
            return r1
        L4e:
            int r8 = r7 + 1
            r7 = r6[r7]
            int r3 = r4 + 1
            r4 = r0[r4]
            if (r7 == r4) goto L59
            return r1
        L59:
            int r7 = r8 + 1
            r8 = r6[r8]
            int r4 = r3 + 1
            r3 = r0[r3]
            if (r8 == r3) goto L64
            return r1
        L64:
            r6 = r6[r7]
            r7 = r0[r4]
            if (r6 == r7) goto L6b
            return r1
        L6b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.sym.a.m(int[], int, int):boolean");
    }

    private boolean n(int[] iArr, int i4, int i10) {
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            int i13 = i10 + 1;
            if (iArr[i11] != this.f14165f[i10]) {
                return false;
            }
            if (i12 >= i4) {
                return true;
            }
            i11 = i12;
            i10 = i13;
        }
    }

    private void o() {
        if (this.f14174o) {
            if (this.f14160a == null) {
                if (this.f14170k == 0) {
                    throw new IllegalStateException("Cannot add names to Root symbol table");
                }
                throw new IllegalStateException("Cannot add names to Placeholder symbol table");
            }
            int[] iArr = this.f14165f;
            this.f14165f = Arrays.copyOf(iArr, iArr.length);
            String[] strArr = this.f14171l;
            this.f14171l = (String[]) Arrays.copyOf(strArr, strArr.length);
            this.f14174o = false;
        }
    }

    public static a y() {
        long currentTimeMillis = System.currentTimeMillis();
        return z((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    protected static a z(int i4) {
        return new a(64, i4);
    }

    public String A(int i4) {
        int b10 = b(u(i4));
        int[] iArr = this.f14165f;
        int i10 = iArr[b10 + 3];
        if (i10 == 1) {
            if (iArr[b10] == i4) {
                return this.f14171l[b10 >> 2];
            }
        } else if (i10 == 0) {
            return null;
        }
        int i11 = this.f14167h + ((b10 >> 3) << 2);
        int i12 = iArr[i11 + 3];
        if (i12 == 1) {
            if (iArr[i11] == i4) {
                return this.f14171l[i11 >> 2];
            }
        } else if (i12 == 0) {
            return null;
        }
        return f(b10, i4);
    }

    public String B(int i4, int i10) {
        int b10 = b(v(i4, i10));
        int[] iArr = this.f14165f;
        int i11 = iArr[b10 + 3];
        if (i11 == 2) {
            if (i4 == iArr[b10] && i10 == iArr[b10 + 1]) {
                return this.f14171l[b10 >> 2];
            }
        } else if (i11 == 0) {
            return null;
        }
        int i12 = this.f14167h + ((b10 >> 3) << 2);
        int i13 = iArr[i12 + 3];
        if (i13 == 2) {
            if (i4 == iArr[i12] && i10 == iArr[i12 + 1]) {
                return this.f14171l[i12 >> 2];
            }
        } else if (i13 == 0) {
            return null;
        }
        return g(b10, i4, i10);
    }

    public String C(int i4, int i10, int i11) {
        int b10 = b(w(i4, i10, i11));
        int[] iArr = this.f14165f;
        int i12 = iArr[b10 + 3];
        if (i12 == 3) {
            if (i4 == iArr[b10] && iArr[b10 + 1] == i10 && iArr[b10 + 2] == i11) {
                return this.f14171l[b10 >> 2];
            }
        } else if (i12 == 0) {
            return null;
        }
        int i13 = this.f14167h + ((b10 >> 3) << 2);
        int i14 = iArr[i13 + 3];
        if (i14 == 3) {
            if (i4 == iArr[i13] && iArr[i13 + 1] == i10 && iArr[i13 + 2] == i11) {
                return this.f14171l[i13 >> 2];
            }
        } else if (i14 == 0) {
            return null;
        }
        return h(b10, i4, i10, i11);
    }

    public String D(int[] iArr, int i4) {
        if (i4 < 4) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return i4 != 3 ? "" : C(iArr[0], iArr[1], iArr[2]);
                }
                return B(iArr[0], iArr[1]);
            }
            return A(iArr[0]);
        }
        int x9 = x(iArr, i4);
        int b10 = b(x9);
        int[] iArr2 = this.f14165f;
        int i10 = iArr2[b10 + 3];
        if (x9 == iArr2[b10] && i10 == i4 && m(iArr, i4, iArr2[b10 + 1])) {
            return this.f14171l[b10 >> 2];
        }
        if (i10 == 0) {
            return null;
        }
        int i11 = this.f14167h + ((b10 >> 3) << 2);
        int i12 = iArr2[i11 + 3];
        if (x9 == iArr2[i11] && i12 == i4 && m(iArr, i4, iArr2[i11 + 1])) {
            return this.f14171l[i11 >> 2];
        }
        return i(b10, x9, iArr, i4);
    }

    public int E() {
        return this.f14162c;
    }

    public boolean F() {
        return this.f14160a != null;
    }

    public a G(int i4) {
        return new a(this, this.f14162c, this.f14161b.get(), JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i4), JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i4));
    }

    public a H(int i4) {
        if (JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i4)) {
            return new a(this, this.f14162c, this.f14161b.get(), JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i4), JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i4));
        }
        return new a(this.f14161b.get());
    }

    public boolean I() {
        return !this.f14174o;
    }

    public int L() {
        int i4 = this.f14167h;
        int i10 = 0;
        for (int i11 = 3; i11 < i4; i11 += 4) {
            if (this.f14165f[i11] != 0) {
                i10++;
            }
        }
        return i10;
    }

    public void N() {
        if (this.f14160a == null || !I()) {
            return;
        }
        this.f14160a.J(new C0114a(this));
        this.f14174o = true;
    }

    public int O() {
        int i4 = this.f14168i;
        int i10 = 0;
        for (int i11 = this.f14167h + 3; i11 < i4; i11 += 4) {
            if (this.f14165f[i11] != 0) {
                i10++;
            }
        }
        return i10;
    }

    public int P() {
        AtomicReference<C0114a> atomicReference = this.f14161b;
        if (atomicReference != null) {
            return atomicReference.get().f14176b;
        }
        return this.f14170k;
    }

    public int Q() {
        return (this.f14172m - l()) >> 2;
    }

    public int R() {
        int i4 = this.f14168i + 3;
        int i10 = this.f14166g + i4;
        int i11 = 0;
        while (i4 < i10) {
            if (this.f14165f[i4] != 0) {
                i11++;
            }
            i4 += 4;
        }
        return i11;
    }

    public int S() {
        int i4 = this.f14166g << 3;
        int i10 = 0;
        for (int i11 = 3; i11 < i4; i11 += 4) {
            if (this.f14165f[i11] != 0) {
                i10++;
            }
        }
        return i10;
    }

    protected void j() {
        if (this.f14166g <= 1024) {
            return;
        }
        throw new IllegalStateException("Spill-over slots in symbol table with " + this.f14170k + " entries, hash area of " + this.f14166g + " slots is now full (all " + (this.f14166g >> 3) + " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`");
    }

    public String p(String str, int i4) {
        o();
        if (this.f14163d) {
            str = InternCache.instance.intern(str);
        }
        int e4 = e(u(i4));
        int[] iArr = this.f14165f;
        iArr[e4] = i4;
        iArr[e4 + 3] = 1;
        this.f14171l[e4 >> 2] = str;
        this.f14170k++;
        return str;
    }

    public String q(String str, int i4, int i10) {
        o();
        if (this.f14163d) {
            str = InternCache.instance.intern(str);
        }
        int e4 = e(v(i4, i10));
        int[] iArr = this.f14165f;
        iArr[e4] = i4;
        iArr[e4 + 1] = i10;
        iArr[e4 + 3] = 2;
        this.f14171l[e4 >> 2] = str;
        this.f14170k++;
        return str;
    }

    public String r(String str, int i4, int i10, int i11) {
        o();
        if (this.f14163d) {
            str = InternCache.instance.intern(str);
        }
        int e4 = e(w(i4, i10, i11));
        int[] iArr = this.f14165f;
        iArr[e4] = i4;
        iArr[e4 + 1] = i10;
        iArr[e4 + 2] = i11;
        iArr[e4 + 3] = 3;
        this.f14171l[e4 >> 2] = str;
        this.f14170k++;
        return str;
    }

    public String s(String str, int[] iArr, int i4) {
        int e4;
        o();
        if (this.f14163d) {
            str = InternCache.instance.intern(str);
        }
        if (i4 == 1) {
            e4 = e(u(iArr[0]));
            int[] iArr2 = this.f14165f;
            iArr2[e4] = iArr[0];
            iArr2[e4 + 3] = 1;
        } else if (i4 == 2) {
            e4 = e(v(iArr[0], iArr[1]));
            int[] iArr3 = this.f14165f;
            iArr3[e4] = iArr[0];
            iArr3[e4 + 1] = iArr[1];
            iArr3[e4 + 3] = 2;
        } else if (i4 != 3) {
            int x9 = x(iArr, i4);
            e4 = e(x9);
            this.f14165f[e4] = x9;
            int a10 = a(iArr, i4);
            int[] iArr4 = this.f14165f;
            iArr4[e4 + 1] = a10;
            iArr4[e4 + 3] = i4;
        } else {
            int e10 = e(w(iArr[0], iArr[1], iArr[2]));
            int[] iArr5 = this.f14165f;
            iArr5[e10] = iArr[0];
            iArr5[e10 + 1] = iArr[1];
            iArr5[e10 + 2] = iArr[2];
            iArr5[e10 + 3] = 3;
            e4 = e10;
        }
        this.f14171l[e4 >> 2] = str;
        this.f14170k++;
        return str;
    }

    public int t() {
        return this.f14166g;
    }

    public String toString() {
        int L = L();
        int O = O();
        int R = R();
        int Q = Q();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", a.class.getName(), Integer.valueOf(this.f14170k), Integer.valueOf(this.f14166g), Integer.valueOf(L), Integer.valueOf(O), Integer.valueOf(R), Integer.valueOf(Q), Integer.valueOf(L + O + R + Q), Integer.valueOf(S()));
    }

    public int u(int i4) {
        int i10 = i4 ^ this.f14162c;
        int i11 = i10 + (i10 >>> 16);
        int i12 = i11 ^ (i11 << 3);
        return i12 + (i12 >>> 12);
    }

    public int v(int i4, int i10) {
        int i11 = i4 + (i4 >>> 15);
        int i12 = ((i11 ^ (i11 >>> 9)) + (i10 * 33)) ^ this.f14162c;
        int i13 = i12 + (i12 >>> 16);
        int i14 = i13 ^ (i13 >>> 4);
        return i14 + (i14 << 3);
    }

    public int w(int i4, int i10, int i11) {
        int i12 = i4 ^ this.f14162c;
        int i13 = (((i12 + (i12 >>> 9)) * 31) + i10) * 33;
        int i14 = (i13 + (i13 >>> 15)) ^ i11;
        int i15 = i14 + (i14 >>> 4);
        int i16 = i15 + (i15 >>> 15);
        return i16 ^ (i16 << 9);
    }

    public int x(int[] iArr, int i4) {
        if (i4 >= 4) {
            int i10 = iArr[0] ^ this.f14162c;
            int i11 = i10 + (i10 >>> 9) + iArr[1];
            int i12 = ((i11 + (i11 >>> 15)) * 33) ^ iArr[2];
            int i13 = i12 + (i12 >>> 4);
            for (int i14 = 3; i14 < i4; i14++) {
                int i15 = iArr[i14];
                i13 += i15 ^ (i15 >> 21);
            }
            int i16 = i13 * f14158u;
            int i17 = i16 + (i16 >>> 19);
            return (i17 << 5) ^ i17;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ByteQuadsCanonicalizer.java */
    /* renamed from: com.fasterxml.jackson.core.sym.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0114a {

        /* renamed from: a  reason: collision with root package name */
        public final int f14175a;

        /* renamed from: b  reason: collision with root package name */
        public final int f14176b;

        /* renamed from: c  reason: collision with root package name */
        public final int f14177c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f14178d;

        /* renamed from: e  reason: collision with root package name */
        public final String[] f14179e;

        /* renamed from: f  reason: collision with root package name */
        public final int f14180f;

        /* renamed from: g  reason: collision with root package name */
        public final int f14181g;

        public C0114a(int i4, int i10, int i11, int[] iArr, String[] strArr, int i12, int i13) {
            this.f14175a = i4;
            this.f14176b = i10;
            this.f14177c = i11;
            this.f14178d = iArr;
            this.f14179e = strArr;
            this.f14180f = i12;
            this.f14181g = i13;
        }

        public static C0114a a(int i4) {
            int i10 = i4 << 3;
            return new C0114a(i4, 0, a.c(i4), new int[i10], new String[i4 << 1], i10 - i4, i10);
        }

        public C0114a(a aVar) {
            this.f14175a = aVar.f14166g;
            this.f14176b = aVar.f14170k;
            this.f14177c = aVar.f14169j;
            this.f14178d = aVar.f14165f;
            this.f14179e = aVar.f14171l;
            this.f14180f = aVar.f14172m;
            this.f14181g = aVar.f14173n;
        }
    }

    private a(a aVar, int i4, C0114a c0114a, boolean z9, boolean z10) {
        this.f14160a = aVar;
        this.f14162c = i4;
        this.f14163d = z9;
        this.f14164e = z10;
        this.f14161b = null;
        this.f14170k = c0114a.f14176b;
        int i10 = c0114a.f14175a;
        this.f14166g = i10;
        int i11 = i10 << 2;
        this.f14167h = i11;
        this.f14168i = i11 + (i11 >> 1);
        this.f14169j = c0114a.f14177c;
        this.f14165f = c0114a.f14178d;
        this.f14171l = c0114a.f14179e;
        this.f14172m = c0114a.f14180f;
        this.f14173n = c0114a.f14181g;
        this.f14174o = true;
    }

    private a(C0114a c0114a) {
        this.f14160a = null;
        this.f14162c = 0;
        this.f14163d = false;
        this.f14164e = true;
        this.f14161b = null;
        this.f14170k = -1;
        int[] iArr = c0114a.f14178d;
        this.f14165f = iArr;
        this.f14171l = c0114a.f14179e;
        this.f14166g = c0114a.f14175a;
        int length = iArr.length;
        this.f14167h = length;
        this.f14168i = length;
        this.f14169j = 1;
        this.f14172m = length;
        this.f14173n = length;
        this.f14174o = true;
    }
}
