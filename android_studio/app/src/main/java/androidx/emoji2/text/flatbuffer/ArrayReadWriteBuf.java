package androidx.emoji2.text.flatbuffer;

import com.google.common.base.c;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayReadWriteBuf implements ReadWriteBuf {
    private byte[] buffer;
    private int writePos;

    public ArrayReadWriteBuf() {
        this(10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.buffer;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i4) {
        return this.buffer[i4];
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int i4) {
        return this.buffer[i4] != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i4) {
        return Double.longBitsToDouble(getLong(i4));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i4) {
        return Float.intBitsToFloat(getInt(i4));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i4) {
        byte[] bArr = this.buffer;
        return (bArr[i4] & 255) | (bArr[i4 + 3] << c.B) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i4) {
        byte[] bArr = this.buffer;
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        int i14 = i13 + 1;
        int i15 = i14 + 1;
        return (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24) | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 40) | ((255 & bArr[i15]) << 48) | (bArr[i15 + 1] << 56);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i4) {
        byte[] bArr = this.buffer;
        return (short) ((bArr[i4] & 255) | (bArr[i4 + 1] << 8));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int i4, int i10) {
        return Utf8Safe.decodeUtf8Array(this.buffer, i4, i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.writePos;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int i4, int i10) {
        set(this.writePos, bArr, i4, i10);
        this.writePos += i10;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z9) {
        setBoolean(this.writePos, z9);
        this.writePos++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d4) {
        setDouble(this.writePos, d4);
        this.writePos += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f10) {
        setFloat(this.writePos, f10);
        this.writePos += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int i4) {
        setInt(this.writePos, i4);
        this.writePos += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j4) {
        setLong(this.writePos, j4);
        this.writePos += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s9) {
        setShort(this.writePos, s9);
        this.writePos += 2;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int i4) {
        byte[] bArr = this.buffer;
        if (bArr.length > i4) {
            return true;
        }
        int length = bArr.length;
        this.buffer = Arrays.copyOf(bArr, length + (length >> 1));
        return true;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i4, byte b10) {
        requestCapacity(i4 + 1);
        this.buffer[i4] = b10;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int i4, boolean z9) {
        set(i4, z9 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int i4, double d4) {
        requestCapacity(i4 + 8);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d4);
        int i10 = (int) doubleToRawLongBits;
        byte[] bArr = this.buffer;
        int i11 = i4 + 1;
        bArr[i4] = (byte) (i10 & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >> 8) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >> 24) & 255);
        int i15 = (int) (doubleToRawLongBits >> 32);
        int i16 = i14 + 1;
        bArr[i14] = (byte) (i15 & 255);
        int i17 = i16 + 1;
        bArr[i16] = (byte) ((i15 >> 8) & 255);
        bArr[i17] = (byte) ((i15 >> 16) & 255);
        bArr[i17 + 1] = (byte) ((i15 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int i4, float f10) {
        requestCapacity(i4 + 4);
        int floatToRawIntBits = Float.floatToRawIntBits(f10);
        byte[] bArr = this.buffer;
        int i10 = i4 + 1;
        bArr[i4] = (byte) (floatToRawIntBits & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((floatToRawIntBits >> 8) & 255);
        bArr[i11] = (byte) ((floatToRawIntBits >> 16) & 255);
        bArr[i11 + 1] = (byte) ((floatToRawIntBits >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int i4, int i10) {
        requestCapacity(i4 + 4);
        byte[] bArr = this.buffer;
        int i11 = i4 + 1;
        bArr[i4] = (byte) (i10 & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >> 8) & 255);
        bArr[i12] = (byte) ((i10 >> 16) & 255);
        bArr[i12 + 1] = (byte) ((i10 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int i4, long j4) {
        requestCapacity(i4 + 8);
        int i10 = (int) j4;
        byte[] bArr = this.buffer;
        int i11 = i4 + 1;
        bArr[i4] = (byte) (i10 & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >> 8) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >> 24) & 255);
        int i15 = (int) (j4 >> 32);
        int i16 = i14 + 1;
        bArr[i14] = (byte) (i15 & 255);
        int i17 = i16 + 1;
        bArr[i16] = (byte) ((i15 >> 8) & 255);
        bArr[i17] = (byte) ((i15 >> 16) & 255);
        bArr[i17 + 1] = (byte) ((i15 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int i4, short s9) {
        requestCapacity(i4 + 2);
        byte[] bArr = this.buffer;
        bArr[i4] = (byte) (s9 & 255);
        bArr[i4 + 1] = (byte) ((s9 >> 8) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.writePos;
    }

    public ArrayReadWriteBuf(int i4) {
        this(new byte[i4]);
    }

    public ArrayReadWriteBuf(byte[] bArr) {
        this.buffer = bArr;
        this.writePos = 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b10) {
        set(this.writePos, b10);
        this.writePos++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i4, byte[] bArr, int i10, int i11) {
        requestCapacity((i11 - i10) + i4);
        System.arraycopy(bArr, i10, this.buffer, i4, i11);
    }

    public ArrayReadWriteBuf(byte[] bArr, int i4) {
        this.buffer = bArr;
        this.writePos = i4;
    }
}
