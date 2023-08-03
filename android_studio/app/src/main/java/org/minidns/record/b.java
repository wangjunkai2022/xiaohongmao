package org.minidns.record;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.Inet6Address;
import org.minidns.record.Record;

/* compiled from: AAAA.java */
/* loaded from: classes5.dex */
public class b extends j {

    /* renamed from: e  reason: collision with root package name */
    static final /* synthetic */ boolean f92925e = false;

    public b(Inet6Address inet6Address) {
        super(inet6Address.getAddress());
    }

    public static b i(DataInputStream dataInputStream) throws IOException {
        byte[] bArr = new byte[16];
        dataInputStream.readFully(bArr);
        return new b(bArr);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.AAAA;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < this.f92953c.length; i4 += 2) {
            if (i4 != 0) {
                sb.append(':');
            }
            byte[] bArr = this.f92953c;
            sb.append(Integer.toHexString(((bArr[i4] & 255) << 8) + (bArr[i4 + 1] & 255)));
        }
        return sb.toString();
    }

    public b(byte[] bArr) {
        super(bArr);
        if (bArr.length != 16) {
            throw new IllegalArgumentException("IPv6 address in AAAA record is always 16 byte");
        }
    }

    public b(CharSequence charSequence) {
        this(org.minidns.util.g.b(charSequence));
    }
}
