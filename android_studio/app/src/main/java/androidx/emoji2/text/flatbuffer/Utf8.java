package androidx.emoji2.text.flatbuffer;

import com.google.android.exoplayer2.analytics.j1;
import com.google.common.base.c;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    /* loaded from: classes.dex */
    static class DecodeUtil {
        DecodeUtil() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleFourBytes(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i4) throws IllegalArgumentException {
            if (!isNotTrailingByte(b11) && (((b10 << c.F) + (b11 + 112)) >> 30) == 0 && !isNotTrailingByte(b12) && !isNotTrailingByte(b13)) {
                int trailingByteValue = ((b10 & 7) << 18) | (trailingByteValue(b11) << 12) | (trailingByteValue(b12) << 6) | trailingByteValue(b13);
                cArr[i4] = highSurrogate(trailingByteValue);
                cArr[i4 + 1] = lowSurrogate(trailingByteValue);
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleOneByte(byte b10, char[] cArr, int i4) {
            cArr[i4] = (char) b10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleThreeBytes(byte b10, byte b11, byte b12, char[] cArr, int i4) throws IllegalArgumentException {
            if (!isNotTrailingByte(b11) && ((b10 != -32 || b11 >= -96) && ((b10 != -19 || b11 < -96) && !isNotTrailingByte(b12)))) {
                cArr[i4] = (char) (((b10 & c.f32110q) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12));
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleTwoBytes(byte b10, byte b11, char[] cArr, int i4) throws IllegalArgumentException {
            if (b10 >= -62) {
                if (!isNotTrailingByte(b11)) {
                    cArr[i4] = (char) (((b10 & c.I) << 6) | trailingByteValue(b11));
                    return;
                }
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
        }

        private static char highSurrogate(int i4) {
            return (char) ((i4 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean isNotTrailingByte(byte b10) {
            return b10 > -65;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isOneByte(byte b10) {
            return b10 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isThreeBytes(byte b10) {
            return b10 < -16;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isTwoBytes(byte b10) {
            return b10 < -32;
        }

        private static char lowSurrogate(int i4) {
            return (char) ((i4 & j1.M) + 56320);
        }

        private static int trailingByteValue(byte b10) {
            return b10 & okio.Utf8.REPLACEMENT_BYTE;
        }
    }

    /* loaded from: classes.dex */
    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i4, int i10) {
            super("Unpaired surrogate at index " + i4 + " of " + i10);
        }
    }

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i4, int i10);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
