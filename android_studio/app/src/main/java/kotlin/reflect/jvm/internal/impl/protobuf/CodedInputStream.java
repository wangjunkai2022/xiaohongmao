package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;

/* loaded from: classes4.dex */
public final class CodedInputStream {
    private final byte[] buffer;
    private final boolean bufferIsImmutable;
    private int bufferPos;
    private int bufferSize;
    private int bufferSizeAfterLimit;
    private int currentLimit;
    private boolean enableAliasing;
    private final InputStream input;
    private int lastTag;
    private int recursionDepth;
    private int recursionLimit;
    private RefillCallback refillCallback;
    private int sizeLimit;
    private int totalBytesRetired;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public interface RefillCallback {
        void onRefill();
    }

    private CodedInputStream(InputStream inputStream) {
        this.enableAliasing = false;
        this.currentLimit = Integer.MAX_VALUE;
        this.recursionLimit = 64;
        this.sizeLimit = 67108864;
        this.refillCallback = null;
        this.buffer = new byte[4096];
        this.bufferSize = 0;
        this.bufferPos = 0;
        this.totalBytesRetired = 0;
        this.input = inputStream;
        this.bufferIsImmutable = false;
    }

    public static int decodeZigZag32(int i4) {
        return (-(i4 & 1)) ^ (i4 >>> 1);
    }

    public static long decodeZigZag64(long j4) {
        return (-(j4 & 1)) ^ (j4 >>> 1);
    }

    private void ensureAvailable(int i4) throws IOException {
        if (this.bufferSize - this.bufferPos < i4) {
            refillBuffer(i4);
        }
    }

    public static CodedInputStream newInstance(InputStream inputStream) {
        return new CodedInputStream(inputStream);
    }

