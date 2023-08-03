package org.minidns.hla;

import org.minidns.dnsname.DnsName;

/* loaded from: classes5.dex */
public enum SrvProto {
    tcp,
    udp;
    
    public final DnsName dnsName = DnsName.from('_' + name());

    SrvProto() {
    }
}
