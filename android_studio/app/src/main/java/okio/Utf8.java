package okio;

import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.common.base.c;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.profilemeasurements.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Utf8.kt */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0007H\u0080\b\u001a4\u0010\u0010\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0017\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0018\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0019\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001a\u001a\u00020\u0016*\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001c\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a%\u0010\u001d\u001a\u00020\u001e*\u00020\u001b2\b\b\u0002\u0010\u0012\u001a\u00020\u00012\b\b\u0002\u0010\u0013\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u001f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"HIGH_SURROGATE_HEADER", "", "LOG_SURROGATE_HEADER", "MASK_2BYTES", "MASK_3BYTES", "MASK_4BYTES", "REPLACEMENT_BYTE", "", "REPLACEMENT_CHARACTER", "", "REPLACEMENT_CODE_POINT", "isIsoControl", "", "codePoint", "isUtf8Continuation", a.f83541m, "process2Utf8Bytes", "", "beginIndex", "endIndex", "yield", "Lkotlin/Function1;", "", "process3Utf8Bytes", "process4Utf8Bytes", "processUtf16Chars", "processUtf8Bytes", "", "processUtf8CodePoints", "utf8Size", "", f.f47745b, "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
@JvmName(name = "Utf8")
/* loaded from: classes4.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i4) {
        if (i4 >= 0 && i4 <= 31) {
            return true;
        }
        return 127 <= i4 && i4 <= 159;
    }

    public static final boolean isUtf8Continuation(byte b10) {
        return (b10 & 192) == 128;
    }

    public static final int process2Utf8Bytes(@g byte[] bArr, int i4, int i10, @g Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i11 = i4 + 1;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b10 = bArr[i4];
        byte b11 = bArr[i11];
        if (!((b11 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        int i12 = (b11 ^ 3968) ^ (b10 << 6);
        if (i12 < 128) {
            yield.invoke(valueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i12));
        return 2;
    }

    public static final int process3Utf8Bytes(@g byte[] bArr, int i4, int i10, @g Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i11 = i4 + 2;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            yield.invoke(valueOf);
            int i12 = i4 + 1;
            if (i10 > i12) {
                if ((bArr[i12] & 192) == 128) {
                    return 2;
                }
            }
            return 1;
        }
        byte b10 = bArr[i4];
        byte b11 = bArr[i4 + 1];
        if (!((b11 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b12 = bArr[i11];
        if (!((b12 & 192) == 128)) {
            yield.invoke(valueOf);
            return 2;
        }
        int i13 = ((b12 ^ (-123008)) ^ (b11 << 6)) ^ (b10 << c.f32107n);
        if (i13 < 2048) {
            yield.invoke(valueOf);
            return 3;
        }
        if (55296 <= i13 && i13 <= 57343) {
            r3 = true;
        }
        if (r3) {
            yield.invoke(valueOf);
            return 3;
        }
        yield.invoke(Integer.valueOf(i13));
        return 3;
    }

    public static final int process4Utf8Bytes(@g byte[] bArr, int i4, int i10, @g Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i11 = i4 + 3;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            yield.invoke(valueOf);
            int i12 = i4 + 1;
            if (i10 > i12) {
                if ((bArr[i12] & 192) == 128) {
                    int i13 = i4 + 2;
                    if (i10 > i13) {
                        if ((bArr[i13] & 192) == 128) {
                            return 3;
                        }
                    }
                    return 2;
                }
            }
            return 1;
        }
        byte b10 = bArr[i4];
        byte b11 = bArr[i4 + 1];
        if (!((b11 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b12 = bArr[i4 + 2];
        if (!((b12 & 192) == 128)) {
            yield.invoke(valueOf);
            return 2;
        }
        byte b13 = bArr[i11];
        if (!((b13 & 192) == 128)) {
            yield.invoke(valueOf);
            return 3;
        }
        int i14 = (((b13 ^ 3678080) ^ (b12 << 6)) ^ (b11 << c.f32107n)) ^ (b10 << c.f32114u);
        if (i14 > 1114111) {
            yield.invoke(valueOf);
            return 4;
        }
        if (55296 <= i14 && i14 <= 57343) {
            r4 = true;
        }
        if (r4) {
            yield.invoke(valueOf);
            return 4;
        } else if (i14 < 65536) {
            yield.invoke(valueOf);
            return 4;
        } else {
            yield.invoke(Integer.valueOf(i14));
            return 4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0098, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011d, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void processUtf16Chars(@m8.g byte[] r16, int r17, int r18, @m8.g kotlin.jvm.functions.Function1<? super java.lang.Character, kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf16Chars(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    public static final void processUtf8Bytes(@g String str, int i4, int i10, @g Function1<? super Byte, Unit> yield) {
        int i11;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        while (i4 < i10) {
            char charAt = str.charAt(i4);
            if (Intrinsics.compare((int) charAt, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) charAt));
                i4++;
                while (i4 < i10 && Intrinsics.compare((int) str.charAt(i4), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) str.charAt(i4)));
                    i4++;
                }
            } else {
                if (Intrinsics.compare((int) charAt, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((charAt >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((charAt & '?') | 128)));
                } else {
                    boolean z9 = false;
                    if (!(55296 <= charAt && charAt <= 57343)) {
                        yield.invoke(Byte.valueOf((byte) ((charAt >> '\f') | 224)));
                        yield.invoke(Byte.valueOf((byte) (((charAt >> 6) & 63) | 128)));
                        yield.invoke(Byte.valueOf((byte) ((charAt & '?') | 128)));
                    } else {
                        if (Intrinsics.compare((int) charAt, (int) com.fasterxml.jackson.core.base.a.f13768k) <= 0 && i10 > (i11 = i4 + 1)) {
                            char charAt2 = str.charAt(i11);
                            if (56320 <= charAt2 && charAt2 <= 57343) {
                                z9 = true;
                            }
                            if (z9) {
                                int charAt3 = ((charAt << '\n') + str.charAt(i11)) - 56613888;
                                yield.invoke(Byte.valueOf((byte) ((charAt3 >> 18) | a0.A)));
                                yield.invoke(Byte.valueOf((byte) (((charAt3 >> 12) & 63) | 128)));
                                yield.invoke(Byte.valueOf((byte) (((charAt3 >> 6) & 63) | 128)));
                                yield.invoke(Byte.valueOf((byte) ((charAt3 & 63) | 128)));
                                i4 += 2;
                            }
                        }
                        yield.invoke(Byte.valueOf((byte) REPLACEMENT_BYTE));
                    }
                }
                i4++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011b, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void processUtf8CodePoints(@m8.g byte[] r16, int r17, int r18, @m8.g kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf8CodePoints(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    @JvmOverloads
    @JvmName(name = f.f47745b)
    public static final long size(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    @JvmOverloads
    @JvmName(name = f.f47745b)
    public static final long size(@g String str, int i4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return size$default(str, i4, 0, 2, null);
    }

    @JvmOverloads
    @JvmName(name = f.f47745b)
    public static final long size(@g String str, int i4, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (i4 >= 0) {
            if (i10 >= i4) {
                if (!(i10 <= str.length())) {
                    throw new IllegalArgumentException(("endIndex > string.length: " + i10 + " > " + str.length()).toString());
                }
                long j4 = 0;
                while (i4 < i10) {
                    char charAt = str.charAt(i4);
                    if (charAt < 128) {
                        j4++;
                    } else {
                        if (charAt < 2048) {
                            i11 = 2;
                        } else if (charAt < 55296 || charAt > 57343) {
                            i11 = 3;
                        } else {
                            int i12 = i4 + 1;
                            char charAt2 = i12 < i10 ? str.charAt(i12) : (char) 0;
                            if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                                j4++;
                                i4 = i12;
                            } else {
                                j4 += 4;
                                i4 += 2;
                            }
                        }
                        j4 += i11;
                    }
                    i4++;
                }
                return j4;
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i10 + " < " + i4).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i4)).toString());
    }

    public static /* synthetic */ long size$default(String str, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return size(str, i4, i10);
    }
}
