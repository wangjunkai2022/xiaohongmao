package com.google.common.io;

import java.io.DataOutput;

/* compiled from: ByteArrayDataOutput.java */
@h3.c
/* loaded from: classes2.dex */
public interface c extends DataOutput {
    byte[] toByteArray();

    @Override // java.io.DataOutput
    void write(int i4);

    @Override // java.io.DataOutput
    void write(byte[] bArr);

    @Override // java.io.DataOutput
    void write(byte[] bArr, int i4, int i10);

    @Override // java.io.DataOutput
    void writeBoolean(boolean z9);

    @Override // java.io.DataOutput
    void writeByte(int i4);

    @Override // java.io.DataOutput
    @Deprecated
    void writeBytes(String str);

    @Override // java.io.DataOutput
    void writeChar(int i4);

    @Override // java.io.DataOutput
    void writeChars(String str);

    @Override // java.io.DataOutput
    void writeDouble(double d4);

    @Override // java.io.DataOutput
    void writeFloat(float f10);

    @Override // java.io.DataOutput
    void writeInt(int i4);

    @Override // java.io.DataOutput
    void writeLong(long j4);

    @Override // java.io.DataOutput
    void writeShort(int i4);

    @Override // java.io.DataOutput
    void writeUTF(String str);
}
