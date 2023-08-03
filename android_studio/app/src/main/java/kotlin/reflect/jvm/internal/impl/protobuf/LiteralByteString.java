package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class LiteralByteString extends ByteString {
    protected final byte[] bytes;
    private int hash = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class LiteralByteIterator implements ByteString.ByteIterator {
        private final int limit;
        private int position;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.position < this.limit;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            try {
                byte[] bArr = LiteralByteString.this.bytes;
                int i4 = this.position;
                this.position = i4 + 1;
                return bArr[i4];
            } catch (ArrayIndexOutOfBoundsException e4) {
                throw new NoSuchElementException(e4.getMessage());
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private LiteralByteIterator() {
            this.position = 0;
            this.limit = LiteralByteString.this.size();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Byte next() {
            return Byte.valueOf(nextByte());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiteralByteString(byte[] bArr) {
        this.bytes = bArr;
    }

    public byte byteAt(int i4) {
        return this.bytes[i4];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected void copyToInternal(byte[] bArr, int i4, int i10, int i11) {
        System.arraycopy(this.bytes, i4, bArr, i10, i11);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ByteString) && size() == ((ByteString) obj).size()) {
            if (size() == 0) {
                return true;
            }
            if (obj instanceof LiteralByteString) {
                return equalsRange((LiteralByteString) obj, 0, size());
            }
            if (obj instanceof RopeByteString) {
                return obj.equals(this);
            }
            String valueOf = String.valueOf(obj.getClass());
            StringBuilder sb = new StringBuilder(valueOf.length() + 49);
            sb.append("Has a new type of ByteString been created? Found ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean equalsRange(LiteralByteString literalByteString, int i4, int i10) {
        if (i10 <= literalByteString.size()) {
            if (i4 + i10 <= literalByteString.size()) {
                byte[] bArr = this.bytes;
                byte[] bArr2 = literalByteString.bytes;
                int offsetIntoBytes = getOffsetIntoBytes() + i10;
                int offsetIntoBytes2 = getOffsetIntoBytes();
                int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + i4;
                while (offsetIntoBytes2 < offsetIntoBytes) {
                    if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                        return false;
                    }
                    offsetIntoBytes2++;
                    offsetIntoBytes3++;
                }
                return true;
            }
            int size = literalByteString.size();
            StringBuilder sb = new StringBuilder(59);
            sb.append("Ran off end of other: ");
            sb.append(i4);
            sb.append(", ");
            sb.append(i10);
            sb.append(", ");
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        int size2 = size();
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Length too large: ");
        sb2.append(i10);
        sb2.append(size2);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffsetIntoBytes() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int getTreeDepth() {
        return 0;
    }

    public int hashCode() {
        int i4 = this.hash;
        if (i4 == 0) {
            int size = size();
            i4 = partialHash(size, 0, size);
            if (i4 == 0) {
                i4 = 1;
            }
            this.hash = i4;
        }
        return i4;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected boolean isBalanced() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public boolean isValidUtf8() {
        int offsetIntoBytes = getOffsetIntoBytes();
        return Utf8.isValidUtf8(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public CodedInputStream newCodedInput() {
        return CodedInputStream.newInstance(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int partialHash(int i4, int i10, int i11) {
        return hashCode(i4, this.bytes, getOffsetIntoBytes() + i10, i11);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int partialIsValidUtf8(int i4, int i10, int i11) {
        int offsetIntoBytes = getOffsetIntoBytes() + i10;
        return Utf8.partialIsValidUtf8(i4, this.bytes, offsetIntoBytes, i11 + offsetIntoBytes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int peekCachedHashCode() {
        return this.hash;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public int size() {
        return this.bytes.length;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public String toString(String str) throws UnsupportedEncodingException {
        return new String(this.bytes, getOffsetIntoBytes(), size(), str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    void writeToInternal(OutputStream outputStream, int i4, int i10) throws IOException {
        outputStream.write(this.bytes, getOffsetIntoBytes() + i4, i10);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString, java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new LiteralByteIterator();
    }

    static int hashCode(int i4, byte[] bArr, int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            i4 = (i4 * 31) + bArr[i12];
        }
        return i4;
    }
}
