package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: HttpUtil.java */
/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27224a = "HttpUtil";

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f27225b = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f27226c = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    private d0() {
    }

    @Nullable
    public static String a(long j4, long j10) {
        if (j4 == 0 && j10 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("bytes=");
        sb.append(j4);
        sb.append("-");
        if (j10 != -1) {
            sb.append((j4 + j10) - 1);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long b(@androidx.annotation.Nullable java.lang.String r9, @androidx.annotation.Nullable java.lang.String r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            java.lang.String r1 = "]"
            java.lang.String r2 = "HttpUtil"
            if (r0 != 0) goto L30
            long r3 = java.lang.Long.parseLong(r9)     // Catch: java.lang.NumberFormatException -> Lf
            goto L32
        Lf:
            java.lang.String r0 = java.lang.String.valueOf(r9)
            int r0 = r0.length()
            int r0 = r0 + 28
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r0)
            java.lang.String r0 = "Unexpected Content-Length ["
            r3.append(r0)
            r3.append(r9)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            com.google.android.exoplayer2.util.w.d(r2, r0)
        L30:
            r3 = -1
        L32:
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 != 0) goto Lcb
            java.util.regex.Pattern r0 = com.google.android.exoplayer2.upstream.d0.f27225b
            java.util.regex.Matcher r0 = r0.matcher(r10)
            boolean r5 = r0.matches()
            if (r5 == 0) goto Lcb
            r5 = 2
            java.lang.String r5 = r0.group(r5)     // Catch: java.lang.NumberFormatException -> Laa
            java.lang.Object r5 = com.google.android.exoplayer2.util.a.g(r5)     // Catch: java.lang.NumberFormatException -> Laa
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.NumberFormatException -> Laa
            long r5 = java.lang.Long.parseLong(r5)     // Catch: java.lang.NumberFormatException -> Laa
            r7 = 1
            java.lang.String r0 = r0.group(r7)     // Catch: java.lang.NumberFormatException -> Laa
            java.lang.Object r0 = com.google.android.exoplayer2.util.a.g(r0)     // Catch: java.lang.NumberFormatException -> Laa
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.NumberFormatException -> Laa
            long r7 = java.lang.Long.parseLong(r0)     // Catch: java.lang.NumberFormatException -> Laa
            long r5 = r5 - r7
            r7 = 1
            long r5 = r5 + r7
            r7 = 0
            int r0 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r0 >= 0) goto L6e
            r3 = r5
            goto Lcb
        L6e:
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 == 0) goto Lcb
            java.lang.String r0 = java.lang.String.valueOf(r9)     // Catch: java.lang.NumberFormatException -> Laa
            int r0 = r0.length()     // Catch: java.lang.NumberFormatException -> Laa
            int r0 = r0 + 26
            java.lang.String r7 = java.lang.String.valueOf(r10)     // Catch: java.lang.NumberFormatException -> Laa
            int r7 = r7.length()     // Catch: java.lang.NumberFormatException -> Laa
            int r0 = r0 + r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> Laa
            r7.<init>(r0)     // Catch: java.lang.NumberFormatException -> Laa
            java.lang.String r0 = "Inconsistent headers ["
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> Laa
            r7.append(r9)     // Catch: java.lang.NumberFormatException -> Laa
            java.lang.String r9 = "] ["
            r7.append(r9)     // Catch: java.lang.NumberFormatException -> Laa
            r7.append(r10)     // Catch: java.lang.NumberFormatException -> Laa
            r7.append(r1)     // Catch: java.lang.NumberFormatException -> Laa
            java.lang.String r9 = r7.toString()     // Catch: java.lang.NumberFormatException -> Laa
            com.google.android.exoplayer2.util.w.n(r2, r9)     // Catch: java.lang.NumberFormatException -> Laa
            long r9 = java.lang.Math.max(r3, r5)     // Catch: java.lang.NumberFormatException -> Laa
            r3 = r9
            goto Lcb
        Laa:
            java.lang.String r9 = java.lang.String.valueOf(r10)
            int r9 = r9.length()
            int r9 = r9 + 27
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r9)
            java.lang.String r9 = "Unexpected Content-Range ["
            r0.append(r9)
            r0.append(r10)
            r0.append(r1)
            java.lang.String r9 = r0.toString()
            com.google.android.exoplayer2.util.w.d(r2, r9)
        Lcb:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.d0.b(java.lang.String, java.lang.String):long");
    }

    public static long c(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f27226c.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) com.google.android.exoplayer2.util.a.g(matcher.group(1)));
        }
        return -1L;
    }
}
