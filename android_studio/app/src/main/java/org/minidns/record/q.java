package org.minidns.record;

import java.io.DataInputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: PTR.java */
/* loaded from: classes5.dex */
public class q extends s {
    q(String str) {
        this(DnsName.from(str));
    }

    public static q h(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        return new q(DnsName.parse(dataInputStream, bArr));
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.PTR;
    }

    q(DnsName dnsName) {
        super(dnsName);
    }
}
