.class public Lcom/facebook/imagepipeline/memory/z;
.super Ljava/lang/Object;
.source "MemoryPooledByteBufferFactory.java"

# interfaces
.implements Lcom/facebook/common/memory/g;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/memory/j;

.field private final b:Lcom/facebook/imagepipeline/memory/w;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/common/memory/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pool",
            "pooledByteStreams"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/z;->a:Lcom/facebook/common/memory/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/z;->i(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inputStream",
            "initialCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/memory/z;->j(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Lcom/facebook/common/memory/i;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/z;->l()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d([B)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bytes"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/z;->k([B)Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(I)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/z;->h(I)Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(I)Lcom/facebook/common/memory/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/z;->m(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/y;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/z;->a:Lcom/facebook/common/memory/j;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/common/memory/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->h()Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Lcom/facebook/imagepipeline/memory/y;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/memory/y;

    invoke-direct {v1, v0, p1}, Lcom/facebook/imagepipeline/memory/y;-><init>(Lcom/facebook/common/references/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 5
    throw p1
.end method

.method public i(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/y;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/w;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/z;->g(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 4
    throw p1
.end method

.method public j(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/y;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "initialCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/w;I)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/z;->g(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 4
    throw p1
.end method

.method public k([B)Lcom/facebook/imagepipeline/memory/y;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/w;I)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->write([BII)V

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->h()Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/o;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 7
    throw p1
.end method

.method public l()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/w;)V

    return-object v0
.end method

.method public m(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/z;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/w;I)V

    return-object v0
.end method
