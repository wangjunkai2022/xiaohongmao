package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class ByteBufferReadWriteBuf implements ReadWriteBuf {
    private final ByteBuffer buffer;

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.buffer.array();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i4) {
        return this.buffer.get(i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int i4) {
        return get(i4) != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i4) {
        return this.buffer.getDouble(i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i4) {
        return this.buffer.getFloat(i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i4) {
        return this.buffer.getInt(i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i4) {
        return this.buffer.getLong(i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i4) {
        return this.buffer.getShort(i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int i4, int i10) {
        return Utf8Safe.decodeUtf8Buffer(this.buffer, i4, i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.buffer.limit();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int i4, int i10) {
        this.buffer.put(bArr, i4, i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z9) {
        this.buffer.put(z9 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d4) {
        this.buffer.putDouble(d4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f10) {
        this.buffer.putFloat(f10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int i4) {
        this.buffer.putInt(i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j4) {
        this.buffer.putLong(j4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s9) {
        this.buffer.putShort(s9);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int i4) {
        return i4 <= this.buffer.limit();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i4, byte b10) {
        requestCapacity(i4 + 1);
        this.buffer.put(i4, b10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int i4, boolean z9) {
        set(i4, z9 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int i4, double d4) {
        requestCapacity(i4 + 8);
        this.buffer.putDouble(i4, d4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int i4, float f10) {
        requestCapacity(i4 + 4);
        this.buffer.putFloat(i4, f10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int i4, int i10) {
        requestCapacity(i4 + 4);
        this.buffer.putInt(i4, i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int i4, long j4) {
        requestCapacity(i4 + 8);
        this.buffer.putLong(i4, j4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int i4, short s9) {
        requestCapacity(i4 + 2);
        this.buffer.putShort(i4, s9);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.buffer.position();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b10) {
        this.buffer.put(b10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i4, byte[] bArr, int i10, int i11) {
        requestCapacity((i11 - i10) + i4);
        int position = this.buffer.position();
        this.buffer.position(i4);
        this.buffer.put(bArr, i10, i11);
        this.buffer.position(position);
    }
}
