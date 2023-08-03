package org.minidns.record;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.Inet4Address;
import org.minidns.record.Record;

/* compiled from: A.java */
/* loaded from: classes5.dex */
public class a extends j {

    /* renamed from: e  reason: collision with root package name */
    static final /* synthetic */ boolean f92924e = false;

    public a(Inet4Address inet4Address) {
        super(inet4Address.getAddress());
    }

    public static a i(DataInputStream dataInputStream) throws IOException {
        byte[] bArr = new byte[4];
        dataInputStream.readFully(bArr);
        return new a(bArr);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.A;
    }

    public String toString() {
        return Integer.toString(this.f92953c[0] & 255) + "." + Integer.toString(this.f92953c[1] & 255) + "." + Integer.toString(this.f92953c[2] & 255) + "." + Integer.toString(this.f92953c[3] & 255);
    }

    public a(int i4, int i10, int i11, int i12) {
        super(new byte[]{(byte) i4, (byte) i10, (byte) i11, (byte) i12});
        if (i4 < 0 || i4 > 255 || i10 < 0 || i10 > 255 || i11 < 0 || i11 > 255 || i12 < 0 || i12 > 255) {
            throw new IllegalArgumentException();
        }
    }

    public a(byte[] bArr) {
        super(bArr);
        if (bArr.length != 4) {
            throw new IllegalArgumentException("IPv4 address in A record is always 4 byte");
        }
    }

    public a(CharSequence charSequence) {
        this(org.minidns.util.g.a(charSequence));
    }
}
