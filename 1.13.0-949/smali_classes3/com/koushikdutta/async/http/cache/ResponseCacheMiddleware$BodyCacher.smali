.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyCacher"
.end annotation


# instance fields
.field h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

.field i:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->w0()V

    .line 2
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->close()V

    return-void
.end method

.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->i:Lcom/koushikdutta/async/ByteBufferList;

    if-eqz v0, :cond_1

    .line 2
    invoke-super {p0, p1, v0}, Lcom/koushikdutta/async/FilteredDataEmitter;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->i:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->i:Lcom/koushikdutta/async/ByteBufferList;

    .line 5
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c(I)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->x()Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-static {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->X(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    throw v1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->w0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 14
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 15
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->w0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 16
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/FilteredDataEmitter;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 17
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result p1

    if-lez p1, :cond_4

    .line 18
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->i:Lcom/koushikdutta/async/ByteBufferList;

    .line 19
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_4
    return-void

    .line 20
    :goto_3
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 21
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    throw p1
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->w0()V

    :cond_0
    return-void
.end method

.method public w0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    :cond_0
    return-void
.end method

.method public x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->h:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    :cond_0
    return-void
.end method
