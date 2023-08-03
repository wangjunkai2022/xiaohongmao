.class public Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;,
        Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
    }
.end annotation


# static fields
.field private static final v:Ljava/lang/String; = "AsyncSSLSocketWrapper"

.field static w:Ljavax/net/ssl/SSLContext;

.field static x:Ljavax/net/ssl/SSLContext;

.field static y:[Ljavax/net/ssl/TrustManager;

.field static z:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field a:Lcom/koushikdutta/async/AsyncSocket;

.field b:Lcom/koushikdutta/async/BufferedDataSink;

.field c:Z

.field d:Ljavax/net/ssl/SSLEngine;

.field e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field i:Ljavax/net/ssl/HostnameVerifier;

.field j:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

.field k:[Ljava/security/cert/X509Certificate;

.field l:Lcom/koushikdutta/async/callback/WritableCallback;

.field m:Lcom/koushikdutta/async/callback/DataCallback;

.field n:[Ljavax/net/ssl/TrustManager;

.field o:Z

.field p:Z

.field q:Ljava/lang/Exception;

.field final r:Lcom/koushikdutta/async/ByteBufferList;

.field final s:Lcom/koushikdutta/async/callback/DataCallback;

.field t:Lcom/koushikdutta/async/ByteBufferList;

.field u:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "TLS"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Default"

    .line 1
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    sput-object v4, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2
    :try_start_1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    sput-object v5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    new-array v5, v2, [Ljavax/net/ssl/TrustManager;

    .line 3
    new-instance v6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;-><init>()V

    aput-object v6, v5, v1

    .line 4
    sget-object v6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v6, v3, v5, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    .line 5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->x:Ljavax/net/ssl/SSLContext;

    new-array v0, v2, [Ljavax/net/ssl/TrustManager;

    .line 8
    new-instance v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;

    invoke-direct {v2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->y:[Ljavax/net/ssl/TrustManager;

    .line 9
    sget-object v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->x:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1, v3, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 10
    sget-object v0, Lcom/koushikdutta/async/f;->a:Lcom/koushikdutta/async/f;

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->z:Ljavax/net/ssl/HostnameVerifier;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    .line 3
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->s:Lcom/koushikdutta/async/callback/DataCallback;

    .line 4
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->t:Lcom/koushikdutta/async/ByteBufferList;

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 6
    iput-object p6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->i:Ljavax/net/ssl/HostnameVerifier;

    .line 7
    iput-boolean p7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->o:Z

    .line 8
    iput-object p5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->n:[Ljavax/net/ssl/TrustManager;

    .line 9
    iput-object p4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    .line 10
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->f:I

    .line 12
    invoke-virtual {p4, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 13
    new-instance p2, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/BufferedDataSink;

    .line 14
    new-instance p1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/BufferedDataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 15
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    new-instance p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 16
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method private static synthetic A0(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->N0(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    .line 2
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/security/KeyPair;

    .line 3
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/security/cert/Certificate;

    .line 4
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    move-object v0, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->H0(Lcom/koushikdutta/async/AsyncServer;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;

    move-result-object p0

    iput-object p0, p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-interface {p6, p0}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static synthetic B0([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p0, "X.509"

    .line 2
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    const-string p0, "RSA"

    .line 3
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    move-object v2, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 4
    invoke-static/range {v2 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->H0(Lcom/koushikdutta/async/AsyncServer;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;

    move-result-object p0

    iput-object p0, p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-interface {p6, p0}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static synthetic C0(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "key"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 3
    invoke-virtual {v0, v2, p0, v1, v3}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    const-string v2, "X509"

    .line 4
    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    const-string v3, ""

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 6
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v0, "TLS"

    .line 8
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 9
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 10
    invoke-static {p2, v0, p3, p4, p5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->J0(Lcom/koushikdutta/async/AsyncServer;Ljavax/net/ssl/SSLContext;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p2

    .line 11
    new-instance p3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;

    invoke-direct {p3, p0, p1, p2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServerSocket;)V

    iput-object p3, p6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-interface {p5, p0}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static synthetic D0(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->i()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Lcom/koushikdutta/async/DataEmitter;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p1, p2, p0}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p1, p0, p3}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    :goto_0
    return-void
.end method

.method public static synthetic E(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->D0(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void
.end method

.method private static synthetic E0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static F0(Landroid/content/Context;Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 10

    .line 1
    new-instance v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;)V

    .line 2
    new-instance v9, Lcom/koushikdutta/async/c;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, v8

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    invoke-virtual {p1, v9}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    .line 3
    iget-object p0, v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/AsyncSSLServerSocket;

    return-object p0
.end method

.method public static G0(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->I0(Lcom/koushikdutta/async/AsyncServer;[B[BLjava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Lcom/koushikdutta/async/AsyncServer;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 10

    .line 1
    new-instance v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;)V

    .line 2
    new-instance v9, Lcom/koushikdutta/async/d;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/d;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V

    invoke-virtual {p0, v9}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    .line 3
    iget-object p0, v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/AsyncSSLServerSocket;

    return-object p0
.end method

.method public static I0(Lcom/koushikdutta/async/AsyncServer;[B[BLjava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 10

    .line 1
    new-instance v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;)V

    .line 2
    new-instance v9, Lcom/koushikdutta/async/e;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, v8

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/e;-><init>([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    invoke-virtual {p0, v9}, Lcom/koushikdutta/async/AsyncServer;->i0(Ljava/lang/Runnable;)V

    .line 3
    iget-object p0, v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/AsyncSSLServerSocket;

    return-object p0
.end method

.method public static J0(Lcom/koushikdutta/async/AsyncServer;Ljavax/net/ssl/SSLContext;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 2

    .line 1
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$9;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$9;-><init>()V

    .line 2
    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;

    invoke-direct {v1, p3, v0, p1, p4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;-><init>(ILcom/koushikdutta/async/http/SSLEngineSNIConfigurator;Ljavax/net/ssl/SSLContext;Lcom/koushikdutta/async/callback/ListenCallback;)V

    invoke-virtual {p0, p2, p3, v1}, Lcom/koushikdutta/async/AsyncServer;->U(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZLjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->z0(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZLjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method

.method private L0(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 3
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v3, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v3}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 4
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/DataSink;->j()V

    .line 5
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 6
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/DataEmitter;->close()V

    .line 7
    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->B()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private static M0(Ljava/security/KeyPair;Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 5
    new-instance v8, Lorg/bouncycastle/asn1/x500/X500Name;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 10
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 11
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v2, "SHA256WithRSA"

    invoke-direct {p1, v2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object p1

    .line 12
    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v9

    move-object v3, v2

    move-object v4, v8

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V

    .line 13
    new-instance p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Z)V

    .line 14
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.5.29.19"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 15
    new-instance p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object p0

    invoke-virtual {v2, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic N(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->x0(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    return-void
.end method

.method public static N0(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/security/KeyPair;",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    const-string v1, "\n"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-key.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/koushikdutta/async/util/StreamUtility;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v5, 0x0

    aget-object v6, v3, v5

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 4
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v7, "X.509"

    .line 5
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    aget-object v3, v3, v2

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 6
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 7
    new-instance v7, Ljava/security/KeyPair;

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v3, 0x800

    .line 9
    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 10
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v7

    .line 11
    invoke-static {v7, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->M0(Ljava/security/KeyPair;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Lcom/koushikdutta/async/util/StreamUtility;->j(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    :goto_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic O(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->L0(Ljava/lang/Exception;)V

    return-void
.end method

.method public static o0(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p0(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 8

    .line 1
    new-instance v6, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v6}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 2
    new-instance v7, Lcom/koushikdutta/async/b;

    move-object v0, v7

    move-object v1, v6

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/b;-><init>(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZ)V

    invoke-virtual {p0, p1, p2, v7}, Lcom/koushikdutta/async/AsyncServer;->u(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p0

    .line 3
    invoke-virtual {v6, p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object v6
.end method

.method public static synthetic q([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->B0([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    return-void
.end method

.method public static synthetic s(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->A0(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    return-void
.end method

.method public static t0()Ljavax/net/ssl/SSLContext;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private x0(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 6

    .line 1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->t:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 6
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->s:Lcom/koushikdutta/async/callback/DataCallback;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-interface {p1, p0, v0}, Lcom/koushikdutta/async/callback/DataCallback;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 8
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_a

    .line 9
    :cond_3
    iget-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    .line 11
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 12
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->i:Ljavax/net/ssl/HostnameVerifier;

    if-nez v3, :cond_4

    .line 13
    new-instance v2, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, p1

    invoke-static {v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostname <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> has been denied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_0
    move-object v2, v1

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 17
    :goto_1
    :try_start_2
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Z

    if-nez p1, :cond_9

    .line 18
    new-instance p1, Lcom/koushikdutta/async/AsyncSSLException;

    invoke-direct {p1, v2}, Lcom/koushikdutta/async/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->L0(Ljava/lang/Exception;)V

    .line 20
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncSSLException;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 21
    :cond_7
    throw p1

    .line 22
    :cond_8
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Z

    .line 23
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-interface {p1, v1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 24
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 25
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 26
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$7;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 27
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->K0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 28
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->L0(Ljava/lang/Exception;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public static synthetic y(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->C0(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V

    return-void
.end method

.method public static y0(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
    .locals 10

    move-object/from16 v0, p7

    .line 1
    new-instance v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 2
    iput-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 3
    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    move-object v0, p0

    invoke-interface {p0, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 4
    :try_start_0
    iget-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 5
    iget-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->x0(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-direct {v9, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->L0(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic z(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->E0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method private static synthetic z0(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZLjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p1, p5, v0}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 3
    sget-object p5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->x:Ljavax/net/ssl/SSLContext;

    goto :goto_0

    :cond_2
    sget-object p5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    .line 4
    :goto_0
    invoke-virtual {p5, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    if-eqz p4, :cond_3

    sget-object p5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->y:[Ljavax/net/ssl/TrustManager;

    move-object v5, p5

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    if-eqz p4, :cond_4

    sget-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->z:Ljavax/net/ssl/HostnameVerifier;

    :cond_4
    move-object v6, v0

    const/4 v7, 0x1

    new-instance v8, Lcom/koushikdutta/async/a;

    invoke-direct {v8, p0, p1}, Lcom/koushikdutta/async/a;-><init>(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    move-object v1, p6

    move-object v2, p2

    move v3, p3

    .line 5
    invoke-static/range {v1 .. v8}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->y0(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    return-void
.end method


# virtual methods
.method public B()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->u:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public K0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 2
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->u:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->q:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method P(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public X(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->u:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public a()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public a0(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->y()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Z

    .line 4
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d0(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 5
    :cond_2
    iget-boolean v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v3

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->o()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v4, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 9
    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/ByteBufferList;->d([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->t:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 12
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->t:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v4

    if-lez v4, :cond_4

    .line 13
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->t:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_5

    mul-int/lit8 v0, v0, 0x2

    .line 16
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, -0x1

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d0(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->x0(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 19
    :goto_0
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->L0(Ljava/lang/Exception;)V

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v4

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v3}, Lcom/koushikdutta/async/BufferedDataSink;->y()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Z

    .line 22
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public b0(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->m:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    return-void
.end method

.method d0(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    :cond_0
    return p1
.end method

.method public e0(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->l:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public f0()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->f0()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public h0()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->h0()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->i()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->j()V

    return-void
.end method

.method public j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->k()V

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->K0()V

    return-void
.end method

.method public l()Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public l0()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public m()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->pause()V

    return-void
.end method

.method public r0()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->m:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public v()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->l:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w0()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->f:I

    return v0
.end method