    private byte[] readRawBytesSlowPath(int i4) throws IOException {
        if (i4 <= 0) {
            if (i4 == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i10 = this.totalBytesRetired;
        int i11 = this.bufferPos;
        int i12 = i10 + i11 + i4;
        int i13 = this.currentLimit;
        if (i12 > i13) {
            skipRawBytes((i13 - i10) - i11);
            throw InvalidProtocolBufferException.truncatedMessage();
        } else if (i4 < 4096) {
            byte[] bArr = new byte[i4];
            int i14 = this.bufferSize - i11;
            System.arraycopy(this.buffer, i11, bArr, 0, i14);
            this.bufferPos = this.bufferSize;
            int i15 = i4 - i14;
            ensureAvailable(i15);
            System.arraycopy(this.buffer, 0, bArr, i14, i15);
            this.bufferPos = i15;
            return bArr;
        } else {
            int i16 = this.bufferSize;
            this.totalBytesRetired = i10 + i16;
            this.bufferPos = 0;
            this.bufferSize = 0;
            int i17 = i16 - i11;
            int i18 = i4 - i17;
            ArrayList<byte[]> arrayList = new ArrayList();
            while (i18 > 0) {
                int min = Math.min(i18, 4096);
                byte[] bArr2 = new byte[min];
                int i19 = 0;
                while (i19 < min) {
                    InputStream inputStream = this.input;
                    int read = inputStream == null ? -1 : inputStream.read(bArr2, i19, min - i19);
                    if (read == -1) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    this.totalBytesRetired += read;
                    i19 += read;
                }
                i18 -= min;
                arrayList.add(bArr2);
            }
            byte[] bArr3 = new byte[i4];
            System.arraycopy(this.buffer, i11, bArr3, 0, i17);
            for (byte[] bArr4 : arrayList) {
                System.arraycopy(bArr4, 0, bArr3, i17, bArr4.length);
                i17 += bArr4.length;
            }
            return bArr3;
        }
    }

    private void recomputeBufferSizeAfterLimit() {
        int i4 = this.bufferSize + this.bufferSizeAfterLimit;
        this.bufferSize = i4;
        int i10 = this.totalBytesRetired + i4;
        int i11 = this.currentLimit;
        if (i10 > i11) {
            int i12 = i10 - i11;
            this.bufferSizeAfterLimit = i12;
            this.bufferSize = i4 - i12;
            return;
        }
        this.bufferSizeAfterLimit = 0;
    }

    private void refillBuffer(int i4) throws IOException {
        if (!tryRefillBuffer(i4)) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    private void skipRawBytesSlowPath(int i4) throws IOException {
        if (i4 >= 0) {
            int i10 = this.totalBytesRetired;
            int i11 = this.bufferPos;
            int i12 = i10 + i11 + i4;
            int i13 = this.currentLimit;
            if (i12 <= i13) {
                int i14 = this.bufferSize;
                int i15 = i14 - i11;
                this.bufferPos = i14;
                refillBuffer(1);
                while (true) {
                    int i16 = i4 - i15;
                    int i17 = this.bufferSize;
                    if (i16 > i17) {
                        i15 += i17;
                        this.bufferPos = i17;
                        refillBuffer(1);
                    } else {
                        this.bufferPos = i16;
                        return;
                    }
                }
            } else {
                skipRawBytes((i13 - i10) - i11);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        } else {
            throw InvalidProtocolBufferException.negativeSize();
        }
    }

    private boolean tryRefillBuffer(int i4) throws IOException {
        int i10 = this.bufferPos;
        if (i10 + i4 > this.bufferSize) {
            if (this.totalBytesRetired + i10 + i4 > this.currentLimit) {
                return false;
            }
            RefillCallback refillCallback = this.refillCallback;
            if (refillCallback != null) {
                refillCallback.onRefill();
            }
            if (this.input != null) {
                int i11 = this.bufferPos;
                if (i11 > 0) {
                    int i12 = this.bufferSize;
                    if (i12 > i11) {
                        byte[] bArr = this.buffer;
                        System.arraycopy(bArr, i11, bArr, 0, i12 - i11);
                    }
                    this.totalBytesRetired += i11;
                    this.bufferSize -= i11;
                    this.bufferPos = 0;
                }
                InputStream inputStream = this.input;
                byte[] bArr2 = this.buffer;
                int i13 = this.bufferSize;
                int read = inputStream.read(bArr2, i13, bArr2.length - i13);
                if (read == 0 || read < -1 || read > this.buffer.length) {
                    StringBuilder sb = new StringBuilder(102);
                    sb.append("InputStream#read(byte[]) returned invalid result: ");
                    sb.append(read);
                    sb.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb.toString());
                } else if (read > 0) {
                    this.bufferSize += read;
                    if ((this.totalBytesRetired + i4) - this.sizeLimit <= 0) {
                        recomputeBufferSizeAfterLimit();
                        if (this.bufferSize >= i4) {
                            return true;
                        }
                        return tryRefillBuffer(i4);
                    }
                    throw InvalidProtocolBufferException.sizeLimitExceeded();
                }
            }
            return false;
        }
        StringBuilder sb2 = new StringBuilder(77);
        sb2.append("refillBuffer() called when ");
        sb2.append(i4);
        sb2.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb2.toString());
    }

    public void checkLastTagWas(int i4) throws InvalidProtocolBufferException {
        if (this.lastTag != i4) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    public int getBytesUntilLimit() {
        int i4 = this.currentLimit;
        if (i4 == Integer.MAX_VALUE) {
            return -1;
        }
        return i4 - (this.totalBytesRetired + this.bufferPos);
    }

    public boolean isAtEnd() throws IOException {
        return this.bufferPos == this.bufferSize && !tryRefillBuffer(1);
    }

    public void popLimit(int i4) {
        this.currentLimit = i4;
        recomputeBufferSizeAfterLimit();
    }

    public int pushLimit(int i4) throws InvalidProtocolBufferException {
        if (i4 >= 0) {
            int i10 = i4 + this.totalBytesRetired + this.bufferPos;
            int i11 = this.currentLimit;
            if (i10 <= i11) {
                this.currentLimit = i10;
                recomputeBufferSizeAfterLimit();
                return i11;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    public boolean readBool() throws IOException {
        return readRawVarint64() != 0;
    }

    public ByteString readBytes() throws IOException {
        int readRawVarint32 = readRawVarint32();
        int i4 = this.bufferSize;
        int i10 = this.bufferPos;
        if (readRawVarint32 > i4 - i10 || readRawVarint32 <= 0) {
            if (readRawVarint32 == 0) {
                return ByteString.EMPTY;
            }
            return new LiteralByteString(readRawBytesSlowPath(readRawVarint32));
        }
        ByteString boundedByteString = (this.bufferIsImmutable && this.enableAliasing) ? new BoundedByteString(this.buffer, this.bufferPos, readRawVarint32) : ByteString.copyFrom(this.buffer, i10, readRawVarint32);
        this.bufferPos += readRawVarint32;
        return boundedByteString;
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readRawLittleEndian64());
    }

    public int readEnum() throws IOException {
        return readRawVarint32();
    }

    public int readFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    public long readFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readRawLittleEndian32());
    }

    public void readGroup(int i4, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int i10 = this.recursionDepth;
        if (i10 < this.recursionLimit) {
            this.recursionDepth = i10 + 1;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i4, 4));
            this.recursionDepth--;
            return;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    public int readInt32() throws IOException {
        return readRawVarint32();
    }

    public long readInt64() throws IOException {
        return readRawVarint64();
    }

    public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (this.recursionDepth < this.recursionLimit) {
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            popLimit(pushLimit);
            return;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    public byte readRawByte() throws IOException {
        if (this.bufferPos == this.bufferSize) {
            refillBuffer(1);
        }
        byte[] bArr = this.buffer;
        int i4 = this.bufferPos;
        this.bufferPos = i4 + 1;
        return bArr[i4];
    }

    public int readRawLittleEndian32() throws IOException {
        int i4 = this.bufferPos;
        if (this.bufferSize - i4 < 4) {
            refillBuffer(4);
            i4 = this.bufferPos;
        }
        byte[] bArr = this.buffer;
        this.bufferPos = i4 + 4;
        return ((bArr[i4 + 3] & 255) << 24) | (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16);
    }

    public long readRawLittleEndian64() throws IOException {
        int i4 = this.bufferPos;
        if (this.bufferSize - i4 < 8) {
            refillBuffer(8);
            i4 = this.bufferPos;
        }
        byte[] bArr = this.buffer;
        this.bufferPos = i4 + 8;
        return ((bArr[i4 + 7] & 255) << 56) | (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007a, code lost:
        if (r2[r3] < 0) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int readRawVarint32() throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.bufferPos
            int r1 = r9.bufferSize
            if (r1 != r0) goto L8
            goto L7c
        L8:
            byte[] r2 = r9.buffer
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L13
            r9.bufferPos = r3
            return r0
        L13:
            int r1 = r1 - r3
            r4 = 9
            if (r1 >= r4) goto L19
            goto L7c
        L19:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            long r3 = (long) r0
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L2d
            r5 = -128(0xffffffffffffff80, double:NaN)
        L29:
            long r2 = r3 ^ r5
            int r0 = (int) r2
            goto L82
        L2d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            long r7 = (long) r0
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 < 0) goto L3f
            r0 = 16256(0x3f80, double:8.0315E-320)
            long r0 = r0 ^ r7
            int r0 = (int) r0
        L3d:
            r1 = r3
            goto L82
        L3f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            long r3 = (long) r0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L4f
            r5 = -2080896(0xffffffffffe03f80, double:NaN)
            goto L29
        L4f:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            long r4 = (long) r0
            r6 = 266354560(0xfe03f80, double:1.315966377E-315)
            long r4 = r4 ^ r6
            int r0 = (int) r4
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L82
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L82
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 >= 0) goto L82
        L7c:
            long r0 = r9.readRawVarint64SlowPath()
            int r1 = (int) r0
            return r1
        L82:
            r9.bufferPos = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream.readRawVarint32():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
        if (r2[r0] < 0) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long readRawVarint64() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 194
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream.readRawVarint64():long");
    }

    long readRawVarint64SlowPath() throws IOException {
        long j4 = 0;
        for (int i4 = 0; i4 < 64; i4 += 7) {
            byte readRawByte = readRawByte();
            j4 |= (readRawByte & Byte.MAX_VALUE) << i4;
            if ((readRawByte & 128) == 0) {
                return j4;
            }
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public int readSFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    public long readSFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    public int readSInt32() throws IOException {
        return decodeZigZag32(readRawVarint32());
    }

    public long readSInt64() throws IOException {
        return decodeZigZag64(readRawVarint64());
    }

    public String readString() throws IOException {
        int readRawVarint32 = readRawVarint32();
        int i4 = this.bufferSize;
        int i10 = this.bufferPos;
        if (readRawVarint32 > i4 - i10 || readRawVarint32 <= 0) {
            return readRawVarint32 == 0 ? "" : new String(readRawBytesSlowPath(readRawVarint32), "UTF-8");
        }
        String str = new String(this.buffer, i10, readRawVarint32, "UTF-8");
        this.bufferPos += readRawVarint32;
        return str;
    }

    public String readStringRequireUtf8() throws IOException {
        byte[] readRawBytesSlowPath;
        int readRawVarint32 = readRawVarint32();
        int i4 = this.bufferPos;
        if (readRawVarint32 <= this.bufferSize - i4 && readRawVarint32 > 0) {
            readRawBytesSlowPath = this.buffer;
            this.bufferPos = i4 + readRawVarint32;
        } else if (readRawVarint32 == 0) {
            return "";
        } else {
            readRawBytesSlowPath = readRawBytesSlowPath(readRawVarint32);
            i4 = 0;
        }
        if (Utf8.isValidUtf8(readRawBytesSlowPath, i4, i4 + readRawVarint32)) {
            return new String(readRawBytesSlowPath, i4, readRawVarint32, "UTF-8");
        }
        throw InvalidProtocolBufferException.invalidUtf8();
    }

    public int readTag() throws IOException {
        if (isAtEnd()) {
            this.lastTag = 0;
            return 0;
        }
        int readRawVarint32 = readRawVarint32();
        this.lastTag = readRawVarint32;
        if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
            return this.lastTag;
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    public int readUInt32() throws IOException {
        return readRawVarint32();
    }

    public long readUInt64() throws IOException {
        return readRawVarint64();
    }

    public boolean skipField(int i4, CodedOutputStream codedOutputStream) throws IOException {
        int tagWireType = WireFormat.getTagWireType(i4);
        if (tagWireType == 0) {
            long readInt64 = readInt64();
            codedOutputStream.writeRawVarint32(i4);
            codedOutputStream.writeUInt64NoTag(readInt64);
            return true;
        } else if (tagWireType == 1) {
            long readRawLittleEndian64 = readRawLittleEndian64();
            codedOutputStream.writeRawVarint32(i4);
            codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
            return true;
        } else if (tagWireType == 2) {
            ByteString readBytes = readBytes();
            codedOutputStream.writeRawVarint32(i4);
            codedOutputStream.writeBytesNoTag(readBytes);
            return true;
        } else if (tagWireType == 3) {
            codedOutputStream.writeRawVarint32(i4);
            skipMessage(codedOutputStream);
            int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i4), 4);
            checkLastTagWas(makeTag);
            codedOutputStream.writeRawVarint32(makeTag);
            return true;
        } else if (tagWireType != 4) {
            if (tagWireType == 5) {
                int readRawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeRawVarint32(i4);
                codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            return false;
        }
    }

    public void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
        int readTag;
        do {
            readTag = readTag();
            if (readTag == 0) {
                return;
            }
        } while (skipField(readTag, codedOutputStream));
    }

    public void skipRawBytes(int i4) throws IOException {
        int i10 = this.bufferSize;
        int i11 = this.bufferPos;
        if (i4 <= i10 - i11 && i4 >= 0) {
            this.bufferPos = i11 + i4;
        } else {
            skipRawBytesSlowPath(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CodedInputStream newInstance(LiteralByteString literalByteString) {
        CodedInputStream codedInputStream = new CodedInputStream(literalByteString);
        try {
            codedInputStream.pushLimit(literalByteString.size());
            return codedInputStream;
        } catch (InvalidProtocolBufferException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (this.recursionDepth < this.recursionLimit) {
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            popLimit(pushLimit);
            return parsePartialFrom;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    private CodedInputStream(LiteralByteString literalByteString) {
        this.enableAliasing = false;
        this.currentLimit = Integer.MAX_VALUE;
        this.recursionLimit = 64;
        this.sizeLimit = 67108864;
        this.refillCallback = null;
        this.buffer = literalByteString.bytes;
        int offsetIntoBytes = literalByteString.getOffsetIntoBytes();
        this.bufferPos = offsetIntoBytes;
        this.bufferSize = offsetIntoBytes + literalByteString.size();
        this.totalBytesRetired = -this.bufferPos;
        this.input = null;
        this.bufferIsImmutable = true;
    }

    public static int readRawVarint32(int i4, InputStream inputStream) throws IOException {
        if ((i4 & 128) == 0) {
            return i4;
        }
        int i10 = i4 & 127;
        int i11 = 7;
        while (i11 < 32) {
            int read = inputStream.read();
            if (read == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i10 |= (read & 127) << i11;
            if ((read & 128) == 0) {
                return i10;
            }
            i11 += 7;
        }
        while (i11 < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((read2 & 128) == 0) {
                return i10;
            }
            i11 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }
}
