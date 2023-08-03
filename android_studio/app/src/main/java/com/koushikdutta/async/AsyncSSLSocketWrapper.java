package com.koushikdutta.async;

import android.content.Context;
import android.util.Base64;
import android.util.Pair;
import com.koushikdutta.async.AsyncSSLSocketWrapper;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.ListenCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.SimpleCancellable;
import com.koushikdutta.async.http.SSLEngineSNIConfigurator;
import com.koushikdutta.async.util.Allocator;
import com.koushikdutta.async.util.StreamUtility;
import com.koushikdutta.async.wrapper.AsyncSocketWrapper;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.math.BigInteger;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Calendar;
import java.util.Date;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.StrictHostnameVerifier;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cert.jcajce.JcaX509v3CertificateBuilder;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.ContentSigner;
import org.bouncycastle.operator.jcajce.JcaContentSignerBuilder;

/* loaded from: classes3.dex */
public class AsyncSSLSocketWrapper implements AsyncSocketWrapper, AsyncSSLSocket {

    /* renamed from: v  reason: collision with root package name */
    private static final String f44114v = "AsyncSSLSocketWrapper";

    /* renamed from: w  reason: collision with root package name */
    static SSLContext f44115w;

    /* renamed from: x  reason: collision with root package name */
    static SSLContext f44116x;

    /* renamed from: y  reason: collision with root package name */
    static TrustManager[] f44117y;

    /* renamed from: z  reason: collision with root package name */
    static HostnameVerifier f44118z;

    /* renamed from: a  reason: collision with root package name */
    AsyncSocket f44119a;

    /* renamed from: b  reason: collision with root package name */
    BufferedDataSink f44120b;

    /* renamed from: c  reason: collision with root package name */
    boolean f44121c;

    /* renamed from: d  reason: collision with root package name */
    SSLEngine f44122d;

    /* renamed from: e  reason: collision with root package name */
    boolean f44123e;

    /* renamed from: f  reason: collision with root package name */
    private int f44124f;

    /* renamed from: g  reason: collision with root package name */
    private String f44125g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f44126h;

    /* renamed from: i  reason: collision with root package name */
    HostnameVerifier f44127i;

    /* renamed from: j  reason: collision with root package name */
    HandshakeCallback f44128j;

    /* renamed from: k  reason: collision with root package name */
    X509Certificate[] f44129k;

    /* renamed from: l  reason: collision with root package name */
    WritableCallback f44130l;

    /* renamed from: m  reason: collision with root package name */
    DataCallback f44131m;

    /* renamed from: n  reason: collision with root package name */
    TrustManager[] f44132n;

    /* renamed from: o  reason: collision with root package name */
    boolean f44133o;

    /* renamed from: p  reason: collision with root package name */
    boolean f44134p;

    /* renamed from: q  reason: collision with root package name */
    Exception f44135q;

    /* renamed from: r  reason: collision with root package name */
    final ByteBufferList f44136r = new ByteBufferList();

    /* renamed from: s  reason: collision with root package name */
    final DataCallback f44137s;

    /* renamed from: t  reason: collision with root package name */
    ByteBufferList f44138t;

    /* renamed from: u  reason: collision with root package name */
    CompletedCallback f44139u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.koushikdutta.async.AsyncSSLSocketWrapper$10  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static class AnonymousClass10 implements ListenCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44140a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SSLEngineSNIConfigurator f44141b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SSLContext f44142c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ListenCallback f44143d;

