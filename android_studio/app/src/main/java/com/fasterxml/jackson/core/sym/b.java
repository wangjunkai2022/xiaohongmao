package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CharsToNameCanonicalizer.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: n  reason: collision with root package name */
    public static final int f14182n = 33;

    /* renamed from: o  reason: collision with root package name */
    private static final int f14183o = 64;

    /* renamed from: p  reason: collision with root package name */
    private static final int f14184p = 65536;

    /* renamed from: q  reason: collision with root package name */
    static final int f14185q = 12000;

    /* renamed from: r  reason: collision with root package name */
    static final int f14186r = 150;

    /* renamed from: a  reason: collision with root package name */
    protected final b f14187a;

    /* renamed from: b  reason: collision with root package name */
    protected final AtomicReference<C0115b> f14188b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f14189c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f14190d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f14191e;

    /* renamed from: f  reason: collision with root package name */
    protected String[] f14192f;

    /* renamed from: g  reason: collision with root package name */
    protected a[] f14193g;

    /* renamed from: h  reason: collision with root package name */
    protected int f14194h;

    /* renamed from: i  reason: collision with root package name */
    protected int f14195i;

    /* renamed from: j  reason: collision with root package name */
    protected int f14196j;

    /* renamed from: k  reason: collision with root package name */
    protected int f14197k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f14198l;

    /* renamed from: m  reason: collision with root package name */
    protected BitSet f14199m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CharsToNameCanonicalizer.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f14200a;

        /* renamed from: b  reason: collision with root package name */
        public final a f14201b;

        /* renamed from: c  reason: collision with root package name */
        public final int f14202c;

        public a(String str, a aVar) {
            this.f14200a = str;
            this.f14201b = aVar;
            this.f14202c = aVar != null ? 1 + aVar.f14202c : 1;
        }

        public String a(char[] cArr, int i4, int i10) {
            if (this.f14200a.length() != i10) {
                return null;
            }
            int i11 = 0;
            while (this.f14200a.charAt(i11) == cArr[i4 + i11]) {
                i11++;
                if (i11 >= i10) {
                    return this.f14200a;
                }
            }
            return null;
        }
    }

    private b(int i4) {
        this.f14187a = null;
        this.f14189c = i4;
        this.f14191e = true;
        this.f14190d = -1;
        this.f14198l = false;
        this.f14197k = 0;
        this.f14188b = new AtomicReference<>(C0115b.a(64));
    }

    private String a(char[] cArr, int i4, int i10, int i11, int i12) {
        if (this.f14198l) {
            k();
            this.f14198l = false;
        } else if (this.f14194h >= this.f14195i) {
            t();
            i12 = d(i(cArr, i4, i10));
        }
        String str = new String(cArr, i4, i10);
        if (JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(this.f14190d)) {
            str = InternCache.instance.intern(str);
        }
        this.f14194h++;
        String[] strArr = this.f14192f;
        if (strArr[i12] == null) {
            strArr[i12] = str;
        } else {
            int i13 = i12 >> 1;
            a aVar = new a(str, this.f14193g[i13]);
            int i14 = aVar.f14202c;
            if (i14 > f14186r) {
                c(i13, aVar, i12);
            } else {
                this.f14193g[i13] = aVar;
                this.f14197k = Math.max(i14, this.f14197k);
            }
        }
        return str;
    }

    private String b(char[] cArr, int i4, int i10, a aVar) {
        while (aVar != null) {
            String a10 = aVar.a(cArr, i4, i10);
            if (a10 != null) {
                return a10;
            }
            aVar = aVar.f14201b;
        }
        return null;
    }

    private void c(int i4, a aVar, int i10) {
        BitSet bitSet = this.f14199m;
        if (bitSet == null) {
            BitSet bitSet2 = new BitSet();
            this.f14199m = bitSet2;
            bitSet2.set(i4);
        } else if (bitSet.get(i4)) {
            if (JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this.f14190d)) {
                e(f14186r);
            }
            this.f14191e = false;
        } else {
            this.f14199m.set(i4);
        }
        this.f14192f[i10] = aVar.f14200a;
        this.f14193g[i4] = null;
        this.f14194h -= aVar.f14202c;
        this.f14197k = -1;
    }

    private static int f(int i4) {
        return i4 - (i4 >> 2);
    }

    private void k() {
        String[] strArr = this.f14192f;
        this.f14192f = (String[]) Arrays.copyOf(strArr, strArr.length);
        a[] aVarArr = this.f14193g;
        this.f14193g = (a[]) Arrays.copyOf(aVarArr, aVarArr.length);
    }

    public static b l() {
        long currentTimeMillis = System.currentTimeMillis();
        return m((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    protected static b m(int i4) {
        return new b(i4);
    }

    private void s(C0115b c0115b) {
        int i4 = c0115b.f14203a;
        C0115b c0115b2 = this.f14188b.get();
        if (i4 == c0115b2.f14203a) {
            return;
        }
        if (i4 > f14185q) {
            c0115b = C0115b.a(64);
        }
        this.f14188b.compareAndSet(c0115b2, c0115b);
    }

    private void t() {
        String[] strArr = this.f14192f;
        int length = strArr.length;
        int i4 = length + length;
        if (i4 > 65536) {
            this.f14194h = 0;
            this.f14191e = false;
            this.f14192f = new String[64];
            this.f14193g = new a[32];
            this.f14196j = 63;
            this.f14198l = false;
            return;
        }
        a[] aVarArr = this.f14193g;
        this.f14192f = new String[i4];
        this.f14193g = new a[i4 >> 1];
        this.f14196j = i4 - 1;
        this.f14195i = f(i4);
        int i10 = 0;
        int i11 = 0;
        for (String str : strArr) {
            if (str != null) {
                i10++;
                int d4 = d(h(str));
                String[] strArr2 = this.f14192f;
                if (strArr2[d4] == null) {
                    strArr2[d4] = str;
                } else {
                    int i12 = d4 >> 1;
                    a aVar = new a(str, this.f14193g[i12]);
                    this.f14193g[i12] = aVar;
                    i11 = Math.max(i11, aVar.f14202c);
                }
            }
        }
        int i13 = length >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            for (a aVar2 = aVarArr[i14]; aVar2 != null; aVar2 = aVar2.f14201b) {
                i10++;
                String str2 = aVar2.f14200a;
                int d10 = d(h(str2));
                String[] strArr3 = this.f14192f;
                if (strArr3[d10] == null) {
                    strArr3[d10] = str2;
                } else {
                    int i15 = d10 >> 1;
                    a aVar3 = new a(str2, this.f14193g[i15]);
                    this.f14193g[i15] = aVar3;
                    i11 = Math.max(i11, aVar3.f14202c);
                }
            }
        }
        this.f14197k = i11;
        this.f14199m = null;
        if (i10 != this.f14194h) {
            throw new IllegalStateException(String.format("Internal error on SymbolTable.rehash(): had %d entries; now have %d", Integer.valueOf(this.f14194h), Integer.valueOf(i10)));
        }
    }

    public int d(int i4) {
        int i10 = i4 + (i4 >>> 15);
        int i11 = i10 ^ (i10 << 7);
        return (i11 + (i11 >>> 3)) & this.f14196j;
    }

    protected void e(int i4) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this.f14194h + ") now exceeds maximum, " + i4 + " -- suspect a DoS attack based on hash collisions");
    }

    public int g() {
        return this.f14192f.length;
    }

    public int h(String str) {
        int length = str.length();
        int i4 = this.f14189c;
        for (int i10 = 0; i10 < length; i10++) {
            i4 = (i4 * 33) + str.charAt(i10);
        }
        if (i4 == 0) {
            return 1;
        }
        return i4;
    }

    public int i(char[] cArr, int i4, int i10) {
        int i11 = this.f14189c;
        int i12 = i10 + i4;
        while (i4 < i12) {
            i11 = (i11 * 33) + cArr[i4];
            i4++;
        }
        if (i11 == 0) {
            return 1;
        }
        return i11;
    }

    public int j() {
        a[] aVarArr;
        int i4 = 0;
        for (a aVar : this.f14193g) {
            if (aVar != null) {
                i4 += aVar.f14202c;
            }
        }
        return i4;
    }

    public String n(char[] cArr, int i4, int i10, int i11) {
        if (i10 < 1) {
            return "";
        }
        if (!this.f14191e) {
            return new String(cArr, i4, i10);
        }
        int d4 = d(i11);
        String str = this.f14192f[d4];
        if (str != null) {
            if (str.length() == i10) {
                int i12 = 0;
                while (str.charAt(i12) == cArr[i4 + i12]) {
                    i12++;
                    if (i12 == i10) {
                        return str;
                    }
                }
            }
            a aVar = this.f14193g[d4 >> 1];
            if (aVar != null) {
                String a10 = aVar.a(cArr, i4, i10);
                if (a10 != null) {
                    return a10;
                }
                String b10 = b(cArr, i4, i10, aVar.f14201b);
                if (b10 != null) {
                    return b10;
                }
            }
        }
        return a(cArr, i4, i10, i11, d4);
    }

    public int o() {
        return this.f14189c;
    }

    public b p(int i4) {
        return new b(this, i4, this.f14189c, this.f14188b.get());
    }

    public int q() {
        return this.f14197k;
    }

    public boolean r() {
        return !this.f14198l;
    }

    public void u() {
        b bVar;
        if (r() && (bVar = this.f14187a) != null && this.f14191e) {
            bVar.s(new C0115b(this));
            this.f14198l = true;
        }
    }

    public int v() {
        AtomicReference<C0115b> atomicReference = this.f14188b;
        if (atomicReference != null) {
            return atomicReference.get().f14203a;
        }
        return this.f14194h;
    }

    protected void w() {
        int length = this.f14192f.length;
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.f14192f[i10] != null) {
                i4++;
            }
        }
        int i11 = length >> 1;
        for (int i12 = 0; i12 < i11; i12++) {
            for (a aVar = this.f14193g[i12]; aVar != null; aVar = aVar.f14201b) {
                i4++;
            }
        }
        if (i4 != this.f14194h) {
            throw new IllegalStateException(String.format("Internal error: expected internal size %d vs calculated count %d", Integer.valueOf(this.f14194h), Integer.valueOf(i4)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharsToNameCanonicalizer.java */
    /* renamed from: com.fasterxml.jackson.core.sym.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0115b {

        /* renamed from: a  reason: collision with root package name */
        final int f14203a;

        /* renamed from: b  reason: collision with root package name */
        final int f14204b;

        /* renamed from: c  reason: collision with root package name */
        final String[] f14205c;

        /* renamed from: d  reason: collision with root package name */
        final a[] f14206d;

        public C0115b(int i4, int i10, String[] strArr, a[] aVarArr) {
            this.f14203a = i4;
            this.f14204b = i10;
            this.f14205c = strArr;
            this.f14206d = aVarArr;
        }

        public static C0115b a(int i4) {
            return new C0115b(0, 0, new String[i4], new a[i4 >> 1]);
        }

        public C0115b(b bVar) {
            this.f14203a = bVar.f14194h;
            this.f14204b = bVar.f14197k;
            this.f14205c = bVar.f14192f;
            this.f14206d = bVar.f14193g;
        }
    }

    private b(b bVar, int i4, int i10, C0115b c0115b) {
        this.f14187a = bVar;
        this.f14189c = i10;
        this.f14188b = null;
        this.f14190d = i4;
        this.f14191e = JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i4);
        String[] strArr = c0115b.f14205c;
        this.f14192f = strArr;
        this.f14193g = c0115b.f14206d;
        this.f14194h = c0115b.f14203a;
        this.f14197k = c0115b.f14204b;
        int length = strArr.length;
        this.f14195i = f(length);
        this.f14196j = length - 1;
        this.f14198l = true;
    }
}
