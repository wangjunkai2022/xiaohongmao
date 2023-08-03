package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.util.z0;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: AdPlaybackState.java */
/* loaded from: classes2.dex */
public final class c implements com.google.android.exoplayer2.h {

    /* renamed from: g  reason: collision with root package name */
    public static final int f24691g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f24692h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f24693i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f24694j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f24695k = 4;

    /* renamed from: m  reason: collision with root package name */
    private static final int f24697m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f24698n = 2;

    /* renamed from: o  reason: collision with root package name */
    private static final int f24699o = 3;

    /* renamed from: p  reason: collision with root package name */
    private static final int f24700p = 4;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Object f24702a;

    /* renamed from: b  reason: collision with root package name */
    public final int f24703b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f24704c;

    /* renamed from: d  reason: collision with root package name */
    public final a[] f24705d;

    /* renamed from: e  reason: collision with root package name */
    public final long f24706e;

    /* renamed from: f  reason: collision with root package name */
    public final long f24707f;

    /* renamed from: l  reason: collision with root package name */
    public static final c f24696l = new c(null, new long[0], null, 0, com.google.android.exoplayer2.i.f23649b);

    /* renamed from: q  reason: collision with root package name */
    public static final h.a<c> f24701q = com.google.android.exoplayer2.source.ads.a.f24689a;

    /* compiled from: AdPlaybackState.java */
    /* loaded from: classes2.dex */
    public static final class a implements com.google.android.exoplayer2.h {

        /* renamed from: e  reason: collision with root package name */
        private static final int f24708e = 0;

        /* renamed from: f  reason: collision with root package name */
        private static final int f24709f = 1;

        /* renamed from: g  reason: collision with root package name */
        private static final int f24710g = 2;

        /* renamed from: h  reason: collision with root package name */
        private static final int f24711h = 3;

        /* renamed from: i  reason: collision with root package name */
        public static final h.a<a> f24712i = com.google.android.exoplayer2.source.ads.b.f24690a;

        /* renamed from: a  reason: collision with root package name */
        public final int f24713a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri[] f24714b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f24715c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f24716d;

        public a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        @CheckResult
        private static long[] b(long[] jArr, int i4) {
            int length = jArr.length;
            int max = Math.max(i4, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, (long) com.google.android.exoplayer2.i.f23649b);
            return copyOf;
        }

        @CheckResult
        private static int[] c(int[] iArr, int i4) {
            int length = iArr.length;
            int max = Math.max(i4, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a d(Bundle bundle) {
            int i4 = bundle.getInt(h(0), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(1));
            int[] intArray = bundle.getIntArray(h(2));
            long[] longArray = bundle.getLongArray(h(3));
            if (intArray == null) {
                intArray = new int[0];
            }
            Uri[] uriArr = parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]);
            if (longArray == null) {
                longArray = new long[0];
            }
            return new a(i4, intArray, uriArr, longArray);
        }

        private static String h(int i4) {
            return Integer.toString(i4, 36);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f24713a == aVar.f24713a && Arrays.equals(this.f24714b, aVar.f24714b) && Arrays.equals(this.f24715c, aVar.f24715c) && Arrays.equals(this.f24716d, aVar.f24716d);
        }

        public int f(int i4) {
            int i10 = i4 + 1;
            while (true) {
                int[] iArr = this.f24715c;
                if (i10 >= iArr.length || iArr[i10] == 0 || iArr[i10] == 1) {
                    break;
                }
                i10++;
            }
            return i10;
        }

        public boolean g() {
            return this.f24713a == -1 || e() < this.f24713a;
        }

        public int hashCode() {
            return (((((this.f24713a * 31) + Arrays.hashCode(this.f24714b)) * 31) + Arrays.hashCode(this.f24715c)) * 31) + Arrays.hashCode(this.f24716d);
        }

        @CheckResult
        public a i(int i4) {
            return new a(i4, c(this.f24715c, i4), (Uri[]) Arrays.copyOf(this.f24714b, i4), b(this.f24716d, i4));
        }

        @CheckResult
        public a j(long[] jArr) {
            int length = jArr.length;
            Uri[] uriArr = this.f24714b;
            if (length < uriArr.length) {
                jArr = b(jArr, uriArr.length);
            } else if (this.f24713a != -1 && jArr.length > uriArr.length) {
                jArr = Arrays.copyOf(jArr, uriArr.length);
            }
            return new a(this.f24713a, this.f24715c, this.f24714b, jArr);
        }

        @CheckResult
        public a k(int i4, int i10) {
            int i11 = this.f24713a;
            boolean z9 = false;
            com.google.android.exoplayer2.util.a.a(i11 == -1 || i10 < i11);
            int[] c10 = c(this.f24715c, i10 + 1);
            com.google.android.exoplayer2.util.a.a((c10[i10] == 0 || c10[i10] == 1 || c10[i10] == i4) ? true : true);
            long[] jArr = this.f24716d;
            if (jArr.length != c10.length) {
                jArr = b(jArr, c10.length);
            }
            Uri[] uriArr = this.f24714b;
            if (uriArr.length != c10.length) {
                uriArr = (Uri[]) Arrays.copyOf(uriArr, c10.length);
            }
            c10[i10] = i4;
            return new a(this.f24713a, c10, uriArr, jArr);
        }

