package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class BoundedByteString extends LiteralByteString {
    private final int bytesLength;
    private final int bytesOffset;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class BoundedByteIterator implements ByteString.ByteIterator {
        private final int limit;
        private int position;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.position < this.limit;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            int i4 = this.position;
            if (i4 < this.limit) {
                byte[] bArr = BoundedByteString.this.bytes;
                this.position = i4 + 1;
                return bArr[i4];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private BoundedByteIterator() {
            int offsetIntoBytes = BoundedByteString.this.getOffsetIntoBytes();
            this.position = offsetIntoBytes;
            this.limit = offsetIntoBytes + BoundedByteString.this.size();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Byte next() {
            return Byte.valueOf(nextByte());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BoundedByteString(byte[] bArr, int i4, int i10) {
        super(bArr);
        if (i4 < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Offset too small: ");
            sb.append(i4);
            throw new IllegalArgumentException(sb.toString());
        } else if (i10 >= 0) {
            if (i4 + i10 <= bArr.length) {
                this.bytesOffset = i4;
                this.bytesLength = i10;
                return;
            }
            StringBuilder sb2 = new StringBuilder(48);
            sb2.append("Offset+Length too large: ");
            sb2.append(i4);
            sb2.append("+");
            sb2.append(i10);
            throw new IllegalArgumentException(sb2.toString());
        } else {
            StringBuilder sb3 = new StringBuilder(29);
            sb3.append("Length too small: ");
            sb3.append(i4);
            throw new IllegalArgumentException(sb3.toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString
    public byte byteAt(int i4) {
        if (i4 >= 0) {
            if (i4 < size()) {
                return this.bytes[this.bytesOffset + i4];
            }
            int size = size();
            StringBuilder sb = new StringBuilder(41);
            sb.append("Index too large: ");
            sb.append(i4);
            sb.append(", ");
            sb.append(size);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(28);
        sb2.append("Index too small: ");
        sb2.append(i4);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString, kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i4, int i10, int i11) {
        System.arraycopy(this.bytes, getOffsetIntoBytes() + i4, bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString
    public int getOffsetIntoBytes() {
        return this.bytesOffset;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString, kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public int size() {
        return this.bytesLength;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString, kotlin.reflect.jvm.internal.impl.protobuf.ByteString, java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new BoundedByteIterator();
    }
}
