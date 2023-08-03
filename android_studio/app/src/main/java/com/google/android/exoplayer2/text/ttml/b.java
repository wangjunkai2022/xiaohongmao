package com.google.android.exoplayer2.text.ttml;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableSet;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;

/* compiled from: TextEmphasis.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    public static final int f25680d = -1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f25681e = -2;

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f25682f = Pattern.compile("\\s+");

    /* renamed from: g  reason: collision with root package name */
    private static final ImmutableSet<String> f25683g = ImmutableSet.of("auto", "none");

    /* renamed from: h  reason: collision with root package name */
    private static final ImmutableSet<String> f25684h = ImmutableSet.of(d.f25743x0, d.f25745y0, d.f25747z0);

    /* renamed from: i  reason: collision with root package name */
    private static final ImmutableSet<String> f25685i = ImmutableSet.of(d.A0, d.B0);

    /* renamed from: j  reason: collision with root package name */
    private static final ImmutableSet<String> f25686j = ImmutableSet.of(d.f25712d0, d.f25711c0, d.f25713e0);

    /* renamed from: a  reason: collision with root package name */
    public final int f25687a;

    /* renamed from: b  reason: collision with root package name */
    public final int f25688b;

    /* renamed from: c  reason: collision with root package name */
    public final int f25689c;

    /* compiled from: TextEmphasis.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    private b(int i4, int i10, int i11) {
        this.f25687a = i4;
        this.f25688b = i10;
        this.f25689c = i11;
    }

    @Nullable
    public static b a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String g4 = com.google.common.base.c.g(str.trim());
        if (g4.isEmpty()) {
            return null;
        }
        return b(ImmutableSet.copyOf(TextUtils.split(g4, f25682f)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0081, code lost:
        if (r9.equals("auto") != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.text.ttml.b b(com.google.common.collect.ImmutableSet<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.b.b(com.google.common.collect.ImmutableSet):com.google.android.exoplayer2.text.ttml.b");
    }
}
