package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: LittleEndianDataInputStream.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class v extends FilterInputStream implements DataInput {
    public v(InputStream inputStream) {
        super((InputStream) com.google.common.base.a0.E(inputStream));
    }

    private byte a() throws IOException, EOFException {
        int read = ((FilterInputStream) this).in.read();
        if (-1 != read) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public boolean readBoolean() throws IOException {
        return readUnsignedByte() != 0;
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public byte readByte() throws IOException {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        g.p(this, bArr);
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public int readInt() throws IOException {
        byte a10 = a();
        byte a11 = a();
        return com.google.common.primitives.f.k(a(), a(), a11, a10);
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public long readLong() throws IOException {
        byte a10 = a();
        byte a11 = a();
        byte a12 = a();
        byte a13 = a();
        byte a14 = a();
        byte a15 = a();
        return com.google.common.primitives.g.j(a(), a(), a15, a14, a13, a12, a11, a10);
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public String readUTF() throws IOException {
        return new DataInputStream(((FilterInputStream) this).in).readUTF();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public int readUnsignedByte() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public int readUnsignedShort() throws IOException {
        return com.google.common.primitives.f.k((byte) 0, (byte) 0, a(), a());
    }

    @Override // java.io.DataInput
    public int skipBytes(int i4) throws IOException {
        return (int) ((FilterInputStream) this).in.skip(i4);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i4, int i10) throws IOException {
        g.q(this, bArr, i4, i10);
    }
}
