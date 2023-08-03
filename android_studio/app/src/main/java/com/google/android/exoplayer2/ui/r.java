package com.google.android.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: SpannedToHtmlConverter.java */
/* loaded from: classes2.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f26909a = Pattern.compile("(&#13;)?&#10;");

    /* compiled from: SpannedToHtmlConverter.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f26910a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, String> f26911b;

        private b(String str, Map<String, String> map) {
            this.f26910a = str;
            this.f26911b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpannedToHtmlConverter.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: e  reason: collision with root package name */
        private static final Comparator<c> f26912e = s.f26921a;

        /* renamed from: f  reason: collision with root package name */
        private static final Comparator<c> f26913f = t.f26923a;

        /* renamed from: a  reason: collision with root package name */
        public final int f26914a;

        /* renamed from: b  reason: collision with root package name */
        public final int f26915b;

        /* renamed from: c  reason: collision with root package name */
        public final String f26916c;

        /* renamed from: d  reason: collision with root package name */
        public final String f26917d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(c cVar, c cVar2) {
            int compare = Integer.compare(cVar2.f26915b, cVar.f26915b);
            if (compare != 0) {
                return compare;
            }
            int compareTo = cVar.f26916c.compareTo(cVar2.f26916c);
            return compareTo != 0 ? compareTo : cVar.f26917d.compareTo(cVar2.f26917d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int f(c cVar, c cVar2) {
            int compare = Integer.compare(cVar2.f26914a, cVar.f26914a);
            if (compare != 0) {
                return compare;
            }
            int compareTo = cVar2.f26916c.compareTo(cVar.f26916c);
            return compareTo != 0 ? compareTo : cVar2.f26917d.compareTo(cVar.f26917d);
        }

        private c(int i4, int i10, String str, String str2) {
            this.f26914a = i4;
            this.f26915b = i10;
            this.f26916c = str;
            this.f26917d = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpannedToHtmlConverter.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final List<c> f26918a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<c> f26919b = new ArrayList();
    }

    private r() {
    }

    public static b a(@Nullable CharSequence charSequence, float f10) {
        if (charSequence == null) {
            return new b("", ImmutableMap.of());
        }
        if (!(charSequence instanceof Spanned)) {
            return new b(b(charSequence), ImmutableMap.of());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet<Integer> hashSet = new HashSet();
        int i4 = 0;
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap hashMap = new HashMap();
        for (Integer num : hashSet) {
            int intValue = num.intValue();
            StringBuilder sb = new StringBuilder(14);
            sb.append("bg_");
            sb.append(intValue);
            hashMap.put(j.a(sb.toString()), com.google.android.exoplayer2.util.z0.I("background-color:%s;", j.b(intValue)));
        }
        SparseArray<d> c10 = c(spanned, f10);
        StringBuilder sb2 = new StringBuilder(spanned.length());
        int i10 = 0;
        while (i4 < c10.size()) {
            int keyAt = c10.keyAt(i4);
            sb2.append(b(spanned.subSequence(i10, keyAt)));
            d dVar = c10.get(keyAt);
            Collections.sort(dVar.f26919b, c.f26913f);
            for (c cVar : dVar.f26919b) {
                sb2.append(cVar.f26917d);
            }
            Collections.sort(dVar.f26918a, c.f26912e);
            for (c cVar2 : dVar.f26918a) {
                sb2.append(cVar2.f26916c);
            }
            i4++;
            i10 = keyAt;
        }
        sb2.append(b(spanned.subSequence(i10, spanned.length())));
        return new b(sb2.toString(), hashMap);
    }

    private static String b(CharSequence charSequence) {
        return f26909a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static SparseArray<d> c(Spanned spanned, float f10) {
        Object[] spans;
        SparseArray<d> sparseArray = new SparseArray<>();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String e4 = e(obj, f10);
            String d4 = d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (e4 != null) {
                com.google.android.exoplayer2.util.a.g(d4);
                c cVar = new c(spanStart, spanEnd, e4, d4);
                f(sparseArray, spanStart).f26918a.add(cVar);
                f(sparseArray, spanEnd).f26919b.add(cVar);
            }
        }
        return sparseArray;
    }

    @Nullable
    private static String d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof com.google.android.exoplayer2.text.span.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof com.google.android.exoplayer2.text.span.f)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else if (obj instanceof com.google.android.exoplayer2.text.span.c) {
            String b10 = b(((com.google.android.exoplayer2.text.span.c) obj).f25597a);
            StringBuilder sb = new StringBuilder(String.valueOf(b10).length() + 16);
            sb.append("<rt>");
            sb.append(b10);
            sb.append("</rt></ruby>");
            return sb.toString();
        } else if (obj instanceof UnderlineSpan) {
            return "</u>";
        }
        return null;
    }

    @Nullable
    private static String e(Object obj, float f10) {
        float size;
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return com.google.android.exoplayer2.util.z0.I("<span style='color:%s;'>", j.b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return com.google.android.exoplayer2.util.z0.I("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof com.google.android.exoplayer2.text.span.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            if (absoluteSizeSpan.getDip()) {
                size = absoluteSizeSpan.getSize();
            } else {
                size = absoluteSizeSpan.getSize() / f10;
            }
            return com.google.android.exoplayer2.util.z0.I("<span style='font-size:%.2fpx;'>", Float.valueOf(size));
        } else if (obj instanceof RelativeSizeSpan) {
            return com.google.android.exoplayer2.util.z0.I("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        } else {
            if (obj instanceof TypefaceSpan) {
                String family = ((TypefaceSpan) obj).getFamily();
                if (family != null) {
                    return com.google.android.exoplayer2.util.z0.I("<span style='font-family:\"%s\";'>", family);
                }
                return null;
            } else if (obj instanceof StyleSpan) {
                int style = ((StyleSpan) obj).getStyle();
                if (style != 1) {
                    if (style != 2) {
                        if (style != 3) {
                            return null;
                        }
                        return "<b><i>";
                    }
                    return "<i>";
                }
                return "<b>";
            } else if (obj instanceof com.google.android.exoplayer2.text.span.c) {
                int i4 = ((com.google.android.exoplayer2.text.span.c) obj).f25598b;
                if (i4 != -1) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            return null;
                        }
                        return "<ruby style='ruby-position:under;'>";
                    }
                    return "<ruby style='ruby-position:over;'>";
                }
                return "<ruby style='ruby-position:unset;'>";
            } else if (obj instanceof UnderlineSpan) {
                return "<u>";
            } else {
                if (obj instanceof com.google.android.exoplayer2.text.span.f) {
                    com.google.android.exoplayer2.text.span.f fVar = (com.google.android.exoplayer2.text.span.f) obj;
                    return com.google.android.exoplayer2.util.z0.I("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", h(fVar.f25609a, fVar.f25610b), g(fVar.f25611c));
                }
                return null;
            }
        }
    }

    private static d f(SparseArray<d> sparseArray, int i4) {
        d dVar = sparseArray.get(i4);
        if (dVar == null) {
            d dVar2 = new d();
            sparseArray.put(i4, dVar2);
            return dVar2;
        }
        return dVar;
    }

    private static String g(int i4) {
        return i4 != 2 ? "over right" : "under left";
    }

    private static String h(int i4, int i10) {
        StringBuilder sb = new StringBuilder();
        if (i10 == 1) {
            sb.append("filled ");
        } else if (i10 == 2) {
            sb.append("open ");
        }
        if (i4 == 0) {
            sb.append("none");
        } else if (i4 == 1) {
            sb.append(com.google.android.exoplayer2.text.ttml.d.f25747z0);
        } else if (i4 == 2) {
            sb.append(com.google.android.exoplayer2.text.ttml.d.f25743x0);
        } else if (i4 != 3) {
            sb.append("unset");
        } else {
            sb.append(com.google.android.exoplayer2.text.ttml.d.f25745y0);
        }
        return sb.toString();
    }
}
