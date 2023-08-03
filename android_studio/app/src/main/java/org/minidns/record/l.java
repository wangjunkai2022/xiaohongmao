package org.minidns.record;

import java.io.DataInputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: NS.java */
/* loaded from: classes5.dex */
public class l extends s {
    public l(DnsName dnsName) {
        super(dnsName);
    }

    public static l h(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        return new l(DnsName.parse(dataInputStream, bArr));
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.NS;
    }
}
