package com.google.android.exoplayer2.text.ssa;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.text.ssa.c;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: SsaDecoder.java */
/* loaded from: classes2.dex */
public final class a extends com.google.android.exoplayer2.text.c {

    /* renamed from: t  reason: collision with root package name */
    private static final String f25612t = "SsaDecoder";

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f25613u = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: v  reason: collision with root package name */
    static final String f25614v = "Format:";

    /* renamed from: w  reason: collision with root package name */
    static final String f25615w = "Style:";

    /* renamed from: x  reason: collision with root package name */
    private static final String f25616x = "Dialogue:";

    /* renamed from: y  reason: collision with root package name */
    private static final float f25617y = 0.05f;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f25618o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final b f25619p;

    /* renamed from: q  reason: collision with root package name */
    private Map<String, c> f25620q;

    /* renamed from: r  reason: collision with root package name */
    private float f25621r;

    /* renamed from: s  reason: collision with root package name */
    private float f25622s;

    public a() {
        this(null);
    }

    private static int B(long j4, List<Long> list, List<List<com.google.android.exoplayer2.text.a>> list2) {
        int i4;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i4 = 0;
                break;
            } else if (list.get(size).longValue() == j4) {
                return size;
            } else {
                if (list.get(size).longValue() < j4) {
                    i4 = size + 1;
                    break;
                }
                size--;
            }
        }
        list.add(i4, Long.valueOf(j4));
        list2.add(i4, i4 == 0 ? new ArrayList() : new ArrayList(list2.get(i4 - 1)));
        return i4;
    }

    private static float C(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                return i4 != 2 ? -3.4028235E38f : 0.95f;
            }
            return 0.5f;
        }
        return f25617y;
    }

    private static com.google.android.exoplayer2.text.a D(String str, @Nullable c cVar, c.b bVar, float f10, float f11) {
        SpannableString spannableString = new SpannableString(str);
        a.c A = new a.c().A(spannableString);
        if (cVar != null) {
            if (cVar.f25641c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f25641c.intValue()), 0, spannableString.length(), 33);
            }
            float f12 = cVar.f25642d;
            if (f12 != -3.4028235E38f && f11 != -3.4028235E38f) {
                A.C(f12 / f11, 1);
            }
            boolean z9 = cVar.f25643e;
            if (z9 && cVar.f25644f) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z9) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f25644f) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f25645g) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f25646h) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i4 = bVar.f25662a;
        if (i4 == -1) {
            i4 = cVar != null ? cVar.f25640b : -1;
        }
        A.B(M(i4)).x(L(i4)).u(K(i4));
        PointF pointF = bVar.f25663b;
        if (pointF != null && f11 != -3.4028235E38f && f10 != -3.4028235E38f) {
            A.w(pointF.x / f10);
            A.t(bVar.f25663b.y / f11, 0);
        } else {
            A.w(C(A.i()));
            A.t(C(A.f()), 0);
        }
        return A.a();
    }

    private void E(String str, b bVar, List<List<com.google.android.exoplayer2.text.a>> list, List<Long> list2) {
        int i4;
        com.google.android.exoplayer2.util.a.a(str.startsWith(f25616x));
        String[] split = str.substring(9).split(",", bVar.f25627e);
        if (split.length != bVar.f25627e) {
            w.n(f25612t, str.length() != 0 ? "Skipping dialogue line with fewer columns than format: ".concat(str) : new String("Skipping dialogue line with fewer columns than format: "));
            return;
        }
        long J = J(split[bVar.f25623a]);
        if (J == i.f23649b) {
            w.n(f25612t, str.length() != 0 ? "Skipping invalid timing: ".concat(str) : new String("Skipping invalid timing: "));
            return;
        }
        long J2 = J(split[bVar.f25624b]);
        if (J2 == i.f23649b) {
            w.n(f25612t, str.length() != 0 ? "Skipping invalid timing: ".concat(str) : new String("Skipping invalid timing: "));
            return;
        }
        Map<String, c> map = this.f25620q;
        c cVar = (map == null || (i4 = bVar.f25625c) == -1) ? null : map.get(split[i4].trim());
        String str2 = split[bVar.f25626d];
        com.google.android.exoplayer2.text.a D = D(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.f25621r, this.f25622s);
        int B = B(J2, list2, list);
        for (int B2 = B(J, list2, list); B2 < B; B2++) {
            list.get(B2).add(D);
        }
    }

    private void F(h0 h0Var, List<List<com.google.android.exoplayer2.text.a>> list, List<Long> list2) {
        b bVar = this.f25618o ? this.f25619p : null;
        while (true) {
            String q9 = h0Var.q();
            if (q9 == null) {
                return;
            }
            if (q9.startsWith(f25614v)) {
                bVar = b.a(q9);
            } else if (q9.startsWith(f25616x)) {
                if (bVar == null) {
                    w.n(f25612t, q9.length() != 0 ? "Skipping dialogue line before complete format: ".concat(q9) : new String("Skipping dialogue line before complete format: "));
                } else {
                    E(q9, bVar, list, list2);
                }
            }
        }
    }

    private void G(h0 h0Var) {
        while (true) {
            String q9 = h0Var.q();
            if (q9 == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(q9)) {
                H(h0Var);
            } else if ("[V4+ Styles]".equalsIgnoreCase(q9)) {
                this.f25620q = I(h0Var);
            } else if ("[V4 Styles]".equalsIgnoreCase(q9)) {
                w.i(f25612t, "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(q9)) {
                return;
            }
        }
    }

    private void H(h0 h0Var) {
        while (true) {
            String q9 = h0Var.q();
            if (q9 == null) {
                return;
            }
            if (h0Var.a() != 0 && h0Var.h() == 91) {
                return;
            }
            String[] split = q9.split(":");
            if (split.length == 2) {
                String g4 = com.google.common.base.c.g(split[0].trim());
                g4.hashCode();
                if (g4.equals("playresx")) {
                    this.f25621r = Float.parseFloat(split[1].trim());
                } else if (g4.equals("playresy")) {
                    try {
                        this.f25622s = Float.parseFloat(split[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Map<String, c> I(h0 h0Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVar = null;
        while (true) {
            String q9 = h0Var.q();
            if (q9 == null || (h0Var.a() != 0 && h0Var.h() == 91)) {
                break;
            } else if (q9.startsWith(f25614v)) {
                aVar = c.a.a(q9);
            } else if (q9.startsWith(f25615w)) {
                if (aVar == null) {
                    w.n(f25612t, q9.length() != 0 ? "Skipping 'Style:' line before 'Format:' line: ".concat(q9) : new String("Skipping 'Style:' line before 'Format:' line: "));
                } else {
                    c b10 = c.b(q9, aVar);
                    if (b10 != null) {
                        linkedHashMap.put(b10.f25639a, b10);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long J(String str) {
        Matcher matcher = f25613u.matcher(str.trim());
        return !matcher.matches() ? i.f23649b : (Long.parseLong((String) z0.k(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) z0.k(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) z0.k(matcher.group(3))) * 1000000) + (Long.parseLong((String) z0.k(matcher.group(4))) * 10000);
    }

    private static int K(int i4) {
        switch (i4) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                StringBuilder sb = new StringBuilder(30);
                sb.append("Unknown alignment: ");
                sb.append(i4);
                w.n(f25612t, sb.toString());
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static int L(int i4) {
        switch (i4) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                StringBuilder sb = new StringBuilder(30);
                sb.append("Unknown alignment: ");
                sb.append(i4);
                w.n(f25612t, sb.toString());
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    @Nullable
    private static Layout.Alignment M(int i4) {
        switch (i4) {
            case -1:
                return null;
            case 0:
            default:
                StringBuilder sb = new StringBuilder(30);
                sb.append("Unknown alignment: ");
                sb.append(i4);
                w.n(f25612t, sb.toString());
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // com.google.android.exoplayer2.text.c
    protected com.google.android.exoplayer2.text.e z(byte[] bArr, int i4, boolean z9) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        h0 h0Var = new h0(bArr, i4);
        if (!this.f25618o) {
            G(h0Var);
        }
        F(h0Var, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }

    public a(@Nullable List<byte[]> list) {
        super(f25612t);
        this.f25621r = -3.4028235E38f;
        this.f25622s = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.f25618o = true;
            String J = z0.J(list.get(0));
            com.google.android.exoplayer2.util.a.a(J.startsWith(f25614v));
            this.f25619p = (b) com.google.android.exoplayer2.util.a.g(b.a(J));
            G(new h0(list.get(1)));
            return;
        }
        this.f25618o = false;
        this.f25619p = null;
    }
}
