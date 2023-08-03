package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* loaded from: classes4.dex */
public final class CodedOutputStream {
    private final byte[] buffer;
    private final int limit;
    private final OutputStream output;
    private int totalBytesWritten = 0;
    private int position = 0;

    /* loaded from: classes4.dex */
    public static class OutOfSpaceException extends IOException {
        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.output = outputStream;
        this.buffer = bArr;
        this.limit = bArr.length;
    }

    public static int computeBoolSize(int i4, boolean z9) {
        return computeTagSize(i4) + computeBoolSizeNoTag(z9);
    }

    public static int computeBoolSizeNoTag(boolean z9) {
        return 1;
    }

    public static int computeByteArraySizeNoTag(byte[] bArr) {
        return computeRawVarint32Size(bArr.length) + bArr.length;
    }

    public static int computeBytesSize(int i4, ByteString byteString) {
        return computeTagSize(i4) + computeBytesSizeNoTag(byteString);
    }

    public static int computeBytesSizeNoTag(ByteString byteString) {
        return computeRawVarint32Size(byteString.size()) + byteString.size();
    }

    public static int computeDoubleSize(int i4, double d4) {
        return computeTagSize(i4) + computeDoubleSizeNoTag(d4);
    }

    public static int computeDoubleSizeNoTag(double d4) {
        return 8;
    }

    public static int computeEnumSize(int i4, int i10) {
        return computeTagSize(i4) + computeEnumSizeNoTag(i10);
    }

    public static int computeEnumSizeNoTag(int i4) {
        return computeInt32SizeNoTag(i4);
    }

    public static int computeFixed32SizeNoTag(int i4) {
        return 4;
    }

    public static int computeFixed64SizeNoTag(long j4) {
        return 8;
    }

    public static int computeFloatSize(int i4, float f10) {
        return computeTagSize(i4) + computeFloatSizeNoTag(f10);
    }

    public static int computeFloatSizeNoTag(float f10) {
        return 4;
    }

    public static int computeGroupSizeNoTag(MessageLite messageLite) {
        return messageLite.getSerializedSize();
    }

    public static int computeInt32Size(int i4, int i10) {
        return computeTagSize(i4) + computeInt32SizeNoTag(i10);
    }

    public static int computeInt32SizeNoTag(int i4) {
        if (i4 >= 0) {
            return computeRawVarint32Size(i4);
        }
        return 10;
    }

    public static int computeInt64SizeNoTag(long j4) {
        return computeRawVarint64Size(j4);
    }

    public static int computeLazyFieldSizeNoTag(LazyFieldLite lazyFieldLite) {
        int serializedSize = lazyFieldLite.getSerializedSize();
        return computeRawVarint32Size(serializedSize) + serializedSize;
    }

    public static int computeMessageSize(int i4, MessageLite messageLite) {
        return computeTagSize(i4) + computeMessageSizeNoTag(messageLite);
    }

