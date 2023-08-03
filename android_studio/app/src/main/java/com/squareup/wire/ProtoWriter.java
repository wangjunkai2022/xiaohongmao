package com.squareup.wire;

import java.io.IOException;
import okio.BufferedSink;
import okio.ByteString;

/* loaded from: classes3.dex */
public final class ProtoWriter {
    private final BufferedSink sink;

    public ProtoWriter(BufferedSink bufferedSink) {
        this.sink = bufferedSink;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeZigZag32(int i4) {
        return (-(i4 & 1)) ^ (i4 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long decodeZigZag64(long j4) {
        return (-(j4 & 1)) ^ (j4 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int encodeZigZag32(int i4) {
        return (i4 >> 31) ^ (i4 << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long encodeZigZag64(long j4) {
        return (j4 >> 63) ^ (j4 << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int int32Size(int i4) {
        if (i4 >= 0) {
            return varint32Size(i4);
        }
        return 10;
    }

    private static int makeTag(int i4, FieldEncoding fieldEncoding) {
        return (i4 << 3) | fieldEncoding.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int tagSize(int i4) {
        return varint32Size(makeTag(i4, FieldEncoding.VARINT));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int utf8Length(String str) {
        int i4;
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt >= 128) {
                if (charAt < 2048) {
                    i11 += 2;
                } else if (charAt < 55296 || charAt > 57343) {
                    i11 += 3;
                } else if (charAt <= 56319 && (i4 = i10 + 1) < length && str.charAt(i4) >= 56320 && str.charAt(i4) <= 57343) {
                    i11 += 4;
                    i10 = i4;
                }
                i10++;
            }
            i11++;
            i10++;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int varint32Size(int i4) {
        if ((i4 & (-128)) == 0) {
            return 1;
        }
        if ((i4 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i4) == 0) {
            return 3;
        }
        return (i4 & (-268435456)) == 0 ? 4 : 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int varint64Size(long j4) {
        if (((-128) & j4) == 0) {
            return 1;
        }
        if (((-16384) & j4) == 0) {
            return 2;
        }
        if (((-2097152) & j4) == 0) {
            return 3;
        }
        if (((-268435456) & j4) == 0) {
            return 4;
        }
        if (((-34359738368L) & j4) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j4) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j4) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j4) == 0) {
            return 8;
        }
        return (j4 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public void writeBytes(ByteString byteString) throws IOException {
        this.sink.write(byteString);
    }

    public void writeFixed32(int i4) throws IOException {
        this.sink.writeIntLe(i4);
    }

    public void writeFixed64(long j4) throws IOException {
        this.sink.writeLongLe(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSignedVarint32(int i4) throws IOException {
        if (i4 >= 0) {
            writeVarint32(i4);
        } else {
            writeVarint64(i4);
        }
    }

    public void writeString(String str) throws IOException {
        this.sink.writeUtf8(str);
    }

    public void writeTag(int i4, FieldEncoding fieldEncoding) throws IOException {
        writeVarint32(makeTag(i4, fieldEncoding));
    }

    public void writeVarint32(int i4) throws IOException {
        while ((i4 & (-128)) != 0) {
            this.sink.writeByte((i4 & 127) | 128);
            i4 >>>= 7;
        }
        this.sink.writeByte(i4);
    }

    public void writeVarint64(long j4) throws IOException {
        while (((-128) & j4) != 0) {
            this.sink.writeByte((((int) j4) & 127) | 128);
            j4 >>>= 7;
        }
        this.sink.writeByte((int) j4);
    }
}