        @CheckResult
        public a l(Uri uri, int i4) {
            int[] c10 = c(this.f24715c, i4 + 1);
            long[] jArr = this.f24716d;
            if (jArr.length != c10.length) {
                jArr = b(jArr, c10.length);
            }
            Uri[] uriArr = (Uri[]) Arrays.copyOf(this.f24714b, c10.length);
            uriArr[i4] = uri;
            c10[i4] = 1;
            return new a(this.f24713a, c10, uriArr, jArr);
        }

        @CheckResult
        public a m() {
            if (this.f24713a == -1) {
                return new a(0, new int[0], new Uri[0], new long[0]);
            }
            int[] iArr = this.f24715c;
            int length = iArr.length;
            int[] copyOf = Arrays.copyOf(iArr, length);
            for (int i4 = 0; i4 < length; i4++) {
                if (copyOf[i4] == 1 || copyOf[i4] == 0) {
                    copyOf[i4] = 2;
                }
            }
            return new a(length, copyOf, this.f24714b, this.f24716d);
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(h(0), this.f24713a);
            bundle.putParcelableArrayList(h(1), new ArrayList<>(Arrays.asList(this.f24714b)));
            bundle.putIntArray(h(2), this.f24715c);
            bundle.putLongArray(h(3), this.f24716d);
            return bundle;
        }

        private a(int i4, int[] iArr, Uri[] uriArr, long[] jArr) {
            com.google.android.exoplayer2.util.a.a(iArr.length == uriArr.length);
            this.f24713a = i4;
            this.f24715c = iArr;
            this.f24714b = uriArr;
            this.f24716d = jArr;
        }
    }

