.class public Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field a:Lcom/koushikdutta/async/AsyncServer;

.field b:Ljava/io/InputStream;

.field c:Lcom/koushikdutta/async/callback/DataCallback;

.field d:Z

.field e:I

.field f:Lcom/koushikdutta/async/ByteBufferList;

.field g:Ljava/lang/Runnable;

.field h:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->e:I

    .line 3
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->f:Lcom/koushikdutta/async/ByteBufferList;

    .line 4
    new-instance v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->g:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a:Lcom/koushikdutta/async/AsyncServer;

    .line 6
    iput-object p2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->b:Ljava/io/InputStream;

    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h()V

    return-void
.end method

.method static synthetic g(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method private h()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private j(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method


# virtual methods
.method public B()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public X(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public b0(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->c:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->j(Ljava/lang/Exception;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public h0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->d:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->d:Z

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h()V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->d:Z

    return-void
.end method

.method public r0()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->c:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method
