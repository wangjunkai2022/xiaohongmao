package org.minidns.record;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* compiled from: InternetAddressRR.java */
/* loaded from: classes5.dex */
public abstract class j extends h {

    /* renamed from: c  reason: collision with root package name */
    protected final byte[] f92953c;

    /* renamed from: d  reason: collision with root package name */
    private InetAddress f92954d;

    /* JADX INFO: Access modifiers changed from: protected */
    public j(byte[] bArr) {
        this.f92953c = bArr;
    }

    @Override // org.minidns.record.h
    public final void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.f92953c);
    }

    public final InetAddress g() {
        InetAddress inetAddress = this.f92954d;
        if (inetAddress == null) {
            try {
                inetAddress = InetAddress.getByAddress(this.f92953c);
                this.f92954d = inetAddress;
            } catch (UnknownHostException e4) {
                throw new IllegalStateException(e4);
            }
        }
        return inetAddress;
    }

    public final byte[] h() {
        return (byte[]) this.f92953c.clone();
    }
}