        AnonymousClass10(int i4, SSLEngineSNIConfigurator sSLEngineSNIConfigurator, SSLContext sSLContext, ListenCallback listenCallback) {
            this.f44140a = i4;
            this.f44141b = sSLEngineSNIConfigurator;
            this.f44142c = sSLContext;
            this.f44143d = listenCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void f(AsyncSocket asyncSocket, ListenCallback listenCallback, Exception exc, AsyncSSLSocket asyncSSLSocket) {
            if (exc != null) {
                asyncSocket.close();
            } else {
                listenCallback.d0(asyncSSLSocket);
            }
        }

        @Override // com.koushikdutta.async.callback.ListenCallback
        public void E(AsyncServerSocket asyncServerSocket) {
            this.f44143d.E(asyncServerSocket);
        }

        @Override // com.koushikdutta.async.callback.ListenCallback
        public void d0(final AsyncSocket asyncSocket) {
            int i4 = this.f44140a;
            SSLEngine b10 = this.f44141b.b(this.f44142c, null, i4);
            final ListenCallback listenCallback = this.f44143d;
            AsyncSSLSocketWrapper.y0(asyncSocket, null, i4, b10, null, null, false, new HandshakeCallback() { // from class: com.koushikdutta.async.g
                @Override // com.koushikdutta.async.AsyncSSLSocketWrapper.HandshakeCallback
                public final void a(Exception exc, AsyncSSLSocket asyncSSLSocket) {
                    AsyncSSLSocketWrapper.AnonymousClass10.f(AsyncSocket.this, listenCallback, exc, asyncSSLSocket);
                }
            });
        }

        @Override // com.koushikdutta.async.callback.CompletedCallback
        public void g(Exception exc) {
            this.f44143d.g(exc);
        }
    }

    /* loaded from: classes3.dex */
    public interface HandshakeCallback {
        void a(Exception exc, AsyncSSLSocket asyncSSLSocket);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ObjectHolder<T> {

        /* renamed from: a  reason: collision with root package name */
        T f44154a;

        private ObjectHolder() {
        }
    }

