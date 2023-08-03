package org.minidns.record;

import java.io.DataOutputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;

/* compiled from: RRWithTarget.java */
/* loaded from: classes5.dex */
public abstract class s extends h {

    /* renamed from: c  reason: collision with root package name */
    public final DnsName f92983c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public final DnsName f92984d;

    /* JADX INFO: Access modifiers changed from: protected */
    public s(DnsName dnsName) {
        this.f92983c = dnsName;
        this.f92984d = dnsName;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        this.f92983c.writeToStream(dataOutputStream);
    }

    public final DnsName g() {
        return this.f92983c;
    }

    public String toString() {
        return ((Object) this.f92983c) + ".";
    }
}
