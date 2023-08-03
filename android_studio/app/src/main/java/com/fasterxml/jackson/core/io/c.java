package com.fasterxml.jackson.core.io;

import java.io.DataOutput;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: DataOutputAsStream.java */
/* loaded from: classes.dex */
public class c extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    protected final DataOutput f13924a;

    public c(DataOutput dataOutput) {
        this.f13924a = dataOutput;
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        this.f13924a.write(i4);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f13924a.write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        this.f13924a.write(bArr, i4, i10);
    }
}
