package com.google.common.escape;

import com.google.common.base.a0;

/* compiled from: CharEscaper.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public abstract class d extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final int f34021b = 2;

    private static char[] e(char[] cArr, int i4, int i10) {
        if (i10 >= 0) {
            char[] cArr2 = new char[i10];
            if (i4 > 0) {
                System.arraycopy(cArr, 0, cArr2, 0, i4);
            }
            return cArr2;
        }
        throw new AssertionError("Cannot increase internal buffer any further");
    }

    @Override // com.google.common.escape.f
    public String b(String str) {
        a0.E(str);
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            if (c(str.charAt(i4)) != null) {
                return d(str, i4);
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract char[] c(char c10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String d(String str, int i4) {
        int length = str.length();
        char[] a10 = h.a();
        int length2 = a10.length;
        int i10 = 0;
        int i11 = 0;
        while (i4 < length) {
            char[] c10 = c(str.charAt(i4));
            if (c10 != null) {
                int length3 = c10.length;
                int i12 = i4 - i10;
                int i13 = i11 + i12;
                int i14 = i13 + length3;
                if (length2 < i14) {
                    length2 = ((length - i4) * 2) + i14;
                    a10 = e(a10, i11, length2);
                }
                if (i12 > 0) {
                    str.getChars(i10, i4, a10, i11);
                    i11 = i13;
                }
                if (length3 > 0) {
                    System.arraycopy(c10, 0, a10, i11, length3);
                    i11 += length3;
                }
                i10 = i4 + 1;
            }
            i4++;
        }
        int i15 = length - i10;
        if (i15 > 0) {
            int i16 = i15 + i11;
            if (length2 < i16) {
                a10 = e(a10, i11, i16);
            }
            str.getChars(i10, length, a10, i11);
            i11 = i16;
        }
        return new String(a10, 0, i11);
    }
}
