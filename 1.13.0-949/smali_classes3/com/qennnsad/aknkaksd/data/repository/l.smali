.class public Lcom/qennnsad/aknkaksd/data/repository/l;
.super Ljava/lang/Object;
.source "RetrofitStaticSource.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/repository/c;


# static fields
.field private static final b:I = 0x1e

.field private static final c:I = 0x1e

.field private static final d:I = 0x1e


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 7
    sget-object v1, Lokhttp3/brotli/BrotliInterceptor;->INSTANCE:Lokhttp3/brotli/BrotliInterceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    invoke-static {}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getInstance()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->with(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 9
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://api.placeholder.com/OpenAPI/"

    .line 10
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/qennnsad/aknkaksd/data/converter/c;->a()Lcom/qennnsad/aknkaksd/data/converter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 13
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 14
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 16
    const-class v1, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/l;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/reactivex/z;
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

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/l;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->downloadFile(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lio/reactivex/z;
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

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/l;->a:Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;->downloadFile(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
