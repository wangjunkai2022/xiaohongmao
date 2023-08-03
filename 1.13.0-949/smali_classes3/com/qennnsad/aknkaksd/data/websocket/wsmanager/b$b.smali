.class Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;
.super Lokhttp3/WebSocketListener;
.source "WsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->h(Ljava/lang/Throwable;Lokhttp3/Response;)V

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/String;Lokio/ByteString;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->i(Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->g(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->k(Lokhttp3/Response;)V

    return-void
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->j(Ljava/lang/String;)V

    return-void
.end method

.method private f([B)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Lorg/brotli/dec/b;

    invoke-direct {v3, v0}, Lorg/brotli/dec/b;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic g(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld5/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic h(Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld5/a;->c(Ljava/lang/Throwable;Lokhttp3/Response;)V

    return-void
.end method

.method private synthetic i(Ljava/lang/String;Lokio/ByteString;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->l(Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method private synthetic j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld5/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic k(Lokhttp3/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld5/a;->f(Lokhttp3/Response;)V

    return-void
.end method

.method private l(Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Ld5/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld5/a;->e(Lokio/ByteString;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "On Closed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WsManager"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;

    invoke-direct {v0, p0, p2, p3}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ld5/a;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "On Closing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WsManager"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;

    invoke-direct {v0, p0, p2, p3}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ld5/a;->b(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "On Failure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Response: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WsManager"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->n(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;

    invoke-direct {v0, p0, p2, p3}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/Throwable;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ld5/a;->c(Ljava/lang/Throwable;Lokhttp3/Response;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/d;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/d;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld5/a;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 2
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/facebook/common/util/c;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->f([B)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/String;Lokio/ByteString;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->l(Ljava/lang/String;Lokio/ByteString;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 2
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On Open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WsManager"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->k(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;Lokhttp3/WebSocket;)Lokhttp3/WebSocket;

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->b(I)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->l(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->m(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/g;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/g;-><init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld5/a;->f(Lokhttp3/Response;)V

    :cond_1
    :goto_0
    return-void
.end method
