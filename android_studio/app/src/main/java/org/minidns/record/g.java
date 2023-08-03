package org.minidns.record;

import java.io.DataInputStream;
import java.io.IOException;
import org.minidns.constants.DnssecConstants;
import org.minidns.record.Record;
import org.minidns.record.i;

/* compiled from: DS.java */
/* loaded from: classes5.dex */
public class g extends i {
    public g(int i4, byte b10, byte b11, byte[] bArr) {
        super(i4, b10, b11, bArr);
    }

    public static g l(DataInputStream dataInputStream, int i4) throws IOException {
        i.b k10 = i.k(dataInputStream, i4);
        return new g(k10.f92949a, k10.f92950b, k10.f92951c, k10.f92952d);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.DS;
    }

    public g(int i4, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte b10, byte[] bArr) {
        super(i4, signatureAlgorithm, b10, bArr);
    }

    public g(int i4, DnssecConstants.SignatureAlgorithm signatureAlgorithm, DnssecConstants.DigestAlgorithm digestAlgorithm, byte[] bArr) {
        super(i4, signatureAlgorithm, digestAlgorithm, bArr);
    }
}
