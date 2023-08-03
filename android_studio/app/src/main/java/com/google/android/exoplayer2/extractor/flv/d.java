package com.google.android.exoplayer2.extractor.flv;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.h0;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ScriptTagPayloadReader.java */
/* loaded from: classes2.dex */
final class d extends TagPayloadReader {

    /* renamed from: e  reason: collision with root package name */
    private static final String f22219e = "onMetaData";

    /* renamed from: f  reason: collision with root package name */
    private static final String f22220f = "duration";

    /* renamed from: g  reason: collision with root package name */
    private static final String f22221g = "keyframes";

    /* renamed from: h  reason: collision with root package name */
    private static final String f22222h = "filepositions";

    /* renamed from: i  reason: collision with root package name */
    private static final String f22223i = "times";

    /* renamed from: j  reason: collision with root package name */
    private static final int f22224j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final int f22225k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final int f22226l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final int f22227m = 3;

    /* renamed from: n  reason: collision with root package name */
    private static final int f22228n = 8;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22229o = 9;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22230p = 10;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22231q = 11;

    /* renamed from: b  reason: collision with root package name */
    private long f22232b;

    /* renamed from: c  reason: collision with root package name */
    private long[] f22233c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f22234d;

    public d() {
        super(new j());
        this.f22232b = i.f23649b;
        this.f22233c = new long[0];
        this.f22234d = new long[0];
    }

    private static Boolean h(h0 h0Var) {
        return Boolean.valueOf(h0Var.G() == 1);
    }

    @Nullable
    private static Object i(h0 h0Var, int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 8) {
                            if (i4 != 10) {
                                if (i4 != 11) {
                                    return null;
                                }
                                return j(h0Var);
                            }
                            return n(h0Var);
                        }
                        return l(h0Var);
                    }
                    return m(h0Var);
                }
                return o(h0Var);
            }
            return h(h0Var);
        }
        return k(h0Var);
    }

    private static Date j(h0 h0Var) {
        Date date = new Date((long) k(h0Var).doubleValue());
        h0Var.T(2);
        return date;
    }

    private static Double k(h0 h0Var) {
        return Double.valueOf(Double.longBitsToDouble(h0Var.z()));
    }

    private static HashMap<String, Object> l(h0 h0Var) {
        int K = h0Var.K();
        HashMap<String, Object> hashMap = new HashMap<>(K);
        for (int i4 = 0; i4 < K; i4++) {
            String o9 = o(h0Var);
            Object i10 = i(h0Var, p(h0Var));
            if (i10 != null) {
                hashMap.put(o9, i10);
            }
        }
        return hashMap;
    }

    private static HashMap<String, Object> m(h0 h0Var) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String o9 = o(h0Var);
            int p9 = p(h0Var);
            if (p9 == 9) {
                return hashMap;
            }
            Object i4 = i(h0Var, p9);
            if (i4 != null) {
                hashMap.put(o9, i4);
            }
        }
    }

    private static ArrayList<Object> n(h0 h0Var) {
        int K = h0Var.K();
        ArrayList<Object> arrayList = new ArrayList<>(K);
        for (int i4 = 0; i4 < K; i4++) {
            Object i10 = i(h0Var, p(h0Var));
            if (i10 != null) {
                arrayList.add(i10);
            }
        }
        return arrayList;
    }

    private static String o(h0 h0Var) {
        int M = h0Var.M();
        int e4 = h0Var.e();
        h0Var.T(M);
        return new String(h0Var.d(), e4, M);
    }

    private static int p(h0 h0Var) {
        return h0Var.G();
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(h0 h0Var) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(h0 h0Var, long j4) {
        if (p(h0Var) == 2 && f22219e.equals(o(h0Var)) && p(h0Var) == 8) {
            HashMap<String, Object> l10 = l(h0Var);
            Object obj = l10.get("duration");
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (doubleValue > 0.0d) {
                    this.f22232b = (long) (doubleValue * 1000000.0d);
                }
            }
            Object obj2 = l10.get(f22221g);
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get(f22222h);
                Object obj4 = map.get(f22223i);
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.f22233c = new long[size];
                    this.f22234d = new long[size];
                    for (int i4 = 0; i4 < size; i4++) {
                        Object obj5 = list.get(i4);
                        Object obj6 = list2.get(i4);
                        if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                            this.f22233c[i4] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                            this.f22234d[i4] = ((Double) obj5).longValue();
                        } else {
                            this.f22233c = new long[0];
                            this.f22234d = new long[0];
                            break;
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public void d() {
    }

    public long e() {
        return this.f22232b;
    }

    public long[] f() {
        return this.f22234d;
    }

    public long[] g() {
        return this.f22233c;
    }
}
