.class public Lcom/koushikdutta/async/FileDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FileDataEmitter.java"


# instance fields
.field d:Lcom/koushikdutta/async/AsyncServer;

.field e:Ljava/io/File;

.field f:Lcom/koushikdutta/async/callback/DataCallback;

.field g:Z

.field h:Lcom/koushikdutta/async/ByteBufferList;

.field i:Ljava/nio/channels/FileChannel;

.field j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->h:Lcom/koushikdutta/async/ByteBufferList;

    .line 3
    new-instance v0, Lcom/koushikdutta/async/FileDataEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/FileDataEmitter$1;-><init>(Lcom/koushikdutta/async/FileDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->j:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->d:Lcom/koushikdutta/async/AsyncServer;

    .line 5
    iput-object p2, p0, Lcom/koushikdutta/async/FileDataEmitter;->e:Ljava/io/File;

    .line 6
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncServer;->G()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->g:Z

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->w0()V

    :cond_0
    return-void
.end method

.method private w0()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->d:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method


# virtual methods
.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->d:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public b0(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->f:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->i:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
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

    iget-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->g:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->g:Z

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->w0()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->g:Z

    return-void
.end method

.method public r0()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->f:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 1
    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter;->i:Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 2
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method
