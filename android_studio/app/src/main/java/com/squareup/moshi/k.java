package com.squareup.moshi;

import kotlin.text.Typography;

/* compiled from: JsonScope.java */
/* loaded from: classes3.dex */
final class k {

    /* renamed from: a  reason: collision with root package name */
    static final int f55622a = 1;

    /* renamed from: b  reason: collision with root package name */
    static final int f55623b = 2;

    /* renamed from: c  reason: collision with root package name */
    static final int f55624c = 3;

    /* renamed from: d  reason: collision with root package name */
    static final int f55625d = 4;

    /* renamed from: e  reason: collision with root package name */
    static final int f55626e = 5;

    /* renamed from: f  reason: collision with root package name */
    static final int f55627f = 6;

    /* renamed from: g  reason: collision with root package name */
    static final int f55628g = 7;

    /* renamed from: h  reason: collision with root package name */
    static final int f55629h = 8;

    /* renamed from: i  reason: collision with root package name */
    static final int f55630i = 9;

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i4, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sb = new StringBuilder();
        sb.append(Typography.dollar);
        for (int i10 = 0; i10 < i4; i10++) {
            int i11 = iArr[i10];
            if (i11 == 1 || i11 == 2) {
                sb.append('[');
                sb.append(iArr2[i10]);
                sb.append(']');
            } else if (i11 == 3 || i11 == 4 || i11 == 5) {
                sb.append('.');
                if (strArr[i10] != null) {
                    sb.append(strArr[i10]);
                }
            }
        }
        return sb.toString();
    }
}
