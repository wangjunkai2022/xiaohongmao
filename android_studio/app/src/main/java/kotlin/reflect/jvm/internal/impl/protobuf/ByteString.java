package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes4.dex */
public abstract class ByteString implements Iterable<Byte> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final ByteString EMPTY = new LiteralByteString(new byte[0]);

    /* loaded from: classes4.dex */
    public interface ByteIterator extends Iterator<Byte> {
        byte nextByte();
    }

    private static ByteString balancedConcat(Iterator<ByteString> it, int i4) {
        if (i4 == 1) {
            return it.next();
        }
        int i10 = i4 >>> 1;
        return balancedConcat(it, i10).concat(balancedConcat(it, i4 - i10));
    }

    public static ByteString copyFrom(byte[] bArr, int i4, int i10) {
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i4, bArr2, 0, i10);
        return new LiteralByteString(bArr2);
    }

    public static ByteString copyFromUtf8(String str) {
        try {
            return new LiteralByteString(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("UTF-8 not supported?", e4);
        }
    }

    public static Output newOutput() {
        return new Output(128);
    }

    public ByteString concat(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        if (size + size2 < 2147483647L) {
            return RopeByteString.concatenate(this, byteString);
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("ByteString would be too long: ");
        sb.append(size);
        sb.append("+");
        sb.append(size2);
        throw new IllegalArgumentException(sb.toString());
    }

    public void copyTo(byte[] bArr, int i4, int i10, int i11) {
        if (i4 < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i4);
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i10 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Target offset < 0: ");
            sb2.append(i10);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else if (i11 >= 0) {
            int i12 = i4 + i11;
            if (i12 <= size()) {
                int i13 = i10 + i11;
                if (i13 <= bArr.length) {
                    if (i11 > 0) {
                        copyToInternal(bArr, i4, i10, i11);
                        return;
                    }
                    return;
                }
                StringBuilder sb3 = new StringBuilder(34);
                sb3.append("Target end offset < 0: ");
                sb3.append(i13);
                throw new IndexOutOfBoundsException(sb3.toString());
            }
            StringBuilder sb4 = new StringBuilder(34);
            sb4.append("Source end offset < 0: ");
            sb4.append(i12);
            throw new IndexOutOfBoundsException(sb4.toString());
        } else {
            StringBuilder sb5 = new StringBuilder(23);
            sb5.append("Length < 0: ");
            sb5.append(i11);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void copyToInternal(byte[] bArr, int i4, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getTreeDepth();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean isBalanced();

    public boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    @Override // java.lang.Iterable
    public abstract Iterator<Byte> iterator();

    public abstract CodedInputStream newCodedInput();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int partialHash(int i4, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int partialIsValidUtf8(int i4, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int peekCachedHashCode();

    public abstract int size();

    public byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return Internal.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public abstract String toString(String str) throws UnsupportedEncodingException;

    public String toStringUtf8() {
        try {
            return toString("UTF-8");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("UTF-8 not supported?", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeTo(OutputStream outputStream, int i4, int i10) throws IOException {
        if (i4 < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i4);
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i10 >= 0) {
            int i11 = i4 + i10;
            if (i11 <= size()) {
                if (i10 > 0) {
                    writeToInternal(outputStream, i4, i10);
                    return;
                }
                return;
            }
            StringBuilder sb2 = new StringBuilder(39);
            sb2.append("Source end offset exceeded: ");
            sb2.append(i11);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else {
            StringBuilder sb3 = new StringBuilder(23);
            sb3.append("Length < 0: ");
            sb3.append(i10);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeToInternal(OutputStream outputStream, int i4, int i10) throws IOException;

    /* loaded from: classes4.dex */
    public static final class Output extends OutputStream {
        private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
        private byte[] buffer;
        private int bufferPos;
        private final ArrayList<ByteString> flushedBuffers;
        private int flushedBuffersTotalBytes;
        private final int initialCapacity;

        Output(int i4) {
            if (i4 >= 0) {
                this.initialCapacity = i4;
                this.flushedBuffers = new ArrayList<>();
                this.buffer = new byte[i4];
                return;
            }
            throw new IllegalArgumentException("Buffer size < 0");
        }

        private byte[] copyArray(byte[] bArr, int i4) {
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i4));
            return bArr2;
        }

        private void flushFullBuffer(int i4) {
            this.flushedBuffers.add(new LiteralByteString(this.buffer));
            int length = this.flushedBuffersTotalBytes + this.buffer.length;
            this.flushedBuffersTotalBytes = length;
            this.buffer = new byte[Math.max(this.initialCapacity, Math.max(i4, length >>> 1))];
            this.bufferPos = 0;
        }

        private void flushLastBuffer() {
            int i4 = this.bufferPos;
            byte[] bArr = this.buffer;
            if (i4 >= bArr.length) {
                this.flushedBuffers.add(new LiteralByteString(this.buffer));
                this.buffer = EMPTY_BYTE_ARRAY;
            } else if (i4 > 0) {
                this.flushedBuffers.add(new LiteralByteString(copyArray(bArr, i4)));
            }
            this.flushedBuffersTotalBytes += this.bufferPos;
            this.bufferPos = 0;
        }

        public synchronized int size() {
            return this.flushedBuffersTotalBytes + this.bufferPos;
        }

        public synchronized ByteString toByteString() {
            flushLastBuffer();
            return ByteString.copyFrom(this.flushedBuffers);
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
        }

        @Override // java.io.OutputStream
        public synchronized void write(int i4) {
            if (this.bufferPos == this.buffer.length) {
                flushFullBuffer(1);
            }
            byte[] bArr = this.buffer;
            int i10 = this.bufferPos;
            this.bufferPos = i10 + 1;
            bArr[i10] = (byte) i4;
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] bArr, int i4, int i10) {
            byte[] bArr2 = this.buffer;
            int length = bArr2.length;
            int i11 = this.bufferPos;
            if (i10 <= length - i11) {
                System.arraycopy(bArr, i4, bArr2, i11, i10);
                this.bufferPos += i10;
            } else {
                int length2 = bArr2.length - i11;
                System.arraycopy(bArr, i4, bArr2, i11, length2);
                int i12 = i10 - length2;
                flushFullBuffer(i12);
                System.arraycopy(bArr, i4 + length2, this.buffer, 0, i12);
                this.bufferPos = i12;
            }
        }
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        Collection collection;
        if (!(iterable instanceof Collection)) {
            collection = new ArrayList();
            for (ByteString byteString : iterable) {
                collection.add(byteString);
            }
        } else {
            collection = (Collection) iterable;
        }
        if (collection.isEmpty()) {
            return EMPTY;
        }
        return balancedConcat(collection.iterator(), collection.size());
    }
}
