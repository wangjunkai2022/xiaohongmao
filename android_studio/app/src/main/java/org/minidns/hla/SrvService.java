package org.minidns.hla;

import org.minidns.dnsname.DnsName;

/* loaded from: classes5.dex */
public enum SrvService {
    xmpp_client,
    xmpp_server;
    
    public final DnsName dnsName;

    SrvService() {
        String replaceAll = name().replaceAll("_", "-");
        this.dnsName = DnsName.from('_' + replaceAll);
    }
}
