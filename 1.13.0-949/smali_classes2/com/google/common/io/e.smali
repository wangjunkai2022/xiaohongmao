.class public abstract Lcom/google/common/io/e;
.super Ljava/lang/Object;
.source "ByteSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/e$b;
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Lcom/google/common/io/i;
    .locals 2

    new-instance v0, Lcom/google/common/io/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/e$b;-><init>(Lcom/google/common/io/e;Ljava/nio/charset/Charset;Lcom/google/common/io/e$a;)V

    return-object v0
.end method

.method public b()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/e;->c()Ljava/io/OutputStream;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/BufferedOutputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public abstract c()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public d([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/e;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 4
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 8
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 9
    throw p1
.end method

.method public e(Ljava/io/InputStream;)J
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/e;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 4
    invoke-static {p1, v1}, Lcom/google/common/io/g;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-wide v2

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 8
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 9
    throw p1
.end method
