package okhttp3;

import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import okhttp3.internal.Util;

/* compiled from: Handshake.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 &2\u00020\u0001:\u0001&B9\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\n¢\u0006\u0002\u0010\u000bJ\r\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\b\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\b J\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0002\b!J\u0013\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\b\"J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0002\b#J\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b$J\b\u0010%\u001a\u00020\u0017H\u0016R\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\fR\u0019\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8G¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010R!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00078GX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0011\u0010\rR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u000f8G¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0010R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0015R\u0018\u0010\u0016\u001a\u00020\u0017*\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lokhttp3/Handshake;", "", "tlsVersion", "Lokhttp3/TlsVersion;", "cipherSuite", "Lokhttp3/CipherSuite;", "localCertificates", "", "Ljava/security/cert/Certificate;", "peerCertificatesFn", "Lkotlin/Function0;", "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V", "()Lokhttp3/CipherSuite;", "()Ljava/util/List;", "localPrincipal", "Ljava/security/Principal;", "()Ljava/security/Principal;", "peerCertificates", "peerCertificates$delegate", "Lkotlin/Lazy;", "peerPrincipal", "()Lokhttp3/TlsVersion;", "name", "", "getName", "(Ljava/security/cert/Certificate;)Ljava/lang/String;", "-deprecated_cipherSuite", "equals", "", "other", "hashCode", "", "-deprecated_localCertificates", "-deprecated_localPrincipal", "-deprecated_peerCertificates", "-deprecated_peerPrincipal", "-deprecated_tlsVersion", "toString", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class Handshake {
    public static final Companion Companion = new Companion(null);
    @g
    private final CipherSuite cipherSuite;
    @g
    private final List<Certificate> localCertificates;
    @g
    private final Lazy peerCertificates$delegate;
    @g
    private final TlsVersion tlsVersion;

    /* compiled from: Handshake.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0007J4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0007J\u0011\u0010\u0010\u001a\u00020\u0004*\u00020\u0006H\u0007¢\u0006\u0002\b\u0003J!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r*\f\u0012\u0006\b\u0001\u0012\u00020\u000e\u0018\u00010\u0012H\u0002¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, d2 = {"Lokhttp3/Handshake$Companion;", "", "()V", "get", "Lokhttp3/Handshake;", "sslSession", "Ljavax/net/ssl/SSLSession;", "-deprecated_get", "tlsVersion", "Lokhttp3/TlsVersion;", "cipherSuite", "Lokhttp3/CipherSuite;", "peerCertificates", "", "Ljava/security/cert/Certificate;", "localCertificates", "handshake", "toImmutableList", "", "([Ljava/security/cert/Certificate;)Ljava/util/List;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        private final List<Certificate> toImmutableList(Certificate[] certificateArr) {
            List<Certificate> emptyList;
            if (certificateArr != null) {
                return Util.immutableListOf((Certificate[]) Arrays.copyOf(certificateArr, certificateArr.length));
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "sslSession.handshake()", imports = {}))
        @g
        @JvmName(name = "-deprecated_get")
        /* renamed from: -deprecated_get  reason: not valid java name */
        public final Handshake m1613deprecated_get(@g SSLSession sslSession) throws IOException {
            Intrinsics.checkNotNullParameter(sslSession, "sslSession");
            return get(sslSession);
        }

        @JvmStatic
        @g
        @JvmName(name = "get")
        public final Handshake get(@g SSLSession handshake) throws IOException {
            List<Certificate> emptyList;
            Intrinsics.checkNotNullParameter(handshake, "$this$handshake");
            String cipherSuite = handshake.getCipherSuite();
            if (cipherSuite != null) {
                int hashCode = cipherSuite.hashCode();
                if (hashCode == 1019404634 ? !cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") : !(hashCode == 1208658923 && cipherSuite.equals("SSL_NULL_WITH_NULL_NULL"))) {
                    CipherSuite forJavaName = CipherSuite.Companion.forJavaName(cipherSuite);
                    String protocol = handshake.getProtocol();
                    if (protocol != null) {
                        if (!Intrinsics.areEqual("NONE", protocol)) {
                            TlsVersion forJavaName2 = TlsVersion.Companion.forJavaName(protocol);
                            try {
                                emptyList = toImmutableList(handshake.getPeerCertificates());
                            } catch (SSLPeerUnverifiedException unused) {
                                emptyList = CollectionsKt__CollectionsKt.emptyList();
                            }
                            return new Handshake(forJavaName2, forJavaName, toImmutableList(handshake.getLocalCertificates()), new Handshake$Companion$handshake$1(emptyList));
                        }
                        throw new IOException("tlsVersion == NONE");
                    }
                    throw new IllegalStateException("tlsVersion == null".toString());
                }
                throw new IOException("cipherSuite == " + cipherSuite);
            }
            throw new IllegalStateException("cipherSuite == null".toString());
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public final Handshake get(@g TlsVersion tlsVersion, @g CipherSuite cipherSuite, @g List<? extends Certificate> peerCertificates, @g List<? extends Certificate> localCertificates) {
            Intrinsics.checkNotNullParameter(tlsVersion, "tlsVersion");
            Intrinsics.checkNotNullParameter(cipherSuite, "cipherSuite");
            Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
            Intrinsics.checkNotNullParameter(localCertificates, "localCertificates");
            return new Handshake(tlsVersion, cipherSuite, Util.toImmutableList(localCertificates), new Handshake$Companion$get$1(Util.toImmutableList(peerCertificates)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(@g TlsVersion tlsVersion, @g CipherSuite cipherSuite, @g List<? extends Certificate> localCertificates, @g Function0<? extends List<? extends Certificate>> peerCertificatesFn) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(tlsVersion, "tlsVersion");
        Intrinsics.checkNotNullParameter(cipherSuite, "cipherSuite");
        Intrinsics.checkNotNullParameter(localCertificates, "localCertificates");
        Intrinsics.checkNotNullParameter(peerCertificatesFn, "peerCertificatesFn");
        this.tlsVersion = tlsVersion;
        this.cipherSuite = cipherSuite;
        this.localCertificates = localCertificates;
        lazy = LazyKt__LazyJVMKt.lazy(new Handshake$peerCertificates$2(peerCertificatesFn));
        this.peerCertificates$delegate = lazy;
    }

    @JvmStatic
    @g
    @JvmName(name = "get")
    public static final Handshake get(@g SSLSession sSLSession) throws IOException {
        return Companion.get(sSLSession);
    }

    @JvmStatic
    @g
    public static final Handshake get(@g TlsVersion tlsVersion, @g CipherSuite cipherSuite, @g List<? extends Certificate> list, @g List<? extends Certificate> list2) {
        return Companion.get(tlsVersion, cipherSuite, list, list2);
    }

    private final String getName(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        Intrinsics.checkNotNullExpressionValue(type, "type");
        return type;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "cipherSuite", imports = {}))
    @g
    @JvmName(name = "-deprecated_cipherSuite")
    /* renamed from: -deprecated_cipherSuite  reason: not valid java name */
    public final CipherSuite m1607deprecated_cipherSuite() {
        return this.cipherSuite;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "localCertificates", imports = {}))
    @g
    @JvmName(name = "-deprecated_localCertificates")
    /* renamed from: -deprecated_localCertificates  reason: not valid java name */
    public final List<Certificate> m1608deprecated_localCertificates() {
        return this.localCertificates;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "localPrincipal", imports = {}))
    @h
    @JvmName(name = "-deprecated_localPrincipal")
    /* renamed from: -deprecated_localPrincipal  reason: not valid java name */
    public final Principal m1609deprecated_localPrincipal() {
        return localPrincipal();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "peerCertificates", imports = {}))
    @g
    @JvmName(name = "-deprecated_peerCertificates")
    /* renamed from: -deprecated_peerCertificates  reason: not valid java name */
    public final List<Certificate> m1610deprecated_peerCertificates() {
        return peerCertificates();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "peerPrincipal", imports = {}))
    @h
    @JvmName(name = "-deprecated_peerPrincipal")
    /* renamed from: -deprecated_peerPrincipal  reason: not valid java name */
    public final Principal m1611deprecated_peerPrincipal() {
        return peerPrincipal();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "tlsVersion", imports = {}))
    @g
    @JvmName(name = "-deprecated_tlsVersion")
    /* renamed from: -deprecated_tlsVersion  reason: not valid java name */
    public final TlsVersion m1612deprecated_tlsVersion() {
        return this.tlsVersion;
    }

    @g
    @JvmName(name = "cipherSuite")
    public final CipherSuite cipherSuite() {
        return this.cipherSuite;
    }

    public boolean equals(@h Object obj) {
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.tlsVersion == this.tlsVersion && Intrinsics.areEqual(handshake.cipherSuite, this.cipherSuite) && Intrinsics.areEqual(handshake.peerCertificates(), peerCertificates()) && Intrinsics.areEqual(handshake.localCertificates, this.localCertificates)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((527 + this.tlsVersion.hashCode()) * 31) + this.cipherSuite.hashCode()) * 31) + peerCertificates().hashCode()) * 31) + this.localCertificates.hashCode();
    }

    @g
    @JvmName(name = "localCertificates")
    public final List<Certificate> localCertificates() {
        return this.localCertificates;
    }

    @h
    @JvmName(name = "localPrincipal")
    public final Principal localPrincipal() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.localCertificates);
        if (!(firstOrNull instanceof X509Certificate)) {
            firstOrNull = null;
        }
        X509Certificate x509Certificate = (X509Certificate) firstOrNull;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    @g
    @JvmName(name = "peerCertificates")
    public final List<Certificate> peerCertificates() {
        return (List) this.peerCertificates$delegate.getValue();
    }

    @h
    @JvmName(name = "peerPrincipal")
    public final Principal peerPrincipal() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) peerCertificates());
        if (!(firstOrNull instanceof X509Certificate)) {
            firstOrNull = null;
        }
        X509Certificate x509Certificate = (X509Certificate) firstOrNull;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    @g
    @JvmName(name = "tlsVersion")
    public final TlsVersion tlsVersion() {
        return this.tlsVersion;
    }

    @g
    public String toString() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<Certificate> peerCertificates = peerCertificates();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(peerCertificates, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Certificate certificate : peerCertificates) {
            arrayList.add(getName(certificate));
        }
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Handshake{");
        sb.append("tlsVersion=");
        sb.append(this.tlsVersion);
        sb.append(' ');
        sb.append("cipherSuite=");
        sb.append(this.cipherSuite);
        sb.append(' ');
        sb.append("peerCertificates=");
        sb.append(obj);
        sb.append(' ');
        sb.append("localCertificates=");
        List<Certificate> list = this.localCertificates;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (Certificate certificate2 : list) {
            arrayList2.add(getName(certificate2));
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