    static {
        try {
            f44115w = SSLContext.getInstance("Default");
        } catch (Exception e4) {
            try {
                f44115w = SSLContext.getInstance("TLS");
                f44115w.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.1
                    @Override // javax.net.ssl.X509TrustManager
                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                        for (X509Certificate x509Certificate : x509CertificateArr) {
                            if (x509Certificate != null && x509Certificate.getCriticalExtensionOIDs() != null) {
                                x509Certificate.getCriticalExtensionOIDs().remove("2.5.29.15");
                            }
                        }
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public X509Certificate[] getAcceptedIssuers() {
                        return new X509Certificate[0];
                    }
                }}, null);
            } catch (Exception e10) {
                e4.printStackTrace();
                e10.printStackTrace();
            }
        }
        try {
            f44116x = SSLContext.getInstance("TLS");
            TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.2
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }
            }};
            f44117y = trustManagerArr;
            f44116x.init(null, trustManagerArr, null);
            f44118z = f.f44376a;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private AsyncSSLSocketWrapper(AsyncSocket asyncSocket, String str, int i4, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z9) {
        DataCallback dataCallback = new DataCallback() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.6

            /* renamed from: a  reason: collision with root package name */
            final Allocator f44147a = new Allocator().f(8192);

            /* renamed from: b  reason: collision with root package name */
            final ByteBufferList f44148b = new ByteBufferList();

            @Override // com.koushikdutta.async.callback.DataCallback
            public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                AsyncSSLSocketWrapper asyncSSLSocketWrapper = AsyncSSLSocketWrapper.this;
                if (asyncSSLSocketWrapper.f44121c) {
                    return;
                }
                try {
                    try {
                        asyncSSLSocketWrapper.f44121c = true;
                        byteBufferList.j(this.f44148b);
                        if (this.f44148b.w()) {
                            this.f44148b.b(this.f44148b.n());
                        }
                        ByteBuffer byteBuffer = ByteBufferList.f44241j;
                        while (true) {
                            if (byteBuffer.remaining() == 0 && this.f44148b.T() > 0) {
                                byteBuffer = this.f44148b.Q();
                            }
                            int remaining = byteBuffer.remaining();
                            int P = AsyncSSLSocketWrapper.this.f44136r.P();
                            ByteBuffer a10 = this.f44147a.a();
                            SSLEngineResult unwrap = AsyncSSLSocketWrapper.this.f44122d.unwrap(byteBuffer, a10);
                            AsyncSSLSocketWrapper asyncSSLSocketWrapper2 = AsyncSSLSocketWrapper.this;
                            asyncSSLSocketWrapper2.P(asyncSSLSocketWrapper2.f44136r, a10);
                            this.f44147a.g(AsyncSSLSocketWrapper.this.f44136r.P() - P);
                            if (unwrap.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                                Allocator allocator = this.f44147a;
                                allocator.f(allocator.d() * 2);
                            } else {
                                if (unwrap.getStatus() == SSLEngineResult.Status.BUFFER_UNDERFLOW) {
                                    this.f44148b.e(byteBuffer);
                                    if (this.f44148b.T() <= 1) {
                                        break;
                                    }
                                    this.f44148b.e(this.f44148b.n());
                                    byteBuffer = ByteBufferList.f44241j;
                                }
                                AsyncSSLSocketWrapper.this.x0(unwrap.getHandshakeStatus());
                                if (byteBuffer.remaining() != remaining && P == AsyncSSLSocketWrapper.this.f44136r.P()) {
                                    this.f44148b.e(byteBuffer);
                                    break;
                                }
                            }
                            remaining = -1;
                            AsyncSSLSocketWrapper.this.x0(unwrap.getHandshakeStatus());
                            if (byteBuffer.remaining() != remaining) {
                            }
                        }
                        AsyncSSLSocketWrapper.this.K0();
                    } catch (SSLException e4) {
                        AsyncSSLSocketWrapper.this.L0(e4);
                    }
                } finally {
                    AsyncSSLSocketWrapper.this.f44121c = false;
                }
            }
        };
        this.f44137s = dataCallback;
        this.f44138t = new ByteBufferList();
        this.f44119a = asyncSocket;
        this.f44127i = hostnameVerifier;
        this.f44133o = z9;
        this.f44132n = trustManagerArr;
        this.f44122d = sSLEngine;
        this.f44125g = str;
        this.f44124f = i4;
        sSLEngine.setUseClientMode(z9);
        BufferedDataSink bufferedDataSink = new BufferedDataSink(asyncSocket);
        this.f44120b = bufferedDataSink;
        bufferedDataSink.e0(new WritableCallback() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.4
            @Override // com.koushikdutta.async.callback.WritableCallback
            public void a() {
                WritableCallback writableCallback = AsyncSSLSocketWrapper.this.f44130l;
                if (writableCallback != null) {
                    writableCallback.a();
                }
            }
        });
        this.f44119a.X(new CompletedCallback() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.5
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                CompletedCallback completedCallback;
                AsyncSSLSocketWrapper asyncSSLSocketWrapper = AsyncSSLSocketWrapper.this;
                if (asyncSSLSocketWrapper.f44134p) {
                    return;
                }
                asyncSSLSocketWrapper.f44134p = true;
                asyncSSLSocketWrapper.f44135q = exc;
                if (asyncSSLSocketWrapper.f44136r.w() || (completedCallback = AsyncSSLSocketWrapper.this.f44139u) == null) {
                    return;
                }
                completedCallback.g(exc);
            }
        });
        this.f44119a.b0(dataCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, com.koushikdutta.async.AsyncSSLServerSocket] */
    public static /* synthetic */ void A0(Context context, String str, ObjectHolder objectHolder, AsyncServer asyncServer, InetAddress inetAddress, int i4, ListenCallback listenCallback) {
        try {
            Pair<KeyPair, Certificate> N0 = N0(context, str);
            objectHolder.f44154a = H0(asyncServer, ((KeyPair) N0.first).getPrivate(), (Certificate) N0.second, inetAddress, i4, listenCallback);
        } catch (Exception e4) {
            listenCallback.g(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r8v6, types: [T, com.koushikdutta.async.AsyncSSLServerSocket] */
    public static /* synthetic */ void B0(byte[] bArr, byte[] bArr2, ObjectHolder objectHolder, AsyncServer asyncServer, InetAddress inetAddress, int i4, ListenCallback listenCallback) {
        try {
            PKCS8EncodedKeySpec pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(bArr);
            objectHolder.f44154a = H0(asyncServer, KeyFactory.getInstance("RSA").generatePrivate(pKCS8EncodedKeySpec), CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr2)), inetAddress, i4, listenCallback);
        } catch (Exception e4) {
            listenCallback.g(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r8v1, types: [T, com.koushikdutta.async.AsyncSSLSocketWrapper$8] */
    public static /* synthetic */ void C0(final PrivateKey privateKey, final Certificate certificate, AsyncServer asyncServer, InetAddress inetAddress, int i4, ListenCallback listenCallback, ObjectHolder objectHolder) {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null);
            keyStore.setKeyEntry("key", privateKey, null, new Certificate[]{certificate});
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance("X509");
            keyManagerFactory.init(keyStore, "".toCharArray());
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(keyManagerFactory.getKeyManagers(), trustManagerFactory.getTrustManagers(), null);
            final AsyncServerSocket J0 = J0(asyncServer, sSLContext, inetAddress, i4, listenCallback);
            objectHolder.f44154a = new AsyncSSLServerSocket() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.8
                @Override // com.koushikdutta.async.AsyncSSLServerSocket
                public PrivateKey a() {
                    return privateKey;
                }

                @Override // com.koushikdutta.async.AsyncServerSocket
                public int b() {
                    return J0.b();
                }

                @Override // com.koushikdutta.async.AsyncSSLServerSocket
                public Certificate c() {
                    return certificate;
                }

                @Override // com.koushikdutta.async.AsyncServerSocket
                public void stop() {
                    J0.stop();
                }
            };
        } catch (Exception e4) {
            listenCallback.g(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D0(SimpleCancellable simpleCancellable, ConnectCallback connectCallback, Exception exc, AsyncSSLSocket asyncSSLSocket) {
        if (!simpleCancellable.i()) {
            if (asyncSSLSocket != null) {
                asyncSSLSocket.close();
            }
        } else if (exc != null) {
            connectCallback.a(exc, null);
        } else {
            connectCallback.a(null, asyncSSLSocket);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean E0(String str, SSLSession sSLSession) {
        return true;
    }

    public static AsyncSSLServerSocket F0(final Context context, final AsyncServer asyncServer, final String str, final InetAddress inetAddress, final int i4, final ListenCallback listenCallback) {
        final ObjectHolder objectHolder = new ObjectHolder();
        asyncServer.i0(new Runnable() { // from class: com.koushikdutta.async.c
            @Override // java.lang.Runnable
            public final void run() {
                AsyncSSLSocketWrapper.A0(context, str, objectHolder, asyncServer, inetAddress, i4, listenCallback);
            }
        });
        return (AsyncSSLServerSocket) objectHolder.f44154a;
    }

    public static AsyncSSLServerSocket G0(AsyncServer asyncServer, String str, String str2, InetAddress inetAddress, int i4, ListenCallback listenCallback) {
        return I0(asyncServer, Base64.decode(str, 0), Base64.decode(str2, 0), inetAddress, i4, listenCallback);
    }

    public static AsyncSSLServerSocket H0(final AsyncServer asyncServer, final PrivateKey privateKey, final Certificate certificate, final InetAddress inetAddress, final int i4, final ListenCallback listenCallback) {
        final ObjectHolder objectHolder = new ObjectHolder();
        asyncServer.i0(new Runnable() { // from class: com.koushikdutta.async.d
            @Override // java.lang.Runnable
            public final void run() {
                AsyncSSLSocketWrapper.C0(privateKey, certificate, asyncServer, inetAddress, i4, listenCallback, objectHolder);
            }
        });
        return (AsyncSSLServerSocket) objectHolder.f44154a;
    }

    public static AsyncSSLServerSocket I0(final AsyncServer asyncServer, final byte[] bArr, final byte[] bArr2, final InetAddress inetAddress, final int i4, final ListenCallback listenCallback) {
        final ObjectHolder objectHolder = new ObjectHolder();
        asyncServer.i0(new Runnable() { // from class: com.koushikdutta.async.e
            @Override // java.lang.Runnable
            public final void run() {
                AsyncSSLSocketWrapper.B0(bArr, bArr2, objectHolder, asyncServer, inetAddress, i4, listenCallback);
            }
        });
        return (AsyncSSLServerSocket) objectHolder.f44154a;
    }

    public static AsyncServerSocket J0(AsyncServer asyncServer, SSLContext sSLContext, InetAddress inetAddress, int i4, ListenCallback listenCallback) {
        return asyncServer.U(inetAddress, i4, new AnonymousClass10(i4, new SSLEngineSNIConfigurator() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.9
            @Override // com.koushikdutta.async.http.SSLEngineSNIConfigurator, com.koushikdutta.async.http.AsyncSSLEngineConfigurator
            public SSLEngine b(SSLContext sSLContext2, String str, int i10) {
                SSLEngine b10 = super.b(sSLContext2, str, i10);
                b10.setEnabledCipherSuites(new String[]{"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"});
                return b10;
            }
        }, sSLContext, listenCallback));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0(Exception exc) {
        HandshakeCallback handshakeCallback = this.f44128j;
        if (handshakeCallback != null) {
            this.f44128j = null;
            this.f44119a.b0(new DataCallback.NullDataCallback());
            this.f44119a.j();
            this.f44119a.j0(null);
            this.f44119a.close();
            handshakeCallback.a(exc, null);
            return;
        }
        CompletedCallback B = B();
        if (B != null) {
            B.g(exc);
        }
    }

    private static Certificate M0(KeyPair keyPair, String str) throws Exception {
        BouncyCastleProvider bouncyCastleProvider = new BouncyCastleProvider();
        Security.addProvider(bouncyCastleProvider);
        long currentTimeMillis = System.currentTimeMillis();
        Date date = new Date(currentTimeMillis);
        X500Name x500Name = new X500Name("CN=" + str);
        BigInteger bigInteger = new BigInteger(Long.toString(currentTimeMillis));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(1, 1);
        Date time = calendar.getTime();
        ContentSigner build = new JcaContentSignerBuilder("SHA256WithRSA").build(keyPair.getPrivate());
        JcaX509v3CertificateBuilder jcaX509v3CertificateBuilder = new JcaX509v3CertificateBuilder(x500Name, bigInteger, date, time, x500Name, keyPair.getPublic());
        jcaX509v3CertificateBuilder.addExtension(new ASN1ObjectIdentifier("2.5.29.19"), true, new BasicConstraints(true));
        return new JcaX509CertificateConverter().setProvider(bouncyCastleProvider).getCertificate(jcaX509v3CertificateBuilder.build(build));
    }

    public static Pair<KeyPair, Certificate> N0(Context context, String str) throws Exception {
        KeyPair generateKeyPair;
        Certificate M0;
        File fileStreamPath = context.getFileStreamPath(str + "-key.txt");
        try {
            String[] split = StreamUtility.e(fileStreamPath).split("\n");
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(split[0], 0));
            PKCS8EncodedKeySpec pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(Base64.decode(split[1], 0));
            M0 = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(Base64.decode(split[2], 0)));
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            generateKeyPair = new KeyPair(keyFactory.generatePublic(x509EncodedKeySpec), keyFactory.generatePrivate(pKCS8EncodedKeySpec));
        } catch (Exception unused) {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048);
            generateKeyPair = keyPairGenerator.generateKeyPair();
            M0 = M0(generateKeyPair, str);
            StreamUtility.j(fileStreamPath, Base64.encodeToString(generateKeyPair.getPublic().getEncoded(), 2) + "\n" + Base64.encodeToString(generateKeyPair.getPrivate().getEncoded(), 2) + "\n" + Base64.encodeToString(M0.getEncoded(), 2));
        }
        return new Pair<>(generateKeyPair, M0);
    }

    public static Cancellable o0(AsyncServer asyncServer, String str, int i4, ConnectCallback connectCallback) {
        return p0(asyncServer, str, i4, false, connectCallback);
    }

    public static Cancellable p0(AsyncServer asyncServer, final String str, final int i4, final boolean z9, final ConnectCallback connectCallback) {
        final SimpleCancellable simpleCancellable = new SimpleCancellable();
        simpleCancellable.b(asyncServer.u(str, i4, new ConnectCallback() { // from class: com.koushikdutta.async.b
            @Override // com.koushikdutta.async.callback.ConnectCallback
            public final void a(Exception exc, AsyncSocket asyncSocket) {
                AsyncSSLSocketWrapper.z0(SimpleCancellable.this, connectCallback, str, i4, z9, exc, asyncSocket);
            }
        }));
        return simpleCancellable;
    }

    public static SSLContext t0() {
        return f44115w;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0(SSLEngineResult.HandshakeStatus handshakeStatus) {
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK) {
            this.f44122d.getDelegatedTask().run();
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
            a0(this.f44138t);
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
            this.f44137s.s(this, new ByteBufferList());
        }
        try {
            if (this.f44123e) {
                return;
            }
            if (this.f44122d.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING || this.f44122d.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                if (this.f44133o) {
                    boolean z9 = false;
                    try {
                        this.f44129k = (X509Certificate[]) this.f44122d.getSession().getPeerCertificates();
                        String str = this.f44125g;
                        if (str != null) {
                            HostnameVerifier hostnameVerifier = this.f44127i;
                            if (hostnameVerifier == null) {
                                new StrictHostnameVerifier().verify(this.f44125g, StrictHostnameVerifier.getCNs(this.f44129k[0]), StrictHostnameVerifier.getDNSSubjectAlts(this.f44129k[0]));
                            } else if (!hostnameVerifier.verify(str, this.f44122d.getSession())) {
                                throw new SSLException("hostname <" + this.f44125g + "> has been denied");
                            }
                        }
                        e = null;
                        z9 = true;
                    } catch (SSLException e4) {
                        e = e4;
                    }
                    this.f44123e = true;
                    if (!z9) {
                        AsyncSSLException asyncSSLException = new AsyncSSLException(e);
                        L0(asyncSSLException);
                        if (!asyncSSLException.getIgnore()) {
                            throw asyncSSLException;
                        }
                    }
                } else {
                    this.f44123e = true;
                }
                this.f44128j.a(null, this);
                this.f44128j = null;
                this.f44119a.j0(null);
                b().c0(new Runnable() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.7
                    @Override // java.lang.Runnable
                    public void run() {
                        WritableCallback writableCallback = AsyncSSLSocketWrapper.this.f44130l;
                        if (writableCallback != null) {
                            writableCallback.a();
                        }
                    }
                });
                K0();
            }
        } catch (Exception e10) {
            L0(e10);
        }
    }

    public static void y0(AsyncSocket asyncSocket, String str, int i4, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z9, final HandshakeCallback handshakeCallback) {
        AsyncSSLSocketWrapper asyncSSLSocketWrapper = new AsyncSSLSocketWrapper(asyncSocket, str, i4, sSLEngine, trustManagerArr, hostnameVerifier, z9);
        asyncSSLSocketWrapper.f44128j = handshakeCallback;
        asyncSocket.j0(new CompletedCallback() { // from class: com.koushikdutta.async.AsyncSSLSocketWrapper.3
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (exc != null) {
                    HandshakeCallback.this.a(exc, null);
                } else {
                    HandshakeCallback.this.a(new SSLException("socket closed during handshake"), null);
                }
            }
        });
        try {
            asyncSSLSocketWrapper.f44122d.beginHandshake();
            asyncSSLSocketWrapper.x0(asyncSSLSocketWrapper.f44122d.getHandshakeStatus());
        } catch (SSLException e4) {
            asyncSSLSocketWrapper.L0(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z0(final SimpleCancellable simpleCancellable, final ConnectCallback connectCallback, String str, int i4, boolean z9, Exception exc, AsyncSocket asyncSocket) {
        if (exc != null) {
            if (simpleCancellable.i()) {
                connectCallback.a(exc, null);
                return;
            }
            return;
        }
        y0(asyncSocket, str, i4, (z9 ? f44116x : f44115w).createSSLEngine(str, i4), z9 ? f44117y : null, z9 ? f44118z : null, true, new HandshakeCallback() { // from class: com.koushikdutta.async.a
            @Override // com.koushikdutta.async.AsyncSSLSocketWrapper.HandshakeCallback
            public final void a(Exception exc2, AsyncSSLSocket asyncSSLSocket) {
                AsyncSSLSocketWrapper.D0(SimpleCancellable.this, connectCallback, exc2, asyncSSLSocket);
            }
        });
    }

    @Override // com.koushikdutta.async.DataEmitter
    public CompletedCallback B() {
        return this.f44139u;
    }

    public void K0() {
        CompletedCallback completedCallback;
        Util.a(this, this.f44136r);
        if (!this.f44134p || this.f44136r.w() || (completedCallback = this.f44139u) == null) {
            return;
        }
        completedCallback.g(this.f44135q);
    }

    void P(ByteBufferList byteBufferList, ByteBuffer byteBuffer) {
        byteBuffer.flip();
        if (byteBuffer.hasRemaining()) {
            byteBufferList.b(byteBuffer);
        } else {
            ByteBufferList.M(byteBuffer);
        }
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void X(CompletedCallback completedCallback) {
        this.f44139u = completedCallback;
    }

    @Override // com.koushikdutta.async.wrapper.AsyncSocketWrapper
    public AsyncSocket a() {
        return this.f44119a;
    }

    @Override // com.koushikdutta.async.DataSink
    public void a0(ByteBufferList byteBufferList) {
        int capacity;
        if (!this.f44126h && this.f44120b.y() <= 0) {
            this.f44126h = true;
            ByteBuffer y9 = ByteBufferList.y(d0(byteBufferList.P()));
            SSLEngineResult sSLEngineResult = null;
            do {
                if (!this.f44123e || byteBufferList.P() != 0) {
                    int P = byteBufferList.P();
                    try {
                        ByteBuffer[] o9 = byteBufferList.o();
                        sSLEngineResult = this.f44122d.wrap(o9, y9);
                        byteBufferList.d(o9);
                        y9.flip();
                        this.f44138t.b(y9);
                        if (this.f44138t.P() > 0) {
                            this.f44120b.a0(this.f44138t);
                        }
                        capacity = y9.capacity();
                    } catch (SSLException e4) {
                        e = e4;
                    }
                    try {
                        if (sSLEngineResult.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                            y9 = ByteBufferList.y(capacity * 2);
                            P = -1;
                        } else {
                            y9 = ByteBufferList.y(d0(byteBufferList.P()));
                            x0(sSLEngineResult.getHandshakeStatus());
                        }
                    } catch (SSLException e10) {
                        e = e10;
                        y9 = null;
                        L0(e);
                        if (P != byteBufferList.P()) {
                        }
                        if (this.f44120b.y() != 0) {
                            this.f44126h = false;
                            ByteBufferList.M(y9);
                        }
                    }
                    if (P != byteBufferList.P() && (sSLEngineResult == null || sSLEngineResult.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NEED_WRAP)) {
                        break;
                    }
                } else {
                    break;
                }
            } while (this.f44120b.y() != 0);
            this.f44126h = false;
            ByteBufferList.M(y9);
        }
    }

    @Override // com.koushikdutta.async.AsyncSocket, com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44119a.b();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void b0(DataCallback dataCallback) {
        this.f44131m = dataCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void close() {
        this.f44119a.close();
    }

    int d0(int i4) {
        int i10 = (i4 * 3) / 2;
        if (i10 == 0) {
            return 8192;
        }
        return i10;
    }

    @Override // com.koushikdutta.async.DataSink
    public void e0(WritableCallback writableCallback) {
        this.f44130l = writableCallback;
    }

    @Override // com.koushikdutta.async.DataSink
    public CompletedCallback f0() {
        return this.f44119a.f0();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean h0() {
        return this.f44119a.h0();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean i() {
        return this.f44119a.i();
    }

    @Override // com.koushikdutta.async.DataSink
    public boolean isOpen() {
        return this.f44119a.isOpen();
    }

    @Override // com.koushikdutta.async.DataSink
    public void j() {
        this.f44119a.j();
    }

    @Override // com.koushikdutta.async.DataSink
    public void j0(CompletedCallback completedCallback) {
        this.f44119a.j0(completedCallback);
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void k() {
        this.f44119a.k();
        K0();
    }

    @Override // com.koushikdutta.async.AsyncSSLSocket
    public SSLEngine l() {
        return this.f44122d;
    }

    @Override // com.koushikdutta.async.wrapper.DataEmitterWrapper
    public DataEmitter l0() {
        return this.f44119a;
    }

    @Override // com.koushikdutta.async.AsyncSSLSocket
    public X509Certificate[] m() {
        return this.f44129k;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public String n() {
        return null;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void pause() {
        this.f44119a.pause();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public DataCallback r0() {
        return this.f44131m;
    }

    @Override // com.koushikdutta.async.DataSink
    public WritableCallback v() {
        return this.f44130l;
    }

    public String v0() {
        return this.f44125g;
    }

    public int w0() {
        return this.f44124f;
    }
}