    /* compiled from: AdPlaybackState.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    public c(Object obj, long... jArr) {
        this(obj, jArr, null, 0L, com.google.android.exoplayer2.i.f23649b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c b(Bundle bundle) {
        a[] aVarArr;
        long[] longArray = bundle.getLongArray(g(1));
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(g(2));
        if (parcelableArrayList == null) {
            aVarArr = null;
        } else {
            a[] aVarArr2 = new a[parcelableArrayList.size()];
            for (int i4 = 0; i4 < parcelableArrayList.size(); i4++) {
                aVarArr2[i4] = a.f24712i.a((Bundle) parcelableArrayList.get(i4));
            }
            aVarArr = aVarArr2;
        }
        long j4 = bundle.getLong(g(3), 0L);
        long j10 = bundle.getLong(g(4), com.google.android.exoplayer2.i.f23649b);
        if (longArray == null) {
            longArray = new long[0];
        }
        return new c(null, longArray, aVarArr, j4, j10);
    }

    private boolean f(long j4, long j10, int i4) {
        if (j4 == Long.MIN_VALUE) {
            return false;
        }
        long j11 = this.f24704c[i4];
        return j11 == Long.MIN_VALUE ? j10 == com.google.android.exoplayer2.i.f23649b || j4 < j10 : j4 < j11;
    }

    private static String g(int i4) {
        return Integer.toString(i4, 36);
    }

    public int c(long j4, long j10) {
        if (j4 != Long.MIN_VALUE) {
            if (j10 == com.google.android.exoplayer2.i.f23649b || j4 < j10) {
                int i4 = 0;
                while (true) {
                    long[] jArr = this.f24704c;
                    if (i4 >= jArr.length || ((jArr[i4] == Long.MIN_VALUE || jArr[i4] > j4) && this.f24705d[i4].g())) {
                        break;
                    }
                    i4++;
                }
                if (i4 < this.f24704c.length) {
                    return i4;
                }
                return -1;
            }
            return -1;
        }
        return -1;
    }

    public int d(long j4, long j10) {
        int length = this.f24704c.length - 1;
        while (length >= 0 && f(j4, j10, length)) {
            length--;
        }
        if (length < 0 || !this.f24705d[length].g()) {
            return -1;
        }
        return length;
    }

    public boolean e(int i4, int i10) {
        a aVar;
        int i11;
        a[] aVarArr = this.f24705d;
        return i4 < aVarArr.length && (i11 = (aVar = aVarArr[i4]).f24713a) != -1 && i10 < i11 && aVar.f24715c[i10] == 4;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return z0.c(this.f24702a, cVar.f24702a) && this.f24703b == cVar.f24703b && this.f24706e == cVar.f24706e && this.f24707f == cVar.f24707f && Arrays.equals(this.f24704c, cVar.f24704c) && Arrays.equals(this.f24705d, cVar.f24705d);
    }

    @CheckResult
    public c h(int i4, int i10) {
        com.google.android.exoplayer2.util.a.a(i10 > 0);
        a[] aVarArr = this.f24705d;
        if (aVarArr[i4].f24713a == i10) {
            return this;
        }
        a[] aVarArr2 = (a[]) z0.T0(aVarArr, aVarArr.length);
        aVarArr2[i4] = this.f24705d[i4].i(i10);
        return new c(this.f24702a, this.f24704c, aVarArr2, this.f24706e, this.f24707f);
    }

    public int hashCode() {
        int i4 = this.f24703b * 31;
        Object obj = this.f24702a;
        return ((((((((i4 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f24706e)) * 31) + ((int) this.f24707f)) * 31) + Arrays.hashCode(this.f24704c)) * 31) + Arrays.hashCode(this.f24705d);
    }

    @CheckResult
    public c i(long[][] jArr) {
        a[] aVarArr = this.f24705d;
        a[] aVarArr2 = (a[]) z0.T0(aVarArr, aVarArr.length);
        for (int i4 = 0; i4 < this.f24703b; i4++) {
            aVarArr2[i4] = aVarArr2[i4].j(jArr[i4]);
        }
        return new c(this.f24702a, this.f24704c, aVarArr2, this.f24706e, this.f24707f);
    }

    @CheckResult
    public c j(int i4, int i10) {
        a[] aVarArr = this.f24705d;
        a[] aVarArr2 = (a[]) z0.T0(aVarArr, aVarArr.length);
        aVarArr2[i4] = aVarArr2[i4].k(4, i10);
        return new c(this.f24702a, this.f24704c, aVarArr2, this.f24706e, this.f24707f);
    }

    @CheckResult
    public c k(long j4) {
        return this.f24706e == j4 ? this : new c(this.f24702a, this.f24704c, this.f24705d, j4, this.f24707f);
    }

    @CheckResult
    public c l(int i4, int i10, Uri uri) {
        a[] aVarArr = this.f24705d;
        a[] aVarArr2 = (a[]) z0.T0(aVarArr, aVarArr.length);
        aVarArr2[i4] = aVarArr2[i4].l(uri, i10);
        return new c(this.f24702a, this.f24704c, aVarArr2, this.f24706e, this.f24707f);
    }

    @CheckResult
    public c m(long j4) {
        return this.f24707f == j4 ? this : new c(this.f24702a, this.f24704c, this.f24705d, this.f24706e, j4);
    }

    @CheckResult
    public c n(int i4, int i10) {
        a[] aVarArr = this.f24705d;
        a[] aVarArr2 = (a[]) z0.T0(aVarArr, aVarArr.length);
        aVarArr2[i4] = aVarArr2[i4].k(3, i10);
        return new c(this.f24702a, this.f24704c, aVarArr2, this.f24706e, this.f24707f);
    }

    @CheckResult
    public c o(int i4, int i10) {
        a[] aVarArr = this.f24705d;
        a[] aVarArr2 = (a[]) z0.T0(aVarArr, aVarArr.length);
        aVarArr2[i4] = aVarArr2[i4].k(2, i10);
        return new c(this.f24702a, this.f24704c, aVarArr2, this.f24706e, this.f24707f);
    }

    @CheckResult
    public c p(int i4) {
        a[] aVarArr = this.f24705d;
        a[] aVarArr2 = (a[]) z0.T0(aVarArr, aVarArr.length);
        aVarArr2[i4] = aVarArr2[i4].m();
        return new c(this.f24702a, this.f24704c, aVarArr2, this.f24706e, this.f24707f);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putLongArray(g(1), this.f24704c);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (a aVar : this.f24705d) {
            arrayList.add(aVar.toBundle());
        }
        bundle.putParcelableArrayList(g(2), arrayList);
        bundle.putLong(g(3), this.f24706e);
        bundle.putLong(g(4), this.f24707f);
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adsId=");
        sb.append(this.f24702a);
        sb.append(", adResumePositionUs=");
        sb.append(this.f24706e);
        sb.append(", adGroups=[");
        for (int i4 = 0; i4 < this.f24705d.length; i4++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.f24704c[i4]);
            sb.append(", ads=[");
            for (int i10 = 0; i10 < this.f24705d[i4].f24715c.length; i10++) {
                sb.append("ad(state=");
                int i11 = this.f24705d[i4].f24715c[i10];
                if (i11 == 0) {
                    sb.append('_');
                } else if (i11 == 1) {
                    sb.append(Matrix.MATRIX_TYPE_RANDOM_REGULAR);
                } else if (i11 == 2) {
                    sb.append('S');
                } else if (i11 == 3) {
                    sb.append('P');
                } else if (i11 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.f24705d[i4].f24716d[i10]);
                sb.append(')');
                if (i10 < this.f24705d[i4].f24715c.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i4 < this.f24705d.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }

    private c(@Nullable Object obj, long[] jArr, @Nullable a[] aVarArr, long j4, long j10) {
        com.google.android.exoplayer2.util.a.a(aVarArr == null || aVarArr.length == jArr.length);
        this.f24702a = obj;
        this.f24704c = jArr;
        this.f24706e = j4;
        this.f24707f = j10;
        int length = jArr.length;
        this.f24703b = length;
        if (aVarArr == null) {
            aVarArr = new a[length];
            for (int i4 = 0; i4 < this.f24703b; i4++) {
                aVarArr[i4] = new a();
            }
        }
        this.f24705d = aVarArr;
    }
}
