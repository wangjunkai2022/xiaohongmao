package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.jsoup.nodes.f;

/* compiled from: Dns.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\b"}, d2 = {"Lokhttp3/Dns;", "", "lookup", "", "Ljava/net/InetAddress;", "hostname", "", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public interface Dns {
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final Dns SYSTEM = new Companion.DnsSystem();

    /* compiled from: Dns.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\u0006"}, d2 = {"Lokhttp3/Dns$Companion;", "", "()V", f.f91866g, "Lokhttp3/Dns;", "DnsSystem", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = null;

        /* compiled from: Dns.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lokhttp3/Dns$Companion$DnsSystem;", "Lokhttp3/Dns;", "()V", "lookup", "", "Ljava/net/InetAddress;", "hostname", "", "okhttp"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes4.dex */
        private static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            @g
            public List<InetAddress> lookup(@g String hostname) {
                List<InetAddress> list;
                Intrinsics.checkNotNullParameter(hostname, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(hostname);
                    Intrinsics.checkNotNullExpressionValue(allByName, "InetAddress.getAllByName(hostname)");
                    list = ArraysKt___ArraysKt.toList(allByName);
                    return list;
                } catch (NullPointerException e4) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + hostname);
                    unknownHostException.initCause(e4);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @g
    List<InetAddress> lookup(@g String str) throws UnknownHostException;
}
