.class public Lcom/facebook/imagepipeline/backends/okhttp3/c;
.super Lcom/facebook/imagepipeline/producers/c;
.source "OkHttpNetworkFetcher.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/backends/okhttp3/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/c<",
        "Lcom/facebook/imagepipeline/backends/okhttp3/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "queue_time"

.field private static final e:Ljava/lang/String; = "fetch_time"

.field private static final f:Ljava/lang/String; = "total_time"

.field private static final g:Ljava/lang/String; = "image_size"


# instance fields
.field private final a:Lokhttp3/Call$Factory;

.field private final b:Lokhttp3/CacheControl;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callFactory",
            "cancellationExecutor"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/backends/okhttp3/c;-><init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callFactory",
            "cancellationExecutor",
            "disableOkHttpCache"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/c;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c;->a:Lokhttp3/Call$Factory;

    .line 5
    iput-object p2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c;->c:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_0

    .line 6
    new-instance p1, Lokhttp3/CacheControl$Builder;

    invoke-direct {p1}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c;->b:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "okHttpClient"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/backends/okhttp3/c;-><init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/backends/okhttp3/c;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/backends/okhttp3/c;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/backends/okhttp3/c;->l(Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/l0$a;)V

    return-void
.end method

.method private l(Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "call",
            "e",
            "callback"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/l0$a;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/imagepipeline/producers/l0$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "fetchState",
            "callback"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/c;->i(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/facebook/imagepipeline/producers/w;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/c;->m(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;I)V

    return-void
.end method

.method public bridge synthetic d(Lcom/facebook/imagepipeline/producers/w;I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/c;->k(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/w;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "consumer",
            "context"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/c;->h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/backends/okhttp3/c$c;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/backends/okhttp3/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")",
            "Lcom/facebook/imagepipeline/backends/okhttp3/c$c;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fetchState",
            "callback"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->f:J

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->h()Landroid/net/Uri;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c;->b:Lokhttp3/CacheControl;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Range"

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 8
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/backends/okhttp3/c;->j(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;Lcom/facebook/imagepipeline/producers/l0$a;Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/l0$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected j(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;Lcom/facebook/imagepipeline/producers/l0$a;Lokhttp3/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fetchState",
            "callback",
            "request"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c;->a:Lokhttp3/Call$Factory;

    invoke-interface {v0, p3}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p3

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/backends/okhttp3/c$a;

    invoke-direct {v1, p0, p3}, Lcom/facebook/imagepipeline/backends/okhttp3/c$a;-><init>(Lcom/facebook/imagepipeline/backends/okhttp3/c;Lokhttp3/Call;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/s0;->f(Lcom/facebook/imagepipeline/producers/t0;)V

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/backends/okhttp3/c$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/c$b;-><init>(Lcom/facebook/imagepipeline/backends/okhttp3/c;Lcom/facebook/imagepipeline/backends/okhttp3/c$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

    invoke-interface {p3, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public k(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/backends/okhttp3/c$c;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-wide v1, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->g:J

    iget-wide v3, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->f:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "queue_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->h:J

    iget-wide v3, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->h:J

    iget-wide v3, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->f:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "total_time"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image_size"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/imagepipeline/backends/okhttp3/c$c;->h:J

    return-void
.end method