    public static int computeMessageSizeNoTag(MessageLite messageLite) {
        int serializedSize = messageLite.getSerializedSize();
        return computeRawVarint32Size(serializedSize) + serializedSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computePreferredBufferSize(int i4) {
        if (i4 > 4096) {
            return 4096;
        }
        return i4;
    }

    public static int computeRawVarint32Size(int i4) {
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

    public static int computeRawVarint64Size(long j4) {
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

    public static int computeSFixed32SizeNoTag(int i4) {
        return 4;
    }

    public static int computeSFixed64SizeNoTag(long j4) {
        return 8;
    }

    public static int computeSInt32SizeNoTag(int i4) {
        return computeRawVarint32Size(encodeZigZag32(i4));
    }

    public static int computeSInt64Size(int i4, long j4) {
        return computeTagSize(i4) + computeSInt64SizeNoTag(j4);
    }

    public static int computeSInt64SizeNoTag(long j4) {
        return computeRawVarint64Size(encodeZigZag64(j4));
    }

    public static int computeStringSizeNoTag(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return computeRawVarint32Size(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("UTF-8 not supported.", e4);
        }
    }

    public static int computeTagSize(int i4) {
        return computeRawVarint32Size(WireFormat.makeTag(i4, 0));
    }

    public static int computeUInt32SizeNoTag(int i4) {
        return computeRawVarint32Size(i4);
    }

    public static int computeUInt64SizeNoTag(long j4) {
        return computeRawVarint64Size(j4);
    }

    public static int encodeZigZag32(int i4) {
        return (i4 >> 31) ^ (i4 << 1);
    }

    public static long encodeZigZag64(long j4) {
        return (j4 >> 63) ^ (j4 << 1);
    }

    public static CodedOutputStream newInstance(OutputStream outputStream, int i4) {
        return new CodedOutputStream(outputStream, new byte[i4]);
    }

    private void refreshBuffer() throws IOException {
        OutputStream outputStream = this.output;
        if (outputStream != null) {
            outputStream.write(this.buffer, 0, this.position);
            this.position = 0;
            return;
        }
        throw new OutOfSpaceException();
    }

    public void flush() throws IOException {
        if (this.output != null) {
            refreshBuffer();
        }
    }

    public void writeBool(int i4, boolean z9) throws IOException {
        writeTag(i4, 0);
        writeBoolNoTag(z9);
    }

    public void writeBoolNoTag(boolean z9) throws IOException {
        writeRawByte(z9 ? 1 : 0);
    }

    public void writeByteArrayNoTag(byte[] bArr) throws IOException {
        writeRawVarint32(bArr.length);
        writeRawBytes(bArr);
    }

    public void writeBytes(int i4, ByteString byteString) throws IOException {
        writeTag(i4, 2);
        writeBytesNoTag(byteString);
    }

    public void writeBytesNoTag(ByteString byteString) throws IOException {
        writeRawVarint32(byteString.size());
        writeRawBytes(byteString);
    }

    public void writeDouble(int i4, double d4) throws IOException {
        writeTag(i4, 1);
        writeDoubleNoTag(d4);
    }

    public void writeDoubleNoTag(double d4) throws IOException {
        writeRawLittleEndian64(Double.doubleToRawLongBits(d4));
    }

    public void writeEnum(int i4, int i10) throws IOException {
        writeTag(i4, 0);
        writeEnumNoTag(i10);
    }

    public void writeEnumNoTag(int i4) throws IOException {
        writeInt32NoTag(i4);
    }

    public void writeFixed32NoTag(int i4) throws IOException {
        writeRawLittleEndian32(i4);
    }

    public void writeFixed64NoTag(long j4) throws IOException {
        writeRawLittleEndian64(j4);
    }

    public void writeFloat(int i4, float f10) throws IOException {
        writeTag(i4, 5);
        writeFloatNoTag(f10);
    }

    public void writeFloatNoTag(float f10) throws IOException {
        writeRawLittleEndian32(Float.floatToRawIntBits(f10));
    }

    public void writeGroup(int i4, MessageLite messageLite) throws IOException {
        writeTag(i4, 3);
        writeGroupNoTag(messageLite);
        writeTag(i4, 4);
    }

    public void writeGroupNoTag(MessageLite messageLite) throws IOException {
        messageLite.writeTo(this);
    }

    public void writeInt32(int i4, int i10) throws IOException {
        writeTag(i4, 0);
        writeInt32NoTag(i10);
    }

    public void writeInt32NoTag(int i4) throws IOException {
        if (i4 >= 0) {
            writeRawVarint32(i4);
        } else {
            writeRawVarint64(i4);
        }
    }

    public void writeInt64NoTag(long j4) throws IOException {
        writeRawVarint64(j4);
    }

    public void writeMessage(int i4, MessageLite messageLite) throws IOException {
        writeTag(i4, 2);
        writeMessageNoTag(messageLite);
    }

    public void writeMessageNoTag(MessageLite messageLite) throws IOException {
        writeRawVarint32(messageLite.getSerializedSize());
        messageLite.writeTo(this);
    }

    public void writeMessageSetExtension(int i4, MessageLite messageLite) throws IOException {
        writeTag(1, 3);
        writeUInt32(2, i4);
        writeMessage(3, messageLite);
        writeTag(1, 4);
    }

    public void writeRawByte(byte b10) throws IOException {
        if (this.position == this.limit) {
            refreshBuffer();
        }
        byte[] bArr = this.buffer;
        int i4 = this.position;
        this.position = i4 + 1;
        bArr[i4] = b10;
        this.totalBytesWritten++;
    }

    public void writeRawBytes(ByteString byteString) throws IOException {
        writeRawBytes(byteString, 0, byteString.size());
    }

    public void writeRawLittleEndian32(int i4) throws IOException {
        writeRawByte(i4 & 255);
        writeRawByte((i4 >> 8) & 255);
        writeRawByte((i4 >> 16) & 255);
        writeRawByte((i4 >> 24) & 255);
    }

    public void writeRawLittleEndian64(long j4) throws IOException {
        writeRawByte(((int) j4) & 255);
        writeRawByte(((int) (j4 >> 8)) & 255);
        writeRawByte(((int) (j4 >> 16)) & 255);
        writeRawByte(((int) (j4 >> 24)) & 255);
        writeRawByte(((int) (j4 >> 32)) & 255);
        writeRawByte(((int) (j4 >> 40)) & 255);
        writeRawByte(((int) (j4 >> 48)) & 255);
        writeRawByte(((int) (j4 >> 56)) & 255);
    }

    public void writeRawVarint32(int i4) throws IOException {
        while ((i4 & (-128)) != 0) {
            writeRawByte((i4 & 127) | 128);
            i4 >>>= 7;
        }
        writeRawByte(i4);
    }

    public void writeRawVarint64(long j4) throws IOException {
        while (((-128) & j4) != 0) {
            writeRawByte((((int) j4) & 127) | 128);
            j4 >>>= 7;
        }
        writeRawByte((int) j4);
    }

    public void writeSFixed32NoTag(int i4) throws IOException {
        writeRawLittleEndian32(i4);
    }

    public void writeSFixed64NoTag(long j4) throws IOException {
        writeRawLittleEndian64(j4);
    }

    public void writeSInt32NoTag(int i4) throws IOException {
        writeRawVarint32(encodeZigZag32(i4));
    }

    public void writeSInt64(int i4, long j4) throws IOException {
        writeTag(i4, 0);
        writeSInt64NoTag(j4);
    }

    public void writeSInt64NoTag(long j4) throws IOException {
        writeRawVarint64(encodeZigZag64(j4));
    }

    public void writeStringNoTag(String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        writeRawVarint32(bytes.length);
        writeRawBytes(bytes);
    }

    public void writeTag(int i4, int i10) throws IOException {
        writeRawVarint32(WireFormat.makeTag(i4, i10));
    }

    public void writeUInt32(int i4, int i10) throws IOException {
        writeTag(i4, 0);
        writeUInt32NoTag(i10);
    }

    public void writeUInt32NoTag(int i4) throws IOException {
        writeRawVarint32(i4);
    }

    public void writeUInt64NoTag(long j4) throws IOException {
        writeRawVarint64(j4);
    }

    public void writeRawBytes(byte[] bArr) throws IOException {
        writeRawBytes(bArr, 0, bArr.length);
    }

    public void writeRawBytes(byte[] bArr, int i4, int i10) throws IOException {
        int i11 = this.limit;
        int i12 = this.position;
        if (i11 - i12 >= i10) {
            System.arraycopy(bArr, i4, this.buffer, i12, i10);
            this.position += i10;
            this.totalBytesWritten += i10;
            return;
        }
        int i13 = i11 - i12;
        System.arraycopy(bArr, i4, this.buffer, i12, i13);
        int i14 = i4 + i13;
        int i15 = i10 - i13;
        this.position = this.limit;
        this.totalBytesWritten += i13;
        refreshBuffer();
        if (i15 <= this.limit) {
            System.arraycopy(bArr, i14, this.buffer, 0, i15);
            this.position = i15;
        } else {
            this.output.write(bArr, i14, i15);
        }
        this.totalBytesWritten += i15;
    }

    public void writeRawByte(int i4) throws IOException {
        writeRawByte((byte) i4);
    }

    public void writeRawBytes(ByteString byteString, int i4, int i10) throws IOException {
        int i11 = this.limit;
        int i12 = this.position;
        if (i11 - i12 >= i10) {
            byteString.copyTo(this.buffer, i4, i12, i10);
            this.position += i10;
            this.totalBytesWritten += i10;
            return;
        }
        int i13 = i11 - i12;
        byteString.copyTo(this.buffer, i4, i12, i13);
        int i14 = i4 + i13;
        int i15 = i10 - i13;
        this.position = this.limit;
        this.totalBytesWritten += i13;
        refreshBuffer();
        if (i15 <= this.limit) {
            byteString.copyTo(this.buffer, i14, 0, i15);
            this.position = i15;
        } else {
            byteString.writeTo(this.output, i14, i15);
        }
        this.totalBytesWritten += i15;
    }
}
