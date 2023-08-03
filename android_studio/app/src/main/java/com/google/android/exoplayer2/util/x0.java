package com.google.android.exoplayer2.util;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;

/* compiled from: UriUtil.java */
/* loaded from: classes2.dex */
public final class x0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int f27734a = 4;

    /* renamed from: b  reason: collision with root package name */
    private static final int f27735b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f27736c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f27737d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final int f27738e = 3;

    private x0() {
    }

    private static int[] a(String str) {
        int i4;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1 || indexOf2 > length) {
            indexOf2 = length;
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 == -1 || indexOf3 > indexOf2) {
            indexOf3 = indexOf2;
        }
        int indexOf4 = str.indexOf(58);
        if (indexOf4 > indexOf3) {
            indexOf4 = -1;
        }
        int i10 = indexOf4 + 2;
        if (i10 < indexOf2 && str.charAt(indexOf4 + 1) == '/' && str.charAt(i10) == '/') {
            i4 = str.indexOf(47, indexOf4 + 3);
            if (i4 == -1 || i4 > indexOf2) {
                i4 = indexOf2;
            }
        } else {
            i4 = indexOf4 + 1;
        }
        iArr[0] = indexOf4;
        iArr[1] = i4;
        iArr[2] = indexOf2;
        iArr[3] = length;
        return iArr;
    }

    private static String b(StringBuilder sb, int i4, int i10) {
        int i11;
        int i12;
        if (i4 >= i10) {
            return sb.toString();
        }
        if (sb.charAt(i4) == '/') {
            i4++;
        }
        int i13 = i4;
        int i14 = i13;
        while (i13 <= i10) {
            if (i13 == i10) {
                i11 = i13;
            } else if (sb.charAt(i13) == '/') {
                i11 = i13 + 1;
            } else {
                i13++;
            }
            int i15 = i14 + 1;
            if (i13 == i15 && sb.charAt(i14) == '.') {
                sb.delete(i14, i11);
                i10 -= i11 - i14;
            } else {
                if (i13 == i14 + 2 && sb.charAt(i14) == '.' && sb.charAt(i15) == '.') {
                    i12 = sb.lastIndexOf("/", i14 - 2) + 1;
                    int i16 = i12 > i4 ? i12 : i4;
                    sb.delete(i16, i11);
                    i10 -= i11 - i16;
                } else {
                    i12 = i13 + 1;
                }
                i14 = i12;
            }
            i13 = i14;
        }
        return sb.toString();
    }

    public static Uri c(Uri uri, String str) {
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.clearQuery();
        for (String str2 : uri.getQueryParameterNames()) {
            if (!str2.equals(str)) {
                for (String str3 : uri.getQueryParameters(str2)) {
                    buildUpon.appendQueryParameter(str2, str3);
                }
            }
        }
        return buildUpon.build();
    }

    public static String d(@Nullable String str, @Nullable String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] a10 = a(str2);
        if (a10[0] != -1) {
            sb.append(str2);
            b(sb, a10[1], a10[2]);
            return sb.toString();
        }
        int[] a11 = a(str);
        if (a10[3] == 0) {
            sb.append((CharSequence) str, 0, a11[3]);
            sb.append(str2);
            return sb.toString();
        } else if (a10[2] == 0) {
            sb.append((CharSequence) str, 0, a11[2]);
            sb.append(str2);
            return sb.toString();
        } else if (a10[1] != 0) {
            int i4 = a11[0] + 1;
            sb.append((CharSequence) str, 0, i4);
            sb.append(str2);
            return b(sb, a10[1] + i4, i4 + a10[2]);
        } else if (str2.charAt(a10[1]) == '/') {
            sb.append((CharSequence) str, 0, a11[1]);
            sb.append(str2);
            return b(sb, a11[1], a11[1] + a10[2]);
        } else if (a11[0] + 2 < a11[1] && a11[1] == a11[2]) {
            sb.append((CharSequence) str, 0, a11[1]);
            sb.append(com.fasterxml.jackson.core.e.f13819f);
            sb.append(str2);
            return b(sb, a11[1], a11[1] + a10[2] + 1);
        } else {
            int lastIndexOf = str.lastIndexOf(47, a11[2] - 1);
            int i10 = lastIndexOf == -1 ? a11[1] : lastIndexOf + 1;
            sb.append((CharSequence) str, 0, i10);
            sb.append(str2);
            return b(sb, a11[1], i10 + a10[2]);
        }
    }

    public static Uri e(@Nullable String str, @Nullable String str2) {
        return Uri.parse(d(str, str2));
    }
}
