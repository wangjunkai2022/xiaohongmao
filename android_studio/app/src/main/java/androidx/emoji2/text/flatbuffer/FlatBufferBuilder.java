package androidx.emoji2.text.flatbuffer;

import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public class FlatBufferBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    ByteBuffer bb;
    ByteBufferFactory bb_factory;
    boolean finished;
    boolean force_defaults;
    int minalign;
    boolean nested;
    int num_vtables;
    int object_start;
    int space;
    final Utf8 utf8;
    int vector_num_elems;
    int[] vtable;
    int vtable_in_use;
    int[] vtables;

    /* loaded from: classes.dex */
    static class ByteBufferBackedInputStream extends InputStream {
        ByteBuffer buf;

        public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
            this.buf = byteBuffer;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            try {
                return this.buf.get() & 255;
            } catch (BufferUnderflowException unused) {
                return -1;
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ByteBufferFactory {
        public abstract ByteBuffer newByteBuffer(int i4);

        public void releaseByteBuffer(ByteBuffer byteBuffer) {
        }
    }

    /* loaded from: classes.dex */
    public static final class HeapByteBufferFactory extends ByteBufferFactory {
        public static final HeapByteBufferFactory INSTANCE = new HeapByteBufferFactory();

        @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder.ByteBufferFactory
        public ByteBuffer newByteBuffer(int i4) {
            return ByteBuffer.allocate(i4).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public FlatBufferBuilder(int i4, ByteBufferFactory byteBufferFactory) {
        this(i4, byteBufferFactory, null, Utf8.getDefault());
    }

    @Deprecated
    private int dataStart() {
        finished();
        return this.space;
    }

    static ByteBuffer growByteBuffer(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        int capacity = byteBuffer.capacity();
        if (((-1073741824) & capacity) == 0) {
            int i4 = capacity == 0 ? 1 : capacity << 1;
            byteBuffer.position(0);
            ByteBuffer newByteBuffer = byteBufferFactory.newByteBuffer(i4);
            newByteBuffer.position(newByteBuffer.clear().capacity() - capacity);
            newByteBuffer.put(byteBuffer);
            return newByteBuffer;
        }
        throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
    }

    public static boolean isFieldPresent(Table table, int i4) {
        return table.__offset(i4) != 0;
    }

    public void Nested(int i4) {
        if (i4 != offset()) {
            throw new AssertionError("FlatBuffers: struct must be serialized inline.");
        }
    }

    public void addBoolean(boolean z9) {
        prep(1, 0);
        putBoolean(z9);
    }

    public void addByte(byte b10) {
        prep(1, 0);
        putByte(b10);
    }

    public void addDouble(double d4) {
        prep(8, 0);
        putDouble(d4);
    }

    public void addFloat(float f10) {
        prep(4, 0);
        putFloat(f10);
    }

    public void addInt(int i4) {
        prep(4, 0);
        putInt(i4);
    }

    public void addLong(long j4) {
        prep(8, 0);
        putLong(j4);
    }

    public void addOffset(int i4) {
        prep(4, 0);
        putInt((offset() - i4) + 4);
    }

    public void addShort(short s9) {
        prep(2, 0);
        putShort(s9);
    }

    public void addStruct(int i4, int i10, int i11) {
        if (i10 != i11) {
            Nested(i10);
            slot(i4);
        }
    }

    public void clear() {
        this.space = this.bb.capacity();
        this.bb.clear();
        this.minalign = 1;
        while (true) {
            int i4 = this.vtable_in_use;
            if (i4 <= 0) {
                this.vtable_in_use = 0;
                this.nested = false;
                this.finished = false;
                this.object_start = 0;
                this.num_vtables = 0;
                this.vector_num_elems = 0;
                return;
            }
            int[] iArr = this.vtable;
            int i10 = i4 - 1;
            this.vtable_in_use = i10;
            iArr[i10] = 0;
        }
    }

    public int createByteVector(byte[] bArr) {
        int length = bArr.length;
        startVector(1, length, 1);
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - length;
        this.space = i4;
        byteBuffer.position(i4);
        this.bb.put(bArr);
        return endVector();
    }

    public <T extends Table> int createSortedVectorOfTables(T t9, int[] iArr) {
        t9.sortTables(iArr, this.bb);
        return createVectorOfTables(iArr);
    }

    public int createString(CharSequence charSequence) {
        int encodedLength = this.utf8.encodedLength(charSequence);
        addByte((byte) 0);
        startVector(1, encodedLength, 1);
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - encodedLength;
        this.space = i4;
        byteBuffer.position(i4);
        this.utf8.encodeUtf8(charSequence, this.bb);
        return endVector();
    }

    public ByteBuffer createUnintializedVector(int i4, int i10, int i11) {
        int i12 = i4 * i10;
        startVector(i4, i10, i11);
        ByteBuffer byteBuffer = this.bb;
        int i13 = this.space - i12;
        this.space = i13;
        byteBuffer.position(i13);
        ByteBuffer order = this.bb.slice().order(ByteOrder.LITTLE_ENDIAN);
        order.limit(i12);
        return order;
    }

    public int createVectorOfTables(int[] iArr) {
        notNested();
        startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            addOffset(iArr[length]);
        }
        return endVector();
    }

    public ByteBuffer dataBuffer() {
        finished();
        return this.bb;
    }

    public int endTable() {
        int i4;
        if (this.vtable != null && this.nested) {
            addInt(0);
            int offset = offset();
            int i10 = this.vtable_in_use - 1;
            while (i10 >= 0 && this.vtable[i10] == 0) {
                i10--;
            }
            int i11 = i10 + 1;
            while (i10 >= 0) {
                int[] iArr = this.vtable;
                addShort((short) (iArr[i10] != 0 ? offset - iArr[i10] : 0));
                i10--;
            }
            addShort((short) (offset - this.object_start));
            addShort((short) ((i11 + 2) * 2));
            int i12 = 0;
            loop2: while (true) {
                if (i12 >= this.num_vtables) {
                    i4 = 0;
                    break;
                }
                int capacity = this.bb.capacity() - this.vtables[i12];
                int i13 = this.space;
                short s9 = this.bb.getShort(capacity);
                if (s9 == this.bb.getShort(i13)) {
                    for (int i14 = 2; i14 < s9; i14 += 2) {
                        if (this.bb.getShort(capacity + i14) != this.bb.getShort(i13 + i14)) {
                            break;
                        }
                    }
                    i4 = this.vtables[i12];
                    break loop2;
                }
                i12++;
            }
            if (i4 != 0) {
                int capacity2 = this.bb.capacity() - offset;
                this.space = capacity2;
                this.bb.putInt(capacity2, i4 - offset);
            } else {
                int i15 = this.num_vtables;
                int[] iArr2 = this.vtables;
                if (i15 == iArr2.length) {
                    this.vtables = Arrays.copyOf(iArr2, i15 * 2);
                }
                int[] iArr3 = this.vtables;
                int i16 = this.num_vtables;
                this.num_vtables = i16 + 1;
                iArr3[i16] = offset();
                ByteBuffer byteBuffer = this.bb;
                byteBuffer.putInt(byteBuffer.capacity() - offset, offset() - offset);
            }
            this.nested = false;
            return offset;
        }
        throw new AssertionError("FlatBuffers: endTable called without startTable");
    }

    public int endVector() {
        if (this.nested) {
            this.nested = false;
            putInt(this.vector_num_elems);
            return offset();
        }
        throw new AssertionError("FlatBuffers: endVector called without startVector");
    }

    protected void finish(int i4, boolean z9) {
        prep(this.minalign, (z9 ? 4 : 0) + 4);
        addOffset(i4);
        if (z9) {
            addInt(this.bb.capacity() - this.space);
        }
        this.bb.position(this.space);
        this.finished = true;
    }

    public void finishSizePrefixed(int i4) {
        finish(i4, true);
    }

    public void finished() {
        if (!this.finished) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    public FlatBufferBuilder forceDefaults(boolean z9) {
        this.force_defaults = z9;
        return this;
    }

    public FlatBufferBuilder init(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this.bb_factory = byteBufferFactory;
        this.bb = byteBuffer;
        byteBuffer.clear();
        this.bb.order(ByteOrder.LITTLE_ENDIAN);
        this.minalign = 1;
        this.space = this.bb.capacity();
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.object_start = 0;
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        return this;
    }

    public void notNested() {
        if (this.nested) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    public int offset() {
        return this.bb.capacity() - this.space;
    }

    public void pad(int i4) {
        for (int i10 = 0; i10 < i4; i10++) {
            ByteBuffer byteBuffer = this.bb;
            int i11 = this.space - 1;
            this.space = i11;
            byteBuffer.put(i11, (byte) 0);
        }
    }

    public void prep(int i4, int i10) {
        if (i4 > this.minalign) {
            this.minalign = i4;
        }
        int i11 = ((~((this.bb.capacity() - this.space) + i10)) + 1) & (i4 - 1);
        while (this.space < i11 + i4 + i10) {
            int capacity = this.bb.capacity();
            ByteBuffer byteBuffer = this.bb;
            ByteBuffer growByteBuffer = growByteBuffer(byteBuffer, this.bb_factory);
            this.bb = growByteBuffer;
            if (byteBuffer != growByteBuffer) {
                this.bb_factory.releaseByteBuffer(byteBuffer);
            }
            this.space += this.bb.capacity() - capacity;
        }
        pad(i11);
    }

    public void putBoolean(boolean z9) {
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - 1;
        this.space = i4;
        byteBuffer.put(i4, z9 ? (byte) 1 : (byte) 0);
    }

    public void putByte(byte b10) {
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - 1;
        this.space = i4;
        byteBuffer.put(i4, b10);
    }

    public void putDouble(double d4) {
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - 8;
        this.space = i4;
        byteBuffer.putDouble(i4, d4);
    }

    public void putFloat(float f10) {
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - 4;
        this.space = i4;
        byteBuffer.putFloat(i4, f10);
    }

    public void putInt(int i4) {
        ByteBuffer byteBuffer = this.bb;
        int i10 = this.space - 4;
        this.space = i10;
        byteBuffer.putInt(i10, i4);
    }

    public void putLong(long j4) {
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - 8;
        this.space = i4;
        byteBuffer.putLong(i4, j4);
    }

    public void putShort(short s9) {
        ByteBuffer byteBuffer = this.bb;
        int i4 = this.space - 2;
        this.space = i4;
        byteBuffer.putShort(i4, s9);
    }

    public void required(int i4, int i10) {
        int capacity = this.bb.capacity() - i4;
        if (this.bb.getShort((capacity - this.bb.getInt(capacity)) + i10) != 0) {
            return;
        }
        throw new AssertionError("FlatBuffers: field " + i10 + " must be set");
    }

    public byte[] sizedByteArray(int i4, int i10) {
        finished();
        byte[] bArr = new byte[i10];
        this.bb.position(i4);
        this.bb.get(bArr);
        return bArr;
    }

    public InputStream sizedInputStream() {
        finished();
        ByteBuffer duplicate = this.bb.duplicate();
        duplicate.position(this.space);
        duplicate.limit(this.bb.capacity());
        return new ByteBufferBackedInputStream(duplicate);
    }

    public void slot(int i4) {
        this.vtable[i4] = offset();
    }

    public void startTable(int i4) {
        notNested();
        int[] iArr = this.vtable;
        if (iArr == null || iArr.length < i4) {
            this.vtable = new int[i4];
        }
        this.vtable_in_use = i4;
        Arrays.fill(this.vtable, 0, i4, 0);
        this.nested = true;
        this.object_start = offset();
    }

    public void startVector(int i4, int i10, int i11) {
        notNested();
        this.vector_num_elems = i10;
        int i12 = i4 * i10;
        prep(4, i12);
        prep(i11, i12);
        this.nested = true;
    }

    public FlatBufferBuilder(int i4, ByteBufferFactory byteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.minalign = 1;
        this.vtable = null;
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.vtables = new int[16];
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        this.force_defaults = false;
        i4 = i4 <= 0 ? 1 : i4;
        this.bb_factory = byteBufferFactory;
        if (byteBuffer != null) {
            this.bb = byteBuffer;
            byteBuffer.clear();
            this.bb.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.bb = byteBufferFactory.newByteBuffer(i4);
        }
        this.utf8 = utf8;
        this.space = this.bb.capacity();
    }

    public void addBoolean(int i4, boolean z9, boolean z10) {
        if (this.force_defaults || z9 != z10) {
            addBoolean(z9);
            slot(i4);
        }
    }

    public void addByte(int i4, byte b10, int i10) {
        if (this.force_defaults || b10 != i10) {
            addByte(b10);
            slot(i4);
        }
    }

    public void addDouble(int i4, double d4, double d10) {
        if (this.force_defaults || d4 != d10) {
            addDouble(d4);
            slot(i4);
        }
    }

    public void addFloat(int i4, float f10, double d4) {
        if (this.force_defaults || f10 != d4) {
            addFloat(f10);
            slot(i4);
        }
    }

    public void addInt(int i4, int i10, int i11) {
        if (this.force_defaults || i10 != i11) {
            addInt(i10);
            slot(i4);
        }
    }

    public void addLong(int i4, long j4, long j10) {
        if (this.force_defaults || j4 != j10) {
            addLong(j4);
            slot(i4);
        }
    }

    public void addShort(int i4, short s9, int i10) {
        if (this.force_defaults || s9 != i10) {
            addShort(s9);
            slot(i4);
        }
    }

    public void finishSizePrefixed(int i4, String str) {
        finish(i4, str, true);
    }

    public void addOffset(int i4, int i10, int i11) {
        if (this.force_defaults || i10 != i11) {
            addOffset(i10);
            slot(i4);
        }
    }

    public byte[] sizedByteArray() {
        return sizedByteArray(this.space, this.bb.capacity() - this.space);
    }

    public int createByteVector(byte[] bArr, int i4, int i10) {
        startVector(1, i10, 1);
        ByteBuffer byteBuffer = this.bb;
        int i11 = this.space - i10;
        this.space = i11;
        byteBuffer.position(i11);
        this.bb.put(bArr, i4, i10);
        return endVector();
    }

    public void finish(int i4) {
        finish(i4, false);
    }

    public int createString(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        addByte((byte) 0);
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.bb;
        int i4 = this.space - remaining;
        this.space = i4;
        byteBuffer2.position(i4);
        this.bb.put(byteBuffer);
        return endVector();
    }

    protected void finish(int i4, String str, boolean z9) {
        prep(this.minalign, (z9 ? 4 : 0) + 8);
        if (str.length() == 4) {
            for (int i10 = 3; i10 >= 0; i10--) {
                addByte((byte) str.charAt(i10));
            }
            finish(i4, z9);
            return;
        }
        throw new AssertionError("FlatBuffers: file identifier must be length 4");
    }

    public int createByteVector(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.bb;
        int i4 = this.space - remaining;
        this.space = i4;
        byteBuffer2.position(i4);
        this.bb.put(byteBuffer);
        return endVector();
    }

    public void finish(int i4, String str) {
        finish(i4, str, false);
    }

    public FlatBufferBuilder(int i4) {
        this(i4, HeapByteBufferFactory.INSTANCE, null, Utf8.getDefault());
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this(byteBuffer.capacity(), byteBufferFactory, byteBuffer, Utf8.getDefault());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new HeapByteBufferFactory());
    }
}
