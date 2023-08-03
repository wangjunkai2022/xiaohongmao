package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.minidns.record.Record;

/* compiled from: UNKNOWN.java */
/* loaded from: classes5.dex */
public class w extends h {

    /* renamed from: c  reason: collision with root package name */
    private final Record.TYPE f92998c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f92999d;

    private w(DataInputStream dataInputStream, int i4, Record.TYPE type) throws IOException {
        this.f92998c = type;
        byte[] bArr = new byte[i4];
        this.f92999d = bArr;
        dataInputStream.readFully(bArr);
    }

    public static w g(DataInputStream dataInputStream, int i4, Record.TYPE type) throws IOException {
        return new w(dataInputStream, i4, type);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return this.f92998c;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.f92999d);
    }
}
