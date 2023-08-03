.class public Lcom/facebook/imagepipeline/producers/x;
.super Lcom/facebook/imagepipeline/producers/c;
.source "HttpUrlConnectionNetworkFetcher.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/x$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/c<",
        "Lcom/facebook/imagepipeline/producers/x$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "queue_time"

.field private static final g:Ljava/lang/String; = "fetch_time"

.field private static final h:Ljava/lang/String; = "total_time"

.field private static final i:Ljava/lang/String; = "image_size"

.field private static final j:I = 0x3

.field private static final k:I = 0x5

.field public static final l:I = 0x133

.field public static final m:I = 0x134

.field public static final n:I = 0x7530


# instance fields
.field private a:I

.field private b:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ls0/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/lang/String;Ljava/util/Map;Ls0/c;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpConnectionTimeout"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/lang/String;Ljava/util/Map;Ls0/c;)V

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/producers/x;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAgent",
            "httpConnectionTimeout"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/lang/String;Ljava/util/Map;Ls0/c;)V

    .line 5
    iput p2, p0, Lcom/facebook/imagepipeline/producers/x;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAgent",
            "requestHeaders",
            "httpConnectionTimeout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/lang/String;Ljava/util/Map;Ls0/c;)V

    .line 7
    iput p3, p0, Lcom/facebook/imagepipeline/producers/x;->a:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ls0/c;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAgent",
            "requestHeaders",
            "monotonicClock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ls0/c;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/c;-><init>()V

    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/x;->d:Ljava/util/concurrent/ExecutorService;

    .line 10
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/x;->e:Ls0/c;

    .line 11
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/x;->c:Ljava/util/Map;

    .line 12
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x;->b:Ljava/lang/String;

    return-void
.end method

.method private g(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "maxRedirects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/x;->o(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "User-Agent"

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Lcom/facebook/imagepipeline/producers/x;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 9
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/x;->m(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/x;->l(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    const-string v2, "Location"

    .line 11
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-nez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_4

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sub-int/2addr p2, v5

    .line 16
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/x;->g(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez p2, :cond_5

    new-array p2, v5, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "URL %s follows too many redirects"

    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/producers/x;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-array p2, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    const-string p1, "URL %s returned %d without a valid redirect"

    .line 19
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/producers/x;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 22
    new-instance p2, Ljava/io/IOException;

    new-array v0, v3, [Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "Image URL %s returned HTTP code %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static varargs h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseCode"
        }
    .end annotation

    const/16 v0, 0x133

    if-eq p0, v0, :cond_0

    const/16 v0, 0x134

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static m(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseCode"
        }
    .end annotation

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static o(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/common/util/f;->q(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
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

    check-cast p1, Lcom/facebook/imagepipeline/producers/x$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x;->i(Lcom/facebook/imagepipeline/producers/x$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

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

    check-cast p1, Lcom/facebook/imagepipeline/producers/x$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x;->n(Lcom/facebook/imagepipeline/producers/x$c;I)V

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

    check-cast p1, Lcom/facebook/imagepipeline/producers/x$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x;->k(Lcom/facebook/imagepipeline/producers/x$c;I)Ljava/util/Map;

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

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x;->f(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/x$c;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/x$c;
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
            "Lcom/facebook/imagepipeline/producers/x$c;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/x$c;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/x$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/producers/x$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 2
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
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x;->e:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/x$c;->m(Lcom/facebook/imagepipeline/producers/x$c;J)J

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/imagepipeline/producers/x$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x$a;-><init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/x$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object p1

    new-instance v1, Lcom/facebook/imagepipeline/producers/x$b;

    invoke-direct {v1, p0, v0, p2}, Lcom/facebook/imagepipeline/producers/x$b;-><init>(Lcom/facebook/imagepipeline/producers/x;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/producers/l0$a;)V

    .line 5
    invoke-interface {p1, v1}, Lcom/facebook/imagepipeline/producers/s0;->f(Lcom/facebook/imagepipeline/producers/t0;)V

    return-void
.end method

.method j(Lcom/facebook/imagepipeline/producers/x$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "callback"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->h()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/facebook/imagepipeline/producers/x;->g(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/x;->e:Ls0/c;

    invoke-interface {v2}, Ls0/c;->now()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/facebook/imagepipeline/producers/x$c;->o(Lcom/facebook/imagepipeline/producers/x$c;J)J

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 p1, -0x1

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/facebook/imagepipeline/producers/l0$a;->c(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 6
    :goto_1
    :try_start_3
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/l0$a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    nop

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 8
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v0, :cond_4

    .line 9
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    nop

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 11
    :cond_5
    throw p1
.end method

.method public k(Lcom/facebook/imagepipeline/producers/x$c;I)Ljava/util/Map;
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
            "Lcom/facebook/imagepipeline/producers/x$c;",
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
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/x$c;->n(Lcom/facebook/imagepipeline/producers/x$c;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/x$c;->l(Lcom/facebook/imagepipeline/producers/x$c;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "queue_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/x$c;->p(Lcom/facebook/imagepipeline/producers/x$c;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/x$c;->n(Lcom/facebook/imagepipeline/producers/x$c;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/x$c;->p(Lcom/facebook/imagepipeline/producers/x$c;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/x$c;->l(Lcom/facebook/imagepipeline/producers/x$c;)J

    move-result-wide v3

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

.method public n(Lcom/facebook/imagepipeline/producers/x$c;I)V
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

    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/x;->e:Ls0/c;

    invoke-interface {p2}, Ls0/c;->now()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/x$c;->q(Lcom/facebook/imagepipeline/producers/x$c;J)J

    return-void
.end method
