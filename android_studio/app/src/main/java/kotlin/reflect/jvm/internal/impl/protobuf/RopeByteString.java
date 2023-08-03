package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Stack;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class RopeByteString extends ByteString {
    private static final int[] minLengthByDepth;
    private int hash;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    /* loaded from: classes4.dex */
    private static class Balancer {
        private final Stack<ByteString> prefixesStack;

        private Balancer() {
            this.prefixesStack = new Stack<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ByteString balance(ByteString byteString, ByteString byteString2) {
            doBalance(byteString);
            doBalance(byteString2);
            ByteString pop = this.prefixesStack.pop();
            while (!this.prefixesStack.isEmpty()) {
                pop = new RopeByteString(this.prefixesStack.pop(), pop);
            }
            return pop;
        }

        private void doBalance(ByteString byteString) {
            if (byteString.isBalanced()) {
                insert(byteString);
            } else if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                doBalance(ropeByteString.left);
                doBalance(ropeByteString.right);
            } else {
                String valueOf = String.valueOf(byteString.getClass());
                StringBuilder sb = new StringBuilder(valueOf.length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }

        private int getDepthBinForLength(int i4) {
            int binarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, i4);
            return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
        }

        private void insert(ByteString byteString) {
            int depthBinForLength = getDepthBinForLength(byteString.size());
            int i4 = RopeByteString.minLengthByDepth[depthBinForLength + 1];
            if (!this.prefixesStack.isEmpty() && this.prefixesStack.peek().size() < i4) {
                int i10 = RopeByteString.minLengthByDepth[depthBinForLength];
                ByteString pop = this.prefixesStack.pop();
                while (!this.prefixesStack.isEmpty() && this.prefixesStack.peek().size() < i10) {
                    pop = new RopeByteString(this.prefixesStack.pop(), pop);
                }
                RopeByteString ropeByteString = new RopeByteString(pop, byteString);
                while (!this.prefixesStack.isEmpty()) {
                    if (this.prefixesStack.peek().size() >= RopeByteString.minLengthByDepth[getDepthBinForLength(ropeByteString.size()) + 1]) {
                        break;
                    }
                    ropeByteString = new RopeByteString(this.prefixesStack.pop(), ropeByteString);
                }
                this.prefixesStack.push(ropeByteString);
                return;
            }
            this.prefixesStack.push(byteString);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class PieceIterator implements Iterator<LiteralByteString> {
        private final Stack<RopeByteString> breadCrumbs;
        private LiteralByteString next;

        private LiteralByteString getLeafByLeft(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.breadCrumbs.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            return (LiteralByteString) byteString;
        }

        private LiteralByteString getNextNonEmptyLeaf() {
            while (!this.breadCrumbs.isEmpty()) {
                LiteralByteString leafByLeft = getLeafByLeft(this.breadCrumbs.pop().right);
                if (!leafByLeft.isEmpty()) {
                    return leafByLeft;
                }
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private PieceIterator(ByteString byteString) {
            this.breadCrumbs = new Stack<>();
            this.next = getLeafByLeft(byteString);
        }

        @Override // java.util.Iterator
        public LiteralByteString next() {
            LiteralByteString literalByteString = this.next;
            if (literalByteString != null) {
                this.next = getNextNonEmptyLeaf();
                return literalByteString;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class RopeByteIterator implements ByteString.ByteIterator {
        private ByteString.ByteIterator bytes;
        int bytesRemaining;
        private final PieceIterator pieces;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.bytesRemaining > 0;
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [kotlin.reflect.jvm.internal.impl.protobuf.ByteString$ByteIterator] */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            if (!this.bytes.hasNext()) {
                this.bytes = this.pieces.next().iterator();
            }
            this.bytesRemaining--;
            return this.bytes.nextByte();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.reflect.jvm.internal.impl.protobuf.ByteString$ByteIterator] */
        private RopeByteIterator() {
            PieceIterator pieceIterator = new PieceIterator(RopeByteString.this);
            this.pieces = pieceIterator;
            this.bytes = pieceIterator.next().iterator();
            this.bytesRemaining = RopeByteString.this.size();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Byte next() {
            return Byte.valueOf(nextByte());
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i4 = 1;
        int i10 = 1;
        while (i4 > 0) {
            arrayList.add(Integer.valueOf(i4));
            int i11 = i10 + i4;
            i10 = i4;
            i4 = i11;
        }
        arrayList.add(Integer.MAX_VALUE);
        minLengthByDepth = new int[arrayList.size()];
        int i12 = 0;
        while (true) {
            int[] iArr = minLengthByDepth;
            if (i12 >= iArr.length) {
                return;
            }
            iArr[i12] = ((Integer) arrayList.get(i12)).intValue();
            i12++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString concatenate(ByteString byteString, ByteString byteString2) {
        RopeByteString ropeByteString = byteString instanceof RopeByteString ? (RopeByteString) byteString : null;
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() != 0) {
            int size = byteString.size() + byteString2.size();
            if (size < 128) {
                return concatenateBytes(byteString, byteString2);
            }
            if (ropeByteString != null && ropeByteString.right.size() + byteString2.size() < 128) {
                byteString2 = new RopeByteString(ropeByteString.left, concatenateBytes(ropeByteString.right, byteString2));
            } else if (ropeByteString != null && ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                byteString2 = new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, byteString2));
            } else {
                if (size >= minLengthByDepth[Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1]) {
                    return new RopeByteString(byteString, byteString2);
                }
                return new Balancer().balance(byteString, byteString2);
            }
        }
        return byteString2;
    }

    private static LiteralByteString concatenateBytes(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return new LiteralByteString(bArr);
    }

    private boolean equalsFragments(ByteString byteString) {
        PieceIterator pieceIterator = new PieceIterator(this);
        LiteralByteString next = pieceIterator.next();
        PieceIterator pieceIterator2 = new PieceIterator(byteString);
        LiteralByteString next2 = pieceIterator2.next();
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int size = next.size() - i4;
            int size2 = next2.size() - i10;
            int min = Math.min(size, size2);
            if (!(i4 == 0 ? next.equalsRange(next2, i10, min) : next2.equalsRange(next, i4, min))) {
                return false;
            }
            i11 += min;
            int i12 = this.totalLength;
            if (i11 >= i12) {
                if (i11 == i12) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == size) {
                next = pieceIterator.next();
                i4 = 0;
            } else {
                i4 += min;
            }
            if (min == size2) {
                next2 = pieceIterator2.next();
                i10 = 0;
            } else {
                i10 += min;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected void copyToInternal(byte[] bArr, int i4, int i10, int i11) {
        int i12 = i4 + i11;
        int i13 = this.leftLength;
        if (i12 <= i13) {
            this.left.copyToInternal(bArr, i4, i10, i11);
        } else if (i4 >= i13) {
            this.right.copyToInternal(bArr, i4 - i13, i10, i11);
        } else {
            int i14 = i13 - i4;
            this.left.copyToInternal(bArr, i4, i10, i14);
            this.right.copyToInternal(bArr, 0, i10 + i14, i11 - i14);
        }
    }

    public boolean equals(Object obj) {
        int peekCachedHashCode;
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (this.totalLength != byteString.size()) {
                return false;
            }
            if (this.totalLength == 0) {
                return true;
            }
            if (this.hash == 0 || (peekCachedHashCode = byteString.peekCachedHashCode()) == 0 || this.hash == peekCachedHashCode) {
                return equalsFragments(byteString);
            }
            return false;
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int getTreeDepth() {
        return this.treeDepth;
    }

    public int hashCode() {
        int i4 = this.hash;
        if (i4 == 0) {
            int i10 = this.totalLength;
            i4 = partialHash(i10, 0, i10);
            if (i4 == 0) {
                i4 = 1;
            }
            this.hash = i4;
        }
        return i4;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected boolean isBalanced() {
        return this.totalLength >= minLengthByDepth[this.treeDepth];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public boolean isValidUtf8() {
        int partialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public CodedInputStream newCodedInput() {
        return CodedInputStream.newInstance(new RopeInputStream());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int partialHash(int i4, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = this.leftLength;
        if (i12 <= i13) {
            return this.left.partialHash(i4, i10, i11);
        }
        if (i10 >= i13) {
            return this.right.partialHash(i4, i10 - i13, i11);
        }
        int i14 = i13 - i10;
        return this.right.partialHash(this.left.partialHash(i4, i10, i14), 0, i11 - i14);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int partialIsValidUtf8(int i4, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = this.leftLength;
        if (i12 <= i13) {
            return this.left.partialIsValidUtf8(i4, i10, i11);
        }
        if (i10 >= i13) {
            return this.right.partialIsValidUtf8(i4, i10 - i13, i11);
        }
        int i14 = i13 - i10;
        return this.right.partialIsValidUtf8(this.left.partialIsValidUtf8(i4, i10, i14), 0, i11 - i14);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int peekCachedHashCode() {
        return this.hash;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public int size() {
        return this.totalLength;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public String toString(String str) throws UnsupportedEncodingException {
        return new String(toByteArray(), str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    void writeToInternal(OutputStream outputStream, int i4, int i10) throws IOException {
        int i11 = i4 + i10;
        int i12 = this.leftLength;
        if (i11 <= i12) {
            this.left.writeToInternal(outputStream, i4, i10);
        } else if (i4 >= i12) {
            this.right.writeToInternal(outputStream, i4 - i12, i10);
        } else {
            int i13 = i12 - i4;
            this.left.writeToInternal(outputStream, i4, i13);
            this.right.writeToInternal(outputStream, 0, i10 - i13);
        }
    }

    private RopeByteString(ByteString byteString, ByteString byteString2) {
        this.hash = 0;
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = size + byteString2.size();
        this.treeDepth = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString, java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new RopeByteIterator();
    }

    /* loaded from: classes4.dex */
    private class RopeInputStream extends InputStream {
        private LiteralByteString currentPiece;
        private int currentPieceIndex;
        private int currentPieceOffsetInRope;
        private int currentPieceSize;
        private int mark;
        private PieceIterator pieceIterator;

        public RopeInputStream() {
            initialize();
        }

        private void advanceIfCurrentPieceFullyRead() {
            if (this.currentPiece != null) {
                int i4 = this.currentPieceIndex;
                int i10 = this.currentPieceSize;
                if (i4 == i10) {
                    this.currentPieceOffsetInRope += i10;
                    this.currentPieceIndex = 0;
                    if (this.pieceIterator.hasNext()) {
                        LiteralByteString next = this.pieceIterator.next();
                        this.currentPiece = next;
                        this.currentPieceSize = next.size();
                        return;
                    }
                    this.currentPiece = null;
                    this.currentPieceSize = 0;
                }
            }
        }

        private void initialize() {
            PieceIterator pieceIterator = new PieceIterator(RopeByteString.this);
            this.pieceIterator = pieceIterator;
            LiteralByteString next = pieceIterator.next();
            this.currentPiece = next;
            this.currentPieceSize = next.size();
            this.currentPieceIndex = 0;
            this.currentPieceOffsetInRope = 0;
        }

        private int readSkipInternal(byte[] bArr, int i4, int i10) {
            int i11 = i10;
            while (true) {
                if (i11 <= 0) {
                    break;
                }
                advanceIfCurrentPieceFullyRead();
                if (this.currentPiece != null) {
                    int min = Math.min(this.currentPieceSize - this.currentPieceIndex, i11);
                    if (bArr != null) {
                        this.currentPiece.copyTo(bArr, this.currentPieceIndex, i4, min);
                        i4 += min;
                    }
                    this.currentPieceIndex += min;
                    i11 -= min;
                } else if (i11 == i10) {
                    return -1;
                }
            }
            return i10 - i11;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return RopeByteString.this.size() - (this.currentPieceOffsetInRope + this.currentPieceIndex);
        }

        @Override // java.io.InputStream
        public void mark(int i4) {
            this.mark = this.currentPieceOffsetInRope + this.currentPieceIndex;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i4, int i10) {
            Objects.requireNonNull(bArr);
            if (i4 >= 0 && i10 >= 0 && i10 <= bArr.length - i4) {
                return readSkipInternal(bArr, i4, i10);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            initialize();
            readSkipInternal(null, 0, this.mark);
        }

        @Override // java.io.InputStream
        public long skip(long j4) {
            if (j4 >= 0) {
                if (j4 > 2147483647L) {
                    j4 = 2147483647L;
                }
                return readSkipInternal(null, 0, (int) j4);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            advanceIfCurrentPieceFullyRead();
            LiteralByteString literalByteString = this.currentPiece;
            if (literalByteString == null) {
                return -1;
            }
            int i4 = this.currentPieceIndex;
            this.currentPieceIndex = i4 + 1;
            return literalByteString.byteAt(i4) & 255;
        }
    }
}
