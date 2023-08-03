package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imagepipeline.producers.n;
import com.google.common.base.c;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;
import okio.Buffer;
import okio.ByteString;
import okio._Base64Kt;
import okio._JvmPlatformKt;
import okio._UtilKt;

/* compiled from: -ByteString.kt */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tH\u0080\b\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\r\u0010\u0013\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\u0015\u0010\u0014\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH\u0080\b\u001a-\u0010\u0016\u001a\u00020\u0017*\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\u000f\u0010\u001c\u001a\u0004\u0018\u00010\f*\u00020\u0012H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\f*\u00020\u0012H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\f*\u00020\u0012H\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\f2\u0006\u0010!\u001a\u00020\tH\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0080\b\u001a\u0017\u0010\"\u001a\u00020 *\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010#H\u0080\b\u001a\u0015\u0010$\u001a\u00020%*\u00020\f2\u0006\u0010&\u001a\u00020\u0007H\u0080\b\u001a\r\u0010'\u001a\u00020\u0007*\u00020\fH\u0080\b\u001a\r\u0010(\u001a\u00020\u0007*\u00020\fH\u0080\b\u001a\r\u0010)\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\u001d\u0010*\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a\r\u0010,\u001a\u00020\t*\u00020\fH\u0080\b\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a-\u0010.\u001a\u00020 *\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a-\u0010.\u001a\u00020 *\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\u0015\u00100\u001a\u00020 *\u00020\f2\u0006\u00101\u001a\u00020\tH\u0080\b\u001a\u0015\u00100\u001a\u00020 *\u00020\f2\u0006\u00101\u001a\u00020\fH\u0080\b\u001a\u001d\u00102\u001a\u00020\f*\u00020\f2\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0080\b\u001a\r\u00105\u001a\u00020\f*\u00020\fH\u0080\b\u001a\r\u00106\u001a\u00020\f*\u00020\fH\u0080\b\u001a\r\u00107\u001a\u00020\t*\u00020\fH\u0080\b\u001a\u001d\u00108\u001a\u00020\f*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\r\u00109\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\r\u0010:\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a$\u0010;\u001a\u00020\u0017*\u00020\f2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005¨\u0006>"}, d2 = {"HEX_DIGIT_CHARS", "", "getHEX_DIGIT_CHARS$annotations", "()V", "getHEX_DIGIT_CHARS", "()[C", "codePointIndexToCharIndex", "", "s", "", "codePointCount", "commonOf", "Lokio/ByteString;", "data", "decodeHexDigit", "c", "", "commonBase64", "", "commonBase64Url", "commonCompareTo", "other", "commonCopyInto", "", TypedValues.Cycle.S_WAVE_OFFSET, TypedValues.Attributes.S_TARGET, "targetOffset", n.f13105s, "commonDecodeBase64", "commonDecodeHex", "commonEncodeUtf8", "commonEndsWith", "", "suffix", "commonEquals", "", "commonGetByte", "", "pos", "commonGetSize", "commonHashCode", "commonHex", "commonIndexOf", "fromIndex", "commonInternalArray", "commonLastIndexOf", "commonRangeEquals", "otherOffset", "commonStartsWith", "prefix", "commonSubstring", "beginIndex", "endIndex", "commonToAsciiLowercase", "commonToAsciiUppercase", "commonToByteArray", "commonToByteString", "commonToString", "commonUtf8", "commonWrite", "buffer", "Lokio/Buffer;", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class _ByteStringKt {
    @g
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Removed duplicated region for block: B:553:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:556:0x007c A[EDGE_INSN: B:556:0x007c->B:350:0x007c ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:578:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:583:0x0205 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int codePointIndexToCharIndex(byte[] r19, int r20) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._ByteStringKt.codePointIndexToCharIndex(byte[], int):int");
    }

    @g
    public static final String commonBase64(@g ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return _Base64Kt.encodeBase64$default(byteString.getData$okio(), null, 1, null);
    }

    @g
    public static final String commonBase64Url(@g ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return _Base64Kt.encodeBase64(byteString.getData$okio(), _Base64Kt.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(@g ByteString byteString, @g ByteString other) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = byteString.size();
        int size2 = other.size();
        int min = Math.min(size, size2);
        for (int i4 = 0; i4 < min; i4++) {
            int i10 = byteString.getByte(i4) & 255;
            int i11 = other.getByte(i4) & 255;
            if (i10 != i11) {
                return i10 < i11 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final void commonCopyInto(@g ByteString byteString, int i4, @g byte[] target, int i10, int i11) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        ArraysKt___ArraysJvmKt.copyInto(byteString.getData$okio(), target, i10, i4, i11 + i4);
    }

    @h
    public static final ByteString commonDecodeBase64(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] decodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
        if (decodeBase64ToArray != null) {
            return new ByteString(decodeBase64ToArray);
        }
        return null;
    }

    @g
    public static final ByteString commonDecodeHex(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i4 = 0;
        if (str.length() % 2 == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            int i10 = length - 1;
            if (i10 >= 0) {
                while (true) {
                    int i11 = i4 + 1;
                    int i12 = i4 * 2;
                    bArr[i4] = (byte) ((decodeHexDigit(str.charAt(i12)) << 4) + decodeHexDigit(str.charAt(i12 + 1)));
                    if (i11 > i10) {
                        break;
                    }
                    i4 = i11;
                }
            }
            return new ByteString(bArr);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected hex string: ", str).toString());
    }

    @g
    public static final ByteString commonEncodeUtf8(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final boolean commonEndsWith(@g ByteString byteString, @g ByteString suffix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.size(), suffix, 0, suffix.size());
    }

    public static final boolean commonEquals(@g ByteString byteString, @h Object obj) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString2 = (ByteString) obj;
            if (byteString2.size() == byteString.getData$okio().length && byteString2.rangeEquals(0, byteString.getData$okio(), 0, byteString.getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(@g ByteString byteString, int i4) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.getData$okio()[i4];
    }

    public static final int commonGetSize(@g ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.getData$okio().length;
    }

    public static final int commonHashCode(@g ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        int hashCode$okio = byteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int hashCode = Arrays.hashCode(byteString.getData$okio());
        byteString.setHashCode$okio(hashCode);
        return hashCode;
    }

    @g
    public static final String commonHex(@g ByteString byteString) {
        String concatToString;
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        char[] cArr = new char[byteString.getData$okio().length * 2];
        byte[] data$okio = byteString.getData$okio();
        int length = data$okio.length;
        int i4 = 0;
        int i10 = 0;
        while (i4 < length) {
            byte b10 = data$okio[i4];
            i4++;
            int i11 = i10 + 1;
            cArr[i10] = getHEX_DIGIT_CHARS()[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = getHEX_DIGIT_CHARS()[b10 & c.f32110q];
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr);
        return concatToString;
    }

    public static final int commonIndexOf(@g ByteString byteString, @g byte[] other, int i4) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int length = byteString.getData$okio().length - other.length;
        int max = Math.max(i4, 0);
        if (max > length) {
            return -1;
        }
        while (true) {
            int i10 = max + 1;
            if (_UtilKt.arrayRangeEquals(byteString.getData$okio(), max, other, 0, other.length)) {
                return max;
            }
            if (max == length) {
                return -1;
            }
            max = i10;
        }
    }

    @g
    public static final byte[] commonInternalArray(@g ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.getData$okio();
    }

    public static final int commonLastIndexOf(@g ByteString byteString, @g ByteString other, int i4) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return byteString.lastIndexOf(other.internalArray$okio(), i4);
    }

    @g
    public static final ByteString commonOf(@g byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] copyOf = Arrays.copyOf(data, data.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new ByteString(copyOf);
    }

    public static final boolean commonRangeEquals(@g ByteString byteString, int i4, @g ByteString other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return other.rangeEquals(i10, byteString.getData$okio(), i4, i11);
    }

    public static final boolean commonStartsWith(@g ByteString byteString, @g ByteString prefix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.size());
    }

    @g
    public static final ByteString commonSubstring(@g ByteString byteString, int i4, int i10) {
        byte[] copyOfRange;
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        int resolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString, i10);
        if (i4 >= 0) {
            if (!(resolveDefaultParameter <= byteString.getData$okio().length)) {
                throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
            }
            if (resolveDefaultParameter - i4 >= 0) {
                if (i4 == 0 && resolveDefaultParameter == byteString.getData$okio().length) {
                    return byteString;
                }
                copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(byteString.getData$okio(), i4, resolveDefaultParameter);
                return new ByteString(copyOfRange);
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        throw new IllegalArgumentException("beginIndex < 0".toString());
    }

    @g
    public static final ByteString commonToAsciiLowercase(@g ByteString byteString) {
        byte b10;
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        for (int i4 = 0; i4 < byteString.getData$okio().length; i4++) {
            byte b11 = byteString.getData$okio()[i4];
            byte b12 = (byte) 65;
            if (b11 >= b12 && b11 <= (b10 = (byte) 90)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i4] = (byte) (b11 + 32);
                for (int i10 = i4 + 1; i10 < copyOf.length; i10++) {
                    byte b13 = copyOf[i10];
                    if (b13 >= b12 && b13 <= b10) {
                        copyOf[i10] = (byte) (b13 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return byteString;
    }

    @g
    public static final ByteString commonToAsciiUppercase(@g ByteString byteString) {
        byte b10;
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        for (int i4 = 0; i4 < byteString.getData$okio().length; i4++) {
            byte b11 = byteString.getData$okio()[i4];
            byte b12 = (byte) 97;
            if (b11 >= b12 && b11 <= (b10 = (byte) 122)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i4] = (byte) (b11 - 32);
                for (int i10 = i4 + 1; i10 < copyOf.length; i10++) {
                    byte b13 = copyOf[i10];
                    if (b13 >= b12 && b13 <= b10) {
                        copyOf[i10] = (byte) (b13 - 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return byteString;
    }

    @g
    public static final byte[] commonToByteArray(@g ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        byte[] data$okio = byteString.getData$okio();
        byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    @g
    public static final ByteString commonToByteString(@g byte[] bArr, int i4, int i10) {
        byte[] copyOfRange;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        _UtilKt.checkOffsetAndCount(bArr.length, i4, i10);
        copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(bArr, i4, i10 + i4);
        return new ByteString(copyOfRange);
    }

    @g
    public static final String commonToString(@g ByteString byteString) {
        String replace$default;
        String replace$default2;
        String replace$default3;
        byte[] copyOfRange;
        ByteString byteString2 = byteString;
        Intrinsics.checkNotNullParameter(byteString2, "<this>");
        if (byteString.getData$okio().length == 0) {
            return "[size=0]";
        }
        int codePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData$okio(), 64);
        if (codePointIndexToCharIndex == -1) {
            if (byteString.getData$okio().length <= 64) {
                return "[hex=" + byteString.hex() + ']';
            }
            StringBuilder sb = new StringBuilder();
            sb.append("[size=");
            sb.append(byteString.getData$okio().length);
            sb.append(" hex=");
            int resolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString2, 64);
            if (!(resolveDefaultParameter <= byteString.getData$okio().length)) {
                throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
            }
            if (resolveDefaultParameter + 0 >= 0) {
                if (resolveDefaultParameter != byteString.getData$okio().length) {
                    copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(byteString.getData$okio(), 0, resolveDefaultParameter);
                    byteString2 = new ByteString(copyOfRange);
                }
                sb.append(byteString2.hex());
                sb.append("…]");
                return sb.toString();
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        String utf8 = byteString.utf8();
        Objects.requireNonNull(utf8, "null cannot be cast to non-null type java.lang.String");
        String substring = utf8.substring(0, codePointIndexToCharIndex);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        replace$default = StringsKt__StringsJVMKt.replace$default(substring, "\\", "\\\\", false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "\n", "\\n", false, 4, (Object) null);
        replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, "\r", "\\r", false, 4, (Object) null);
        if (codePointIndexToCharIndex < utf8.length()) {
            return "[size=" + byteString.getData$okio().length + " text=" + replace$default3 + "…]";
        }
        return "[text=" + replace$default3 + ']';
    }

    @g
    public static final String commonUtf8(@g ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        String utf8$okio = byteString.getUtf8$okio();
        if (utf8$okio == null) {
            String utf8String = _JvmPlatformKt.toUtf8String(byteString.internalArray$okio());
            byteString.setUtf8$okio(utf8String);
            return utf8String;
        }
        return utf8$okio;
    }

    public static final void commonWrite(@g ByteString byteString, @g Buffer buffer, int i4, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i4, i10);
    }

    public static final int decodeHexDigit(char c10) {
        boolean z9 = true;
        if ('0' <= c10 && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (!('a' <= c10 && c10 <= 'f')) {
            c11 = 'A';
            if (!(('A' > c10 || c10 > 'F') ? false : false)) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected hex digit: ", Character.valueOf(c10)));
            }
        }
        return (c10 - c11) + 10;
    }

    @g
    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static /* synthetic */ void getHEX_DIGIT_CHARS$annotations() {
    }

    public static final boolean commonEndsWith(@g ByteString byteString, @g byte[] suffix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.length, suffix, 0, suffix.length);
    }

    public static final int commonLastIndexOf(@g ByteString byteString, @g byte[] other, int i4) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(_UtilKt.resolveDefaultParameter(byteString, i4), byteString.getData$okio().length - other.length);
        if (min < 0) {
            return -1;
        }
        while (true) {
            int i10 = min - 1;
            if (_UtilKt.arrayRangeEquals(byteString.getData$okio(), min, other, 0, other.length)) {
                return min;
            }
            if (i10 < 0) {
                return -1;
            }
            min = i10;
        }
    }

    public static final boolean commonRangeEquals(@g ByteString byteString, int i4, @g byte[] other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return i4 >= 0 && i4 <= byteString.getData$okio().length - i11 && i10 >= 0 && i10 <= other.length - i11 && _UtilKt.arrayRangeEquals(byteString.getData$okio(), i4, other, i10, i11);
    }

    public static final boolean commonStartsWith(@g ByteString byteString, @g byte[] prefix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.length);
    }
}
