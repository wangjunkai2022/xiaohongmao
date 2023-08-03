package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imagepipeline.producers.n;
import com.google.common.base.c;
import com.qennnsad.aknkaksd.data.repository.f;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import okio.Buffer;
import okio.internal._ByteStringKt;

/* compiled from: -Util.kt */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a0\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u001a \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015H\u0000\u001a\u0019\u0010\u0017\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0015H\u0080\b\u001a\u0019\u0010\u0017\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0000\u001a\u0015\u0010\u001a\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010\u001a\u001a\u00020\u0015*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0015H\u0080\f\u001a\u0015\u0010\u001a\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0015H\u0080\f\u001a\u0015\u0010\u001d\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0080\f\u001a\u0014\u0010\u0018\u001a\u00020\u0001*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0000\u001a\f\u0010!\u001a\u00020\u0001*\u00020\u0001H\u0000\u001a\f\u0010!\u001a\u00020\u0015*\u00020\u0015H\u0000\u001a\f\u0010!\u001a\u00020\"*\u00020\"H\u0000\u001a\u0015\u0010#\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010$\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010%\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\f\u0010&\u001a\u00020'*\u00020\u001bH\u0000\u001a\f\u0010&\u001a\u00020'*\u00020\u0001H\u0000\u001a\f\u0010&\u001a\u00020'*\u00020\u0015H\u0000\u001a\u0015\u0010(\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0080\f\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001c\u0010\u0004\u001a\u00020\u00058\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006)"}, d2 = {"DEFAULT__ByteString_size", "", "getDEFAULT__ByteString_size", "()I", "DEFAULT__new_UnsafeCursor", "Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor$annotations", "()V", "getDEFAULT__new_UnsafeCursor", "()Lokio/Buffer$UnsafeCursor;", "arrayRangeEquals", "", "a", "", "aOffset", "b", "bOffset", n.f13105s, "checkOffsetAndCount", "", f.f47745b, "", TypedValues.Cycle.S_WAVE_OFFSET, "minOf", "resolveDefaultParameter", "unsafeCursor", "and", "", "other", "leftRotate", "bitCount", "Lokio/ByteString;", "position", "reverseBytes", "", "rightRotate", "shl", "shr", "toHexString", "", "xor", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class _UtilKt {
    @g
    private static final Buffer.UnsafeCursor DEFAULT__new_UnsafeCursor = new Buffer.UnsafeCursor();
    private static final int DEFAULT__ByteString_size = -1234567890;

    public static final int and(byte b10, int i4) {
        return b10 & i4;
    }

    public static final long and(byte b10, long j4) {
        return b10 & j4;
    }

    public static final long and(int i4, long j4) {
        return i4 & j4;
    }

    public static final boolean arrayRangeEquals(@g byte[] a10, int i4, @g byte[] b10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        if (i11 <= 0) {
            return true;
        }
        int i12 = 0;
        while (true) {
            int i13 = i12 + 1;
            if (a10[i12 + i4] != b10[i12 + i10]) {
                return false;
            }
            if (i13 >= i11) {
                return true;
            }
            i12 = i13;
        }
    }

    public static final void checkOffsetAndCount(long j4, long j10, long j11) {
        if ((j10 | j11) < 0 || j10 > j4 || j4 - j10 < j11) {
            throw new ArrayIndexOutOfBoundsException("size=" + j4 + " offset=" + j10 + " byteCount=" + j11);
        }
    }

    public static final int getDEFAULT__ByteString_size() {
        return DEFAULT__ByteString_size;
    }

    @g
    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return DEFAULT__new_UnsafeCursor;
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }

    public static final int leftRotate(int i4, int i10) {
        return (i4 >>> (32 - i10)) | (i4 << i10);
    }

    public static final long minOf(long j4, int i4) {
        return Math.min(j4, i4);
    }

    @g
    public static final Buffer.UnsafeCursor resolveDefaultParameter(@g Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return unsafeCursor == DEFAULT__new_UnsafeCursor ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i4) {
        return ((i4 & 255) << 24) | (((-16777216) & i4) >>> 24) | ((16711680 & i4) >>> 8) | ((65280 & i4) << 8);
    }

    public static final long reverseBytes(long j4) {
        return ((j4 & 255) << 56) | (((-72057594037927936L) & j4) >>> 56) | ((71776119061217280L & j4) >>> 40) | ((280375465082880L & j4) >>> 24) | ((1095216660480L & j4) >>> 8) | ((4278190080L & j4) << 8) | ((16711680 & j4) << 24) | ((65280 & j4) << 40);
    }

    public static final short reverseBytes(short s9) {
        int i4 = s9 & UShort.MAX_VALUE;
        return (short) (((i4 & 255) << 8) | ((65280 & i4) >>> 8));
    }

    public static final long rightRotate(long j4, int i4) {
        return (j4 << (64 - i4)) | (j4 >>> i4);
    }

    public static final int shl(byte b10, int i4) {
        return b10 << i4;
    }

    public static final int shr(byte b10, int i4) {
        return b10 >> i4;
    }

    @g
    public static final String toHexString(byte b10) {
        String concatToString;
        concatToString = StringsKt__StringsJVMKt.concatToString(new char[]{_ByteStringKt.getHEX_DIGIT_CHARS()[(b10 >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[b10 & c.f32110q]});
        return concatToString;
    }

    public static final byte xor(byte b10, byte b11) {
        return (byte) (b10 ^ b11);
    }

    public static final long minOf(int i4, long j4) {
        return Math.min(i4, j4);
    }

    public static final int resolveDefaultParameter(@g ByteString byteString, int i4) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return i4 == DEFAULT__ByteString_size ? byteString.size() : i4;
    }

    @g
    public static final String toHexString(int i4) {
        String concatToString;
        if (i4 == 0) {
            return "0";
        }
        int i10 = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(i4 >> 28) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i4 >> 24) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i4 >> 20) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i4 >> 16) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i4 >> 12) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i4 >> 8) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i4 >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[i4 & 15]};
        while (i10 < 8 && cArr[i10] == '0') {
            i10++;
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr, i10, 8);
        return concatToString;
    }

    @g
    public static final String toHexString(long j4) {
        String concatToString;
        if (j4 == 0) {
            return "0";
        }
        int i4 = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 60) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 56) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 52) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 48) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 44) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 40) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 36) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 32) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 28) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 24) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 20) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 16) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 12) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 8) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j4 >> 4) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) (j4 & 15)]};
        while (i4 < 16 && cArr[i4] == '0') {
            i4++;
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr, i4, 16);
        return concatToString;
    }
}
