package org.brotli.dec;

/* compiled from: Transform.java */
/* loaded from: classes5.dex */
final class m {

    /* renamed from: d  reason: collision with root package name */
    static final m[] f91679d = {new m("", 0, ""), new m("", 0, " "), new m(" ", 0, " "), new m("", 12, ""), new m("", 10, " "), new m("", 0, " the "), new m(" ", 0, ""), new m("s ", 0, " "), new m("", 0, " of "), new m("", 10, ""), new m("", 0, " and "), new m("", 13, ""), new m("", 1, ""), new m(", ", 0, " "), new m("", 0, ", "), new m(" ", 10, " "), new m("", 0, " in "), new m("", 0, " to "), new m("e ", 0, " "), new m("", 0, "\""), new m("", 0, "."), new m("", 0, "\">"), new m("", 0, "\n"), new m("", 3, ""), new m("", 0, "]"), new m("", 0, " for "), new m("", 14, ""), new m("", 2, ""), new m("", 0, " a "), new m("", 0, " that "), new m(" ", 10, ""), new m("", 0, ". "), new m(".", 0, ""), new m(" ", 0, ", "), new m("", 15, ""), new m("", 0, " with "), new m("", 0, "'"), new m("", 0, " from "), new m("", 0, " by "), new m("", 16, ""), new m("", 17, ""), new m(" the ", 0, ""), new m("", 4, ""), new m("", 0, ". The "), new m("", 11, ""), new m("", 0, " on "), new m("", 0, " as "), new m("", 0, " is "), new m("", 7, ""), new m("", 1, "ing "), new m("", 0, org.koin.core.instance.d.f92439c), new m("", 0, ":"), new m(" ", 0, ". "), new m("", 0, "ed "), new m("", 20, ""), new m("", 18, ""), new m("", 6, ""), new m("", 0, "("), new m("", 10, ", "), new m("", 8, ""), new m("", 0, " at "), new m("", 0, "ly "), new m(" the ", 0, " of "), new m("", 5, ""), new m("", 9, ""), new m(" ", 10, ", "), new m("", 10, "\""), new m(".", 0, "("), new m("", 11, " "), new m("", 10, "\">"), new m("", 0, "=\""), new m(" ", 0, "."), new m(".com/", 0, ""), new m(" the ", 0, " of the "), new m("", 10, "'"), new m("", 0, ". This "), new m("", 0, ","), new m(".", 0, " "), new m("", 10, "("), new m("", 10, "."), new m("", 0, " not "), new m(" ", 0, "=\""), new m("", 0, "er "), new m(" ", 11, " "), new m("", 0, "al "), new m(" ", 11, ""), new m("", 0, "='"), new m("", 11, "\""), new m("", 10, ". "), new m(" ", 0, "("), new m("", 0, "ful "), new m(" ", 10, ". "), new m("", 0, "ive "), new m("", 0, "less "), new m("", 11, "'"), new m("", 0, "est "), new m(" ", 10, "."), new m("", 11, "\">"), new m(" ", 0, "='"), new m("", 10, ","), new m("", 0, "ize "), new m("", 11, "."), new m("Â ", 0, ""), new m(" ", 0, ","), new m("", 10, "=\""), new m("", 11, "=\""), new m("", 0, "ous "), new m("", 11, ", "), new m("", 10, "='"), new m(" ", 10, ","), new m(" ", 11, "=\""), new m(" ", 11, ", "), new m("", 11, ","), new m("", 11, "("), new m("", 11, ". "), new m(" ", 11, "."), new m("", 11, "='"), new m(" ", 11, ". "), new m(" ", 10, "=\""), new m(" ", 11, "='"), new m(" ", 10, "='")};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f91680a;

    /* renamed from: b  reason: collision with root package name */
    private final int f91681b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f91682c;

    m(String str, int i4, String str2) {
        this.f91680a = a(str);
        this.f91681b = i4;
        this.f91682c = a(str2);
    }

    static byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4] = (byte) str.charAt(i4);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i4, byte[] bArr2, int i10, int i11, m mVar) {
        int i12 = i4;
        for (byte b10 : mVar.f91680a) {
            bArr[i12] = b10;
            i12++;
        }
        int i13 = mVar.f91681b;
        int a10 = o.a(i13);
        if (a10 > i11) {
            a10 = i11;
        }
        int i14 = i10 + a10;
        int b11 = (i11 - a10) - o.b(i13);
        int i15 = b11;
        while (i15 > 0) {
            bArr[i12] = bArr2[i14];
            i15--;
            i12++;
            i14++;
        }
        if (i13 == 11 || i13 == 10) {
            int i16 = i12 - b11;
            if (i13 == 10) {
                b11 = 1;
            }
            while (b11 > 0) {
                int i17 = bArr[i16] & 255;
                if (i17 < 192) {
                    if (i17 >= 97 && i17 <= 122) {
                        bArr[i16] = (byte) (bArr[i16] ^ 32);
                    }
                    i16++;
                    b11--;
                } else if (i17 < 224) {
                    int i18 = i16 + 1;
                    bArr[i18] = (byte) (bArr[i18] ^ 32);
                    i16 += 2;
                    b11 -= 2;
                } else {
                    int i19 = i16 + 2;
                    bArr[i19] = (byte) (bArr[i19] ^ 5);
                    i16 += 3;
                    b11 -= 3;
                }
            }
        }
        for (byte b12 : mVar.f91682c) {
            bArr[i12] = b12;
            i12++;
        }
        return i12 - i4;
    }
}
