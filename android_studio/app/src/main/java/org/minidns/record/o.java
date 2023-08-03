package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.minidns.record.Record;

/* compiled from: OPENPGPKEY.java */
/* loaded from: classes5.dex */
public class o extends h {

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f92968c;

    /* renamed from: d  reason: collision with root package name */
    private String f92969d;

    o(byte[] bArr) {
        this.f92968c = bArr;
    }

    public static o i(DataInputStream dataInputStream, int i4) throws IOException {
        byte[] bArr = new byte[i4];
        dataInputStream.readFully(bArr);
        return new o(bArr);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.OPENPGPKEY;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.f92968c);
    }

    public byte[] g() {
        return (byte[]) this.f92968c.clone();
    }

    public String h() {
        if (this.f92969d == null) {
            this.f92969d = org.minidns.util.b.a(this.f92968c);
        }
        return this.f92969d;
    }

    public String toString() {
        return h();
    }
}
