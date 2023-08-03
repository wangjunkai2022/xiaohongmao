.class public abstract Lcom/google/common/io/f;
.super Ljava/lang/Object;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/f$c;,
        Lcom/google/common/io/f$d;,
        Lcom/google/common/io/f$b;,
        Lcom/google/common/io/f$e;,
        Lcom/google/common/io/f$a;
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

.method public static b(Ljava/lang/Iterable;)Lcom/google/common/io/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/io/f;",
            ">;)",
            "Lcom/google/common/io/f;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/io/f$c;

    invoke-direct {v0, p0}, Lcom/google/common/io/f$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c(Ljava/util/Iterator;)Lcom/google/common/io/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/f;",
            ">;)",
            "Lcom/google/common/io/f;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/f;->b(Ljava/lang/Iterable;)Lcom/google/common/io/f;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d([Lcom/google/common/io/f;)Lcom/google/common/io/f;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/f;->b(Ljava/lang/Iterable;)Lcom/google/common/io/f;

    move-result-object p0

    return-object p0
.end method

.method private h(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, v4, v5}, Lcom/google/common/io/g;->t(Ljava/io/InputStream;J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static i()Lcom/google/common/io/f;
    .locals 1

    sget-object v0, Lcom/google/common/io/f$d;->d:Lcom/google/common/io/f$d;

    return-object v0
.end method

.method public static s([B)Lcom/google/common/io/f;
    .locals 1

    new-instance v0, Lcom/google/common/io/f$b;

    invoke-direct {v0, p0}, Lcom/google/common/io/f$b;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Lcom/google/common/io/j;
    .locals 1

    new-instance v0, Lcom/google/common/io/f$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/f$a;-><init>(Lcom/google/common/io/f;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public e(Lcom/google/common/io/f;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/io/g;->d()[B

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/common/io/g;->d()[B

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 6
    invoke-virtual {p1}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    .line 7
    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v0, v5, v4}, Lcom/google/common/io/g;->n(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 8
    array-length v6, v1

    invoke-static {p1, v1, v5, v6}, Lcom/google/common/io/g;->n(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v5, :cond_0

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v2}, Lcom/google/common/io/m;->close()V

    return p1

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/google/common/io/m;->close()V

    return v5

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 13
    invoke-virtual {v2}, Lcom/google/common/io/m;->close()V

    .line 14
    throw p1
.end method

.method public f(Lcom/google/common/io/e;)J
    .locals 3
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
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 4
    invoke-virtual {p1}, Lcom/google/common/io/e;->c()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    .line 5
    invoke-static {v1, p1}, Lcom/google/common/io/g;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-wide v1

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

.method public g(Ljava/io/OutputStream;)J
    .locals 3
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
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 4
    invoke-static {v1, p1}, Lcom/google/common/io/g;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-wide v1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 8
    throw p1
.end method

.method public j(Lcom/google/common/hash/m;)Lcom/google/common/hash/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/hash/m;->h()Lcom/google/common/hash/n;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/common/hash/k;->a(Lcom/google/common/hash/a0;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/f;->g(Ljava/io/OutputStream;)J

    .line 3
    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/f;->q()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return v2

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 9
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 10
    throw v1
.end method

.method public l()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public abstract m()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public n(Lcom/google/common/io/d;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/d<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 4
    invoke-static {v1, p1}, Lcom/google/common/io/g;->o(Ljava/io/InputStream;Lcom/google/common/io/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 8
    throw p1
.end method

.method public o()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/io/f;->q()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/common/io/g;->v(Ljava/io/InputStream;J)[B

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lcom/google/common/io/g;->u(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 9
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 10
    throw v1
.end method

.method public p()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/f;->q()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 6
    invoke-direct {p0, v1}, Lcom/google/common/io/f;->h(Ljava/io/InputStream;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 8
    throw v1

    .line 9
    :catch_0
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 10
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/io/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 12
    invoke-static {v1}, Lcom/google/common/io/g;->e(Ljava/io/InputStream;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-wide v1

    :catchall_1
    move-exception v1

    .line 14
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    .line 15
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 16
    throw v1
.end method

.method public q()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public r(JJ)Lcom/google/common/io/f;
    .locals 7

    new-instance v6, Lcom/google/common/io/f$e;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/io/f$e;-><init>(Lcom/google/common/io/f;JJ)V

    return-object v6
.end method
