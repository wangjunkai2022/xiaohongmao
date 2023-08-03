.class public Lcom/qennnsad/aknkaksd/data/repository/k;
.super Ljava/lang/Object;
.source "RetrofitSource.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/repository/b;


# static fields
.field private static final e:Ljava/lang/String; = "RetrofitSource"

.field private static final f:I = 0x3c

.field private static final g:I = 0x3c

.field private static final h:I = 0x3c

.field private static final i:I = 0x3c


# instance fields
.field protected final a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

.field protected final b:Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;

.field protected c:Lg5/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg5/a;Lc5/b;Lcom/qennnsad/aknkaksd/util/t0;Lg5/d;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "666666"

    .line 2
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->c:Lg5/a;

    .line 4
    invoke-virtual {p4}, Lg5/d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->d:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/qennnsad/aknkaksd/data/repository/h;->a:Lcom/qennnsad/aknkaksd/data/repository/h;

    .line 6
    new-instance p3, Lokhttp3/OkHttpClient;

    invoke-direct {p3}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 7
    sget-object p4, Lokhttp3/brotli/BrotliInterceptor;->INSTANCE:Lokhttp3/brotli/BrotliInterceptor;

    invoke-virtual {p3, p4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    new-instance p4, Lcom/qennnsad/aknkaksd/data/repository/j;

    invoke-direct {p4, p0, p5}, Lcom/qennnsad/aknkaksd/data/repository/j;-><init>(Lcom/qennnsad/aknkaksd/data/repository/k;Z)V

    .line 9
    invoke-virtual {p3, p4}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    const/16 p5, 0x3c

    int-to-long v0, p5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-virtual {p4, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    int-to-long v0, p5

    .line 11
    invoke-virtual {p4, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    int-to-long v0, p5

    .line 12
    invoke-virtual {p4, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    .line 13
    invoke-virtual {p4, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p4, 0x1

    .line 14
    invoke-virtual {p1, p4}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 15
    invoke-virtual {p3, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 16
    invoke-static {}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getInstance()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->with(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 17
    new-instance p2, Lretrofit2/Retrofit$Builder;

    invoke-direct {p2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 18
    invoke-static {}, Lcom/qennnsad/aknkaksd/data/converter/c;->a()Lcom/qennnsad/aknkaksd/data/converter/c;

    move-result-object p3

    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 19
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p3

    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 20
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p3

    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    const-string p3, "https://api.placeholder.com/OpenAPI/"

    .line 21
    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 24
    const-class p2, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    .line 25
    const-class p2, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->b:Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;

    return-void
.end method

.method public static synthetic d0(Lcom/qennnsad/aknkaksd/data/repository/k;ZLokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/k;->l0(ZLokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/k;->k0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f0(Lcom/qennnsad/aknkaksd/data/repository/k;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/k;->j0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private g0(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/data/repository/i;-><init>(Lcom/qennnsad/aknkaksd/data/repository/k;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private h0(Lokhttp3/OkHttpClient$Builder;)V
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lokhttp3/TlsVersion;

    sget-object v3, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lokhttp3/CipherSuite;

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v2, v4

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v2, v1

    sget-object v1, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 3
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 5
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private static i0(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_1

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j0(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->c:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DnsResolutionService-inetAddresses:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "---hostname\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RetrofitSource"

    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic k0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .line 1
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0, p1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--sslsession:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--result:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "okhttp-ssl"

    invoke-static {p1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic l0(ZLokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->d:Ljava/lang/String;

    const-string v2, "X-Live-Butter2"

    .line 5
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "X-Accept-Puzzle"

    const-string v2, "cola,tiger,tiger2,panda"

    .line 6
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "knockknock"

    const-string v2, "synergy"

    .line 7
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "X-Live-Pretty"

    const-string v2, "spring"

    .line 8
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "user-agent"

    .line 9
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 10
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private m0([C)Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private n0(Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getCurrentRoomGameType(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public B(Lcom/qennnsad/aknkaksd/presentation/module/rank/h;I)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/g;->a(Lcom/qennnsad/aknkaksd/data/repository/k;Lcom/qennnsad/aknkaksd/presentation/module/rank/h;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public C(IILjava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadNerabyAnchors(IILjava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getRoomToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Integer;)Lio/reactivex/z;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const/16 v6, 0x76

    const/4 v9, -0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v1 .. v12}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->createRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;IIIILjava/lang/Integer;)Lio/reactivex/z;

    move-result-object v1

    return-object v1
.end method

.method public F()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->guestLogin()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->guestLink(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "image/jpg"

    .line 2
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v1, v0, p1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->uploadRoompic(Lokhttp3/MultipartBody$Part;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->setCurrentGame(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh5/a;Ljava/lang/String;)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh5/a;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    .line 2
    invoke-virtual {p4}, Lh5/a;->b()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object v1

    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Re:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p4}, Lh5/a;->c()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 3
    :goto_0
    invoke-virtual {p4}, Lh5/a;->b()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object v1

    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->H:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p4}, Lh5/a;->c()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 4
    :goto_1
    invoke-virtual {p4}, Lh5/a;->b()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object v1

    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Graph:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p4}, Lh5/a;->c()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 5
    :goto_2
    invoke-virtual {p4}, Lh5/a;->b()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p4}, Lh5/a;->a()Ljava/lang/String;

    move-result-object p4

    move-object v7, p4

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p5

    .line 6
    invoke-interface/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public K()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getLiteVersion()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateToyStatus(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadRecommendAnchors(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->sendHongBaoGift(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public O(IILjava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadHotAnchors(IILjava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "image/jpg"

    .line 2
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v1, v0, p1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->uploadAvatar(Lokhttp3/MultipartBody$Part;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p2, p1, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->alipay(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public R(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->editJob(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public S(Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->sendInteractionReady(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public T(IILjava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadVeganAnchors(IILjava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public U(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->postInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getStarProgressTime(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public W()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPayWAY()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public Y()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const-string v1, "1.13.0"

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getAvailableGifts(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->postInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v1

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getStarAndLeftTimes(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public a0(IILjava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadVipAnchors(IILjava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getUserInfo(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public b0(Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->setLiveStatus(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public boxReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p2, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->boxReport(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->boxReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public c()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->hitList()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public c0(Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getBankInfo()Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public complainPinnedMessage(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->complainPinnedMessage(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public createConferenceRoom(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->createConferenceRoom(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public d(IZ)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadFollowedLives(II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public deletConferenceRoom(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->deletConferenceRoom(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public downloadFile(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->downloadFile(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p3, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadSponsorAnchors(II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public editProfile(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->editProfile(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public f(IIZ)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p3, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getAnchorHot(II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public findmypassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->findmypassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public followAnchor(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->followAnchor(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public followUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->followUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateUserSetup(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public generatePushStreaming(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->generatePushStreaming(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public generateRechargeOrder(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->generateRechargeOrder(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public generateRechargeWechat(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->generateRechargeWechat(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getALiInfo()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getALiInfo()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getAdConfig()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getAdConfig()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getAdmin(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getAdmin(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getAnchoBean(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getAnchoBean(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getAnchorSlide(II)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getAnchorSlide(II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getAppConfig()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getAppConfig()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getBoxDrawers(II)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getBoxDrawers(II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getBoxLives(IILjava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getBoxLives(IILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getCompetitorsList()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getCompetitorsList()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getContributeRankList(Ljava/lang/String;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getContributeRankList(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAgentChat()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getCurrentAgentChat()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getDepositAgent()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getDepositAgent()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getDepositOptions()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getDepositOptions()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getEmotion(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getEmotion(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getFanClubInfo()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getFanClubInfo()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getFriendList()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getFriendList()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getGameCenterPoints()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getGameCenterPoints()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getGameCenterUrl()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getGameCenterUrl()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getGameHall(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getGameHall(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getHelpUrl()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getHelpUrl()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getImToken()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getImToken()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getIncomeBean()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getIncomeBean()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getLiveRoomInfo(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getLiveRoomInfo(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getLoginCaptcha()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getLoginCaptcha()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getMyInfo()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getMyInfo()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getPeeragePrices()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPeeragePrices()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getPinnedMessagesHistory(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPinnedMessagesHistory(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getPlayBack(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPlayBack(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getPlayBackListUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPlayBackListUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getPlaybackUrl(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPlaybackUrl(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getPresentRecord()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPresentRecord()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getPullAddress(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getPullAddress(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getSeatRank(Ljava/lang/String;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getSeatRank(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getShareData(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getShareData(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getThemBean()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getThemBean()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getThemBean(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getThemBean(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getUserFans(Ljava/lang/String;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getUserFans(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getUserInfo(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getUserInfo(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public getUserMoney()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getUserMoney()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public getUserStars(Ljava/lang/String;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getUserStars(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->c:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHostWithProtocol(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getSignInStar(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public interruptDeposit(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->interruptDeposit(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public is_create_conversation(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->is_create_conversation(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public isaddfriend(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->isaddfriend(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const-string v1, "tiger2"

    invoke-interface {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->registerByPhone_tiger(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public joinFanClub(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->joinFanClub(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p2, p1, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->weChatPay(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadPrivateLimit(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadPrivateLimit(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public loadTopicLives(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadTopicLives(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public login(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->login(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public logout()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->logout()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p3, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadBoxAnchors(II)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public modifyPassword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->modifyPassword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public n()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    const-string v1, "https://api.moonscap.com/OpenAPI/v1/"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getLaunchAd(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public o(IILjava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadLatestAnchors(IILjava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public onRoomOrientationChange(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->onRoomOrientationChange(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->postbank(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v1

    return-object v1
.end method

.method public pinMessage(IIILjava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->pinMessage(IIILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public ping(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare cold observer to \'/ping\' : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetrofitSource"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/qennnsad/aknkaksd/util/t0;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "v1/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->ping(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public publishRecoveryPrivate(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->publishRecoveryPrivate(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getNearbyList(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public queryAnchors(Ljava/lang/String;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->queryAnchors(Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAdmin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->removeAdmin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public removeHit(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->removeHit(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public reportLocation(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->reportLocation(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public roomWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->roomWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkPrivatePass--tupe:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "jiancha"

    invoke-static {v0, p4}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "1"

    .line 2
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p3, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadPrivatePwd(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p4, "2"

    .line 4
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadPrivateTicket(ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p4, "3"

    .line 6
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadPrivateLevel(ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p4, "4"

    .line 8
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadPrivateMoney(ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p4, "9"

    .line 10
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->checkUserPoint(ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p4, "8"

    .line 12
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 13
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->previewPrivateRoom(ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p4, "5"

    .line 14
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 15
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->checkVideoMoney(ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p4, "7"

    .line 16
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->checkVideoPoint(ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p3, p5}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadPrivatePwd(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public sendConferenceMsg(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->sendConferenceMsg(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public sendDanmuMsg(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->sendDanmuMsg(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public sendGift(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->sendGift(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public sendNameCard(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->sendNameCard(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public setCity(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->setCity(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public setHit(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->setHit(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->setBirthday(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public thirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/qennnsad/aknkaksd/data/bean/ThirdLoginPlatform;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->thirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getGameGift()Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public unfollowAnchor(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->unfollowAnchor(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public unfollowUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->unfollowUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public upLoadLog(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->upLoadLog(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public upLoadMyAddress(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->upLoadMyAddress(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public upLoadMyRecommen(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->upLoadMyRecommen(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public upNewAppVersion(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->upNewAppVersion(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public updateBirthday(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateBirthday(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public updateIntro(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateIntro(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public updateNameCard(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateNameCard(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public updateNickName(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateNickName(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public updateSex(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateSex(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public updateSubscribeNotify(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->updateSubscribeNotify(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public userReport(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->userReport(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public userReport(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->userReport(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getSignInfoFromServer(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public withDraw(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->withDraw(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public x(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->getRechargeInfo(I)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->loadCityAnchors(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/k;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->bigWinSendMessage(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
