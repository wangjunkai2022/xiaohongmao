package com.google.common.io;

import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: LittleEndianDataOutputStream.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class w extends FilterOutputStream implements DataOutput {
    public w(OutputStream outputStream) {
        super(new DataOutputStream((OutputStream) com.google.common.base.a0.E(outputStream)));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i4, i10);
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean z9) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeBoolean(z9);
    }

    @Override // java.io.DataOutput
    public void writeByte(int i4) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeByte(i4);
    }

    @Override // java.io.DataOutput
    @Deprecated
    public void writeBytes(String str) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeBytes(str);
    }

    @Override // java.io.DataOutput
    public void writeChar(int i4) throws IOException {
        writeShort(i4);
    }

    @Override // java.io.DataOutput
    public void writeChars(String str) throws IOException {
        for (int i4 = 0; i4 < str.length(); i4++) {
            writeChar(str.charAt(i4));
        }
    }

    @Override // java.io.DataOutput
    public void writeDouble(double d4) throws IOException {
        writeLong(Double.doubleToLongBits(d4));
    }

    @Override // java.io.DataOutput
    public void writeFloat(float f10) throws IOException {
        writeInt(Float.floatToIntBits(f10));
    }

    @Override // java.io.DataOutput
    public void writeInt(int i4) throws IOException {
        ((FilterOutputStream) this).out.write(i4 & 255);
        ((FilterOutputStream) this).out.write((i4 >> 8) & 255);
        ((FilterOutputStream) this).out.write((i4 >> 16) & 255);
        ((FilterOutputStream) this).out.write((i4 >> 24) & 255);
    }

    @Override // java.io.DataOutput
    public void writeLong(long j4) throws IOException {
        byte[] A = com.google.common.primitives.g.A(Long.reverseBytes(j4));
        write(A, 0, A.length);
    }

    @Override // java.io.DataOutput
    public void writeShort(int i4) throws IOException {
        ((FilterOutputStream) this).out.write(i4 & 255);
        ((FilterOutputStream) this).out.write((i4 >> 8) & 255);
    }

    @Override // java.io.DataOutput
    public void writeUTF(String str) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeUTF(str);
    }
}
