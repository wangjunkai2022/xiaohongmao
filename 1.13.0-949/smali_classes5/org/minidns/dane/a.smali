.class public Lorg/minidns/dane/a;
.super Ljava/lang/Object;
.source "DaneVerifier.java"


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lorg/minidns/AbstractDnsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/minidns/dane/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/minidns/dnssec/b;

    invoke-direct {v0}, Lorg/minidns/dnssec/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/minidns/dane/a;-><init>(Lorg/minidns/AbstractDnsClient;)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/AbstractDnsClient;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/minidns/dane/a;->a:Lorg/minidns/AbstractDnsClient;

    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;Lorg/minidns/record/TLSA;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/minidns/record/TLSA;->d:Lorg/minidns/record/TLSA$CertUsage;

    const-string v1, " is not supported while verifying "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TLSA certificate usage byte "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lorg/minidns/record/TLSA;->c:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    sget-object v3, Lorg/minidns/dane/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const-string v3, ") not supported while verifying "

    const-string v4, " ("

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    .line 4
    sget-object p0, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLSA certificate usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/minidns/record/TLSA;->d:Lorg/minidns/record/TLSA$CertUsage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lorg/minidns/record/TLSA;->c:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    iget-object v0, p1, Lorg/minidns/record/TLSA;->f:Lorg/minidns/record/TLSA$Selector;

    if-nez v0, :cond_2

    .line 6
    sget-object p0, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TLSA selector byte "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lorg/minidns/record/TLSA;->e:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v2

    .line 7
    :cond_2
    sget-object v7, Lorg/minidns/dane/a$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    .line 8
    sget-object p0, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLSA selector "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/minidns/record/TLSA;->f:Lorg/minidns/record/TLSA$Selector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lorg/minidns/record/TLSA;->e:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v2

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    .line 11
    :goto_0
    iget-object v0, p1, Lorg/minidns/record/TLSA;->h:Lorg/minidns/record/TLSA$MatchingType;

    if-nez v0, :cond_5

    .line 12
    sget-object p0, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TLSA matching type byte "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lorg/minidns/record/TLSA;->g:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v2

    .line 13
    :cond_5
    sget-object v1, Lorg/minidns/dane/a$a;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 14
    sget-object p0, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLSA matching type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/minidns/record/TLSA;->h:Lorg/minidns/record/TLSA$MatchingType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not supported while verifying "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v2

    :cond_6
    :try_start_0
    const-string p2, "SHA-512"

    .line 15
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Verification using TLSA failed: could not SHA-512 for matching"

    invoke-direct {p1, p2, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :try_start_1
    const-string p2, "SHA-256"

    .line 17
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 18
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Verification using TLSA failed: could not SHA-256 for matching"

    invoke-direct {p1, p2, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 19
    :cond_8
    :goto_1
    invoke-virtual {p1, p0}, Lorg/minidns/record/TLSA;->k([B)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 20
    iget-object p0, p1, Lorg/minidns/record/TLSA;->d:Lorg/minidns/record/TLSA$CertUsage;

    sget-object p1, Lorg/minidns/record/TLSA$CertUsage;->domainIssuedCertificate:Lorg/minidns/record/TLSA$CertUsage;

    if-ne p0, p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    return v2

    .line 21
    :cond_a
    new-instance p2, Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;

    invoke-direct {p2, p1, p0}, Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;-><init>(Lorg/minidns/record/TLSA;[B)V

    throw p2
.end method

.method private static b([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    .line 4
    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private static c([Ljavax/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 6

    .line 1
    array-length v0, p0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    :try_start_0
    const-string v2, "X.509"

    .line 3
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 4
    :goto_1
    sget-object v3, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Could not convert"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public d(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/minidns/dane/a;->e(Ljavax/net/ssl/HttpsURLConnection;Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljavax/net/ssl/HttpsURLConnection;Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    const-string v0, "TLS"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/minidns/dane/b;

    invoke-direct {v1, p2}, Lorg/minidns/dane/b;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, p2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 5
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    invoke-static {p2}, Lorg/minidns/dane/a;->b([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getDefaultPort()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 8
    :goto_0
    invoke-virtual {p0, p2, v0, v2}, Lorg/minidns/dane/a;->h([Ljava/security/cert/X509Certificate;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {v1}, Lorg/minidns/dane/b;->c()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Peer verification failed using PKIX"

    invoke-virtual {v1}, Lorg/minidns/dane/b;->b()Ljava/security/cert/CertificateException;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 11
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public f(Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lorg/minidns/dane/a;->c([Ljavax/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/minidns/dane/a;->h([Ljava/security/cert/X509Certificate;Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Peer not verified"

    invoke-direct {v0, v1, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/minidns/dane/a;->f(Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Socket not yet connected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h([Ljava/security/cert/X509Certificate;Ljava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "._tcp."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p3

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/minidns/dane/a;->a:Lorg/minidns/AbstractDnsClient;

    sget-object v1, Lorg/minidns/record/Record$TYPE;->TLSA:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0, p3, v1}, Lorg/minidns/AbstractDnsClient;->z(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    iget-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage;->i:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p1, "Got TLSA response from DNS server, but was not signed properly."

    .line 4
    instance-of p2, v0, Lorg/minidns/dnssec/c;

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Reasons:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    check-cast v0, Lorg/minidns/dnssec/c;

    invoke-virtual {v0}, Lorg/minidns/dnssec/c;->u()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/minidns/dnssec/e;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Lorg/minidns/dane/a;->b:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v2

    .line 9
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 10
    iget-object v0, v0, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    .line 11
    iget-object v5, v4, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    sget-object v6, Lorg/minidns/record/Record$TYPE;->TLSA:Lorg/minidns/record/Record$TYPE;

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v5, p3}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    iget-object v4, v4, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v4, Lorg/minidns/record/TLSA;

    .line 13
    :try_start_1
    aget-object v5, p1, v2

    invoke-static {v5, v4, p2}, Lorg/minidns/dane/a;->a(Ljava/security/cert/X509Certificate;Lorg/minidns/record/TLSA;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Lorg/minidns/dane/DaneCertificateException$CertificateMismatch; {:try_start_1 .. :try_end_1} :catch_0

    or-int/2addr v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 14
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v3, :cond_2

    :cond_3
    if-nez v3, :cond_5

    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    new-instance p1, Lorg/minidns/dane/DaneCertificateException$MultipleCertificateMismatchExceptions;

    invoke-direct {p1, v1}, Lorg/minidns/dane/DaneCertificateException$MultipleCertificateMismatchExceptions;-><init>(Ljava/util/List;)V

    throw p1

    :cond_5
    :goto_2
    return v3

    :catch_1
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
