.class public Lcom/qennnsad/aknkaksd/data/repository/e;
.super Ljava/lang/Object;
.source "PingSource.java"


# static fields
.field private static final b:I = 0x5

.field private static final c:I = 0x5

.field private static final d:I = 0x5

.field static e:Lokhttp3/Interceptor;


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/repository/PingApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/d;->a:Lcom/qennnsad/aknkaksd/data/repository/d;

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/e;->e:Lokhttp3/Interceptor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/qennnsad/aknkaksd/data/repository/e;->c()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/e$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/data/repository/e$a;-><init>(Lcom/qennnsad/aknkaksd/data/repository/e;)V

    .line 4
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/e;->e:Lokhttp3/Interceptor;

    .line 8
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/e$b;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/data/repository/e$b;-><init>(Lcom/qennnsad/aknkaksd/data/repository/e;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 12
    new-instance p2, Lretrofit2/Retrofit$Builder;

    invoke-direct {p2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 13
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/qennnsad/aknkaksd/data/converter/c;->a()Lcom/qennnsad/aknkaksd/data/converter/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 15
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 16
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 18
    const-class p2, Lcom/qennnsad/aknkaksd/data/repository/PingApi;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/repository/PingApi;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/e;->a:Lcom/qennnsad/aknkaksd/data/repository/PingApi;

    return-void
.end method

.method public static synthetic a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/repository/e;->d(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lokhttp3/CertificatePinner$Builder;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    const-string v1, "sha256/KGFQin+uewna1jKoxsmBHmec6cSmF8gqFFVqvIq2KdE"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "kwdian0.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    const-string v1, "sha256/45VS2F2R1rF7lVJxDmqPV5aqddGft8ReBtjZdmqrr20"

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "huayaygf.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    const-string v1, "sha256/PUC77Z/8+vbtO2k50jbyjKr8vBSwF1q78jT7UZsG8Ig"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "nlmy66.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    const-string v1, "sha256/vr1EDYY7ulzfl8sY4HA3/c2h/GbCZcWozIen8f0AsQo"

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "fzxsmzxyj.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    const-string v1, "sha256/27zdHHYEJtF4ljKINxF+ZYh4RglF8ZJLTamwVJic/rw"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "njlvzhizl.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    const-string v1, "sha256/+4icG0KQu+0Z10BxX4BZITybbNSYcKThWv9icwDFcX8"

    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdhhjsj.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    const-string v1, "sha256/8qV227kcjR+Z3eNsxK3n4puLD+y2C1SzGW/RyQy9sr0"

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "zhongwony.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    const-string v1, "sha256/svacBekDRZJdxNTjSrm4vNdOgSAaCz7CXCcB7uxR2OQ"

    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "jietibao.net"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    return-object v0
.end method

.method public static c()Lokhttp3/OkHttpClient;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 1
    new-instance v1, Lcom/qennnsad/aknkaksd/data/repository/e$c;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/data/repository/e$c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SSL"

    .line 2
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v3, 0x0

    .line 3
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 5
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    aget-object v0, v0, v2

    .line 6
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/e$d;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/repository/e$d;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static synthetic d(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chack--\u8bf7\u6c42\u4f53"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mrl"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/e;->a:Lcom/qennnsad/aknkaksd/data/repository/PingApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/PingApi;->newping(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public f()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/e;->a:Lcom/qennnsad/aknkaksd/data/repository/PingApi;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/data/repository/PingApi;->ping()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method
