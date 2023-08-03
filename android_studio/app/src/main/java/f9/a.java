package f9;

import java.net.IDN;
import org.minidns.dnsname.DnsName;

/* compiled from: DefaultIdnaTransformator.java */
/* loaded from: classes5.dex */
public class a implements b {
    @Override // f9.b
    public String a(String str) {
        return IDN.toUnicode(str);
    }

    @Override // f9.b
    public String b(String str) {
        DnsName dnsName = DnsName.ROOT;
        if (dnsName.ace.equals(str)) {
            return dnsName.ace;
        }
        return IDN.toASCII(str);
    }
}
