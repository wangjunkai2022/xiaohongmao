.class public Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;
.super Ljava/lang/Object;
.source "WsManager.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "WsManager"

.field private static final p:I = 0x2710

.field private static final q:J = 0x1d4c0L


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lokhttp3/WebSocket;

.field private d:Lokhttp3/OkHttpClient;

.field private e:Lokhttp3/Request;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ld5/a;

.field private j:Ljava/util/concurrent/locks/Lock;

.field private k:Landroid/os/Handler;

.field private l:I

.field private m:Ljava/lang/Runnable;

.field private final n:Lokhttp3/WebSocketListener;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->f:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->h:Z

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->k:Landroid/os/Handler;

    .line 5
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->l:I

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$a;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->n:Lokhttp3/WebSocketListener;

    .line 8
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->a(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->a:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->b(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->c(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->g:Z

    .line 11
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;->d(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$c;)Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->d:Lokhttp3/OkHttpClient;

    .line 12
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->j:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i:Ld5/a;

    return-object p0
.end method

.method static synthetic j(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->o()V

    return-void
.end method

.method static synthetic k(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;Lokhttp3/WebSocket;)Lokhttp3/WebSocket;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->c:Lokhttp3/WebSocket;

    return-object p1
.end method

.method static synthetic l(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->p()V

    return-void
.end method

.method static synthetic m(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic n(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->v()V

    return-void
.end method

.method private declared-synchronized o()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->e()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b(I)V

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->l:I

    return-void
.end method

.method private q()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "WsManager"

    const-string v2, "Disconnect!"

    .line 2
    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->p()V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->d:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->c:Lokhttp3/WebSocket;

    if-eqz v0, :cond_2

    const/16 v2, 0x3e8

    const-string v3, "normal close"

    .line 7
    invoke-interface {v0, v2, v3}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i:Ld5/a;

    if-eqz v0, :cond_2

    const/16 v2, 0x3e9

    const-string v3, "abnormal close"

    .line 9
    invoke-virtual {v0, v2, v3}, Ld5/a;->a(ILjava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b(I)V

    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->d:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->d:Lokhttp3/OkHttpClient;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->e:Lokhttp3/Request;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->e:Lokhttp3/Request;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->d:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->e:Lokhttp3/Request;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->n:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private s(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private t(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->c:Lokhttp3/WebSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_1

    .line 5
    check-cast p1, Lokio/ByteString;

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    move-result v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->v()V

    :cond_2
    return v1
.end method

.method private v()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->g:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->h:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b(I)V

    .line 5
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->l:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WsManager"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->l:I

    mul-int/lit16 v0, v0, 0x2710

    int-to-long v0, v0

    .line 8
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->k:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    move-wide v0, v4

    :cond_2
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->h:Z

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->o()V

    return-void
.end method

.method public d(Lokio/ByteString;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->t(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->h:Z

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->q()V

    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->t(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h()Lokhttp3/WebSocket;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->c:Lokhttp3/WebSocket;

    return-object v0
.end method

.method public u(Ld5/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i:Ld5/a;

    return-void
.end method
