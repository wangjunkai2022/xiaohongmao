package com.google.android.exoplayer2.text.ttml;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayDeque;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TtmlRenderUtil.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f25771a = "TtmlRenderUtil";

    private f() {
    }

    public static void a(Spannable spannable, int i4, int i10, g gVar, @Nullable d dVar, Map<String, g> map, int i11) {
        d e4;
        int i12;
        if (gVar.l() != -1) {
            spannable.setSpan(new StyleSpan(gVar.l()), i4, i10, 33);
        }
        if (gVar.t()) {
            spannable.setSpan(new StrikethroughSpan(), i4, i10, 33);
        }
        if (gVar.u()) {
            spannable.setSpan(new UnderlineSpan(), i4, i10, 33);
        }
        if (gVar.q()) {
            com.google.android.exoplayer2.text.span.d.a(spannable, new ForegroundColorSpan(gVar.c()), i4, i10, 33);
        }
        if (gVar.p()) {
            com.google.android.exoplayer2.text.span.d.a(spannable, new BackgroundColorSpan(gVar.b()), i4, i10, 33);
        }
        if (gVar.d() != null) {
            com.google.android.exoplayer2.text.span.d.a(spannable, new TypefaceSpan(gVar.d()), i4, i10, 33);
        }
        if (gVar.o() != null) {
            b bVar = (b) com.google.android.exoplayer2.util.a.g(gVar.o());
            int i13 = bVar.f25687a;
            if (i13 == -1) {
                i13 = (i11 == 2 || i11 == 1) ? 3 : 1;
                i12 = 1;
            } else {
                i12 = bVar.f25688b;
            }
            int i14 = bVar.f25689c;
            if (i14 == -2) {
                i14 = 1;
            }
            com.google.android.exoplayer2.text.span.d.a(spannable, new com.google.android.exoplayer2.text.span.f(i13, i12, i14), i4, i10, 33);
        }
        int j4 = gVar.j();
        if (j4 == 2) {
            d d4 = d(dVar, map);
            if (d4 != null && (e4 = e(d4, map)) != null) {
                if (e4.g() == 1 && e4.f(0).f25749b != null) {
                    String str = (String) z0.k(e4.f(0).f25749b);
                    g gVar2 = d4.f25753f;
                    spannable.setSpan(new com.google.android.exoplayer2.text.span.c(str, gVar2 != null ? gVar2.i() : -1), i4, i10, 33);
                } else {
                    w.i(f25771a, "Skipping rubyText node without exactly one text child.");
                }
            }
        } else if (j4 == 3 || j4 == 4) {
            spannable.setSpan(new a(), i4, i10, 33);
        }
        if (gVar.n()) {
            com.google.android.exoplayer2.text.span.d.a(spannable, new com.google.android.exoplayer2.text.span.a(), i4, i10, 33);
        }
        int f10 = gVar.f();
        if (f10 == 1) {
            com.google.android.exoplayer2.text.span.d.a(spannable, new AbsoluteSizeSpan((int) gVar.e(), true), i4, i10, 33);
        } else if (f10 == 2) {
            com.google.android.exoplayer2.text.span.d.a(spannable, new RelativeSizeSpan(gVar.e()), i4, i10, 33);
        } else if (f10 != 3) {
        } else {
            com.google.android.exoplayer2.text.span.d.a(spannable, new RelativeSizeSpan(gVar.e() / 100.0f), i4, i10, 33);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    @Nullable
    private static d d(@Nullable d dVar, Map<String, g> map) {
        while (dVar != null) {
            g f10 = f(dVar.f25753f, dVar.l(), map);
            if (f10 != null && f10.j() == 1) {
                return dVar;
            }
            dVar = dVar.f25757j;
        }
        return null;
    }

    @Nullable
    private static d e(d dVar, Map<String, g> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            d dVar2 = (d) arrayDeque.pop();
            g f10 = f(dVar2.f25753f, dVar2.l(), map);
            if (f10 != null && f10.j() == 3) {
                return dVar2;
            }
            for (int g4 = dVar2.g() - 1; g4 >= 0; g4--) {
                arrayDeque.push(dVar2.f(g4));
            }
        }
        return null;
    }

    @Nullable
    public static g f(@Nullable g gVar, @Nullable String[] strArr, Map<String, g> map) {
        int i4 = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i4 < length) {
                    gVar2.a(map.get(strArr[i4]));
                    i4++;
                }
                return gVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            return gVar.a(map.get(strArr[0]));
        } else {
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i4 < length2) {
                    gVar.a(map.get(strArr[i4]));
                    i4++;
                }
            }
        }
        return gVar;
    }
}
