package e9;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.RouteInfo;
import java.util.ArrayList;
import java.util.List;
import org.minidns.b;

/* compiled from: AndroidUsingLinkProperties.java */
/* loaded from: classes5.dex */
public class a extends org.minidns.dnsserverlookup.a {

    /* renamed from: d  reason: collision with root package name */
    private final ConnectivityManager f63428d;

    public a(Context context) {
        super(a.class.getSimpleName(), 998);
        this.f63428d = (ConnectivityManager) context.getSystemService("connectivity");
    }

    @TargetApi(21)
    private static boolean c(LinkProperties linkProperties) {
        for (RouteInfo routeInfo : linkProperties.getRoutes()) {
            if (routeInfo.isDefaultRoute()) {
                return true;
            }
        }
        return false;
    }

    public static a d(Context context) {
        a aVar = new a(context);
        b.J(aVar);
        return aVar;
    }

    @Override // org.minidns.dnsserverlookup.d
    public boolean H() {
        return true;
    }

    @Override // org.minidns.dnsserverlookup.a, org.minidns.dnsserverlookup.d
    @TargetApi(21)
    public List<String> j() {
        Network[] allNetworks = this.f63428d.getAllNetworks();
        if (allNetworks == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allNetworks.length * 2);
        for (Network network : allNetworks) {
            LinkProperties linkProperties = this.f63428d.getLinkProperties(network);
            if (linkProperties != null) {
                if (c(linkProperties)) {
                    arrayList.addAll(0, org.minidns.dnsserverlookup.a.b(linkProperties.getDnsServers()));
                } else {
                    arrayList.addAll(org.minidns.dnsserverlookup.a.b(linkProperties.getDnsServers()));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }
}
