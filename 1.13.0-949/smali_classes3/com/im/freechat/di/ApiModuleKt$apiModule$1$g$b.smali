.class public final Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g;->a(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder$addInterceptor$2\n+ 2 ApiModule.kt\ncom/im/freechat/di/ApiModuleKt$apiModule$1$2\n*L\n1#1,1079:1\n85#2,35:1080\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "intercept",
        "okhttp3/OkHttpClient$Builder$addInterceptor$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/domain/d;

.field final synthetic b:Lcom/im/freechat/domain/k;

.field final synthetic c:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/d;Lcom/im/freechat/domain/k;Lorg/koin/core/scope/Scope;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;->a:Lcom/im/freechat/domain/d;

    iput-object p2, p0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;->b:Lcom/im/freechat/domain/k;

    iput-object p3, p0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;->c:Lorg/koin/core/scope/Scope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v3, p0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;->a:Lcom/im/freechat/domain/d;

    invoke-interface {v3}, Lcom/im/freechat/domain/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v4, "host.toUrl().host"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    sget-object v3, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v3, v2}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 8
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Authorization"

    .line 9
    invoke-virtual {v0, v4}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;->b:Lcom/im/freechat/domain/k;

    invoke-interface {v6}, Lcom/im/freechat/domain/k;->m()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    const-string v7, "upload"

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Bearer "

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v3, v4, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 14
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 15
    :goto_1
    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    invoke-virtual {v0}, Lcom/im/freechat/sdk/SDKManager;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "IM-APP-ID"

    invoke-virtual {v3, v4, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 17
    :cond_1
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 18
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 20
    new-instance v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$a;

    iget-object v2, p0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;->b:Lcom/im/freechat/domain/k;

    iget-object v3, p0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$b;->c:Lorg/koin/core/scope/Scope;

    invoke-direct {v0, v2, v3, v1}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$g$a;-><init>(Lcom/im/freechat/domain/k;Lorg/koin/core/scope/Scope;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method
