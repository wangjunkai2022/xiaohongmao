package okio.internal;

import com.fasterxml.jackson.core.base.a;
import com.google.android.exoplayer2.extractor.ts.a0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import okio.Utf8;

/* compiled from: -Utf8.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"commonAsUtf8ToByteArray", "", "", "commonToUtf8String", "beginIndex", "", "endIndex", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class _Utf8Kt {
    @g
    public static final byte[] commonAsUtf8ToByteArray(@g String str) {
        int i4;
        int i10;
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        if (length > 0) {
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                char charAt = str.charAt(i11);
                if (Intrinsics.compare((int) charAt, 128) >= 0) {
                    int length2 = str.length();
                    int i13 = i11;
                    while (i11 < length2) {
                        char charAt2 = str.charAt(i11);
                        if (Intrinsics.compare((int) charAt2, 128) < 0) {
                            int i14 = i13 + 1;
                            bArr[i13] = (byte) charAt2;
                            i11++;
                            while (true) {
                                i13 = i14;
                                if (i11 < length2 && Intrinsics.compare((int) str.charAt(i11), 128) < 0) {
                                    i14 = i13 + 1;
                                    bArr[i13] = (byte) str.charAt(i11);
                                    i11++;
                                }
                            }
                        } else {
                            if (Intrinsics.compare((int) charAt2, 2048) < 0) {
                                int i15 = i13 + 1;
                                bArr[i13] = (byte) ((charAt2 >> 6) | 192);
                                i4 = i15 + 1;
                                bArr[i15] = (byte) ((charAt2 & '?') | 128);
                            } else {
                                boolean z9 = true;
                                if (55296 <= charAt2 && charAt2 <= 57343) {
                                    if (Intrinsics.compare((int) charAt2, (int) a.f13768k) <= 0 && length2 > (i10 = i11 + 1)) {
                                        char charAt3 = str.charAt(i10);
                                        if ((56320 > charAt3 || charAt3 > 57343) ? false : false) {
                                            int charAt4 = ((charAt2 << '\n') + str.charAt(i10)) - 56613888;
                                            int i16 = i13 + 1;
                                            bArr[i13] = (byte) ((charAt4 >> 18) | a0.A);
                                            int i17 = i16 + 1;
                                            bArr[i16] = (byte) (((charAt4 >> 12) & 63) | 128);
                                            int i18 = i17 + 1;
                                            bArr[i17] = (byte) (((charAt4 >> 6) & 63) | 128);
                                            i4 = i18 + 1;
                                            bArr[i18] = (byte) ((charAt4 & 63) | 128);
                                            i11 += 2;
                                            i13 = i4;
                                        }
                                    }
                                    i4 = i13 + 1;
                                    bArr[i13] = Utf8.REPLACEMENT_BYTE;
                                } else {
                                    int i19 = i13 + 1;
                                    bArr[i13] = (byte) ((charAt2 >> '\f') | 224);
                                    int i20 = i19 + 1;
                                    bArr[i19] = (byte) (((charAt2 >> 6) & 63) | 128);
                                    i4 = i20 + 1;
                                    bArr[i20] = (byte) ((charAt2 & '?') | 128);
                                }
                            }
                            i11++;
                            i13 = i4;
                        }
                    }
                    byte[] copyOf = Arrays.copyOf(bArr, i13);
                    Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                    return copyOf;
                }
                bArr[i11] = (byte) charAt;
                if (i12 >= length) {
                    break;
                }
                i11 = i12;
            }
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, str.length());
        Intrinsics.checkNotNullExpressionValue(copyOf2, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x009d, code lost:
        if (((r16[r5] & 192) == 128) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0123, code lost:
        if (((r16[r5] & 192) == 128) == false) goto L41;
     */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String commonToUtf8String(@m8.g byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._Utf8Kt.commonToUtf8String(byte[], int, int):java.lang.String");
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = bArr.length;
        }
        return commonToUtf8String(bArr, i4, i10);
    }
}
