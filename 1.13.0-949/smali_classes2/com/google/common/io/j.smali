.class public abstract Lcom/google/common/io/j;
.super Ljava/lang/Object;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/j$c;,
        Lcom/google/common/io/j$d;,
        Lcom/google/common/io/j$e;,
        Lcom/google/common/io/j$b;,
        Lcom/google/common/io/j$a;
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

.method public static b(Ljava/lang/Iterable;)Lcom/google/common/io/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/io/j;",
            ">;)",
            "Lcom/google/common/io/j;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/io/j$c;

    invoke-direct {v0, p0}, Lcom/google/common/io/j$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c(Ljava/util/Iterator;)Lcom/google/common/io/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/j;",
            ">;)",
            "Lcom/google/common/io/j;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/j;->b(Ljava/lang/Iterable;)Lcom/google/common/io/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d([Lcom/google/common/io/j;)Lcom/google/common/io/j;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/j;->b(Ljava/lang/Iterable;)Lcom/google/common/io/j;

    move-result-object p0

    return-object p0
.end method

.method private g(Ljava/io/Reader;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p1, v4, v5}, Ljava/io/Reader;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static h()Lcom/google/common/io/j;
    .locals 1

    invoke-static {}, Lcom/google/common/io/j$d;->u()Lcom/google/common/io/j$d;

    move-result-object v0

    return-object v0
.end method

.method public static r(Ljava/lang/CharSequence;)Lcom/google/common/io/j;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/io/j$e;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/common/io/j$e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/io/j$b;

    invoke-direct {v0, p0}, Lcom/google/common/io/j$b;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Lcom/google/common/io/f;
    .locals 1
    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/io/j$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/j$a;-><init>(Lcom/google/common/io/j;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public e(Lcom/google/common/io/i;)J
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
    invoke-virtual {p0}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 4
    invoke-virtual {p1}, Lcom/google/common/io/i;->b()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    .line 5
    invoke-static {v1, p1}, Lcom/google/common/io/k;->b(Ljava/lang/Readable;Ljava/lang/Appendable;)J

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

.method public f(Ljava/lang/Appendable;)J
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
    invoke-virtual {p0}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 4
    invoke-static {v1, p1}, Lcom/google/common/io/k;->b(Ljava/lang/Readable;Ljava/lang/Appendable;)J

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

.method public i()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/j;->k()Lcom/google/common/base/Optional;

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
    invoke-virtual {p0}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 6
    invoke-virtual {v1}, Ljava/io/Reader;->read()I

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

.method public j()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/j;->k()Lcom/google/common/base/Optional;

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
    invoke-virtual {p0}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 6
    invoke-direct {p0, v1}, Lcom/google/common/io/j;->g(Ljava/io/Reader;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-wide v1

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

.method public k()Lcom/google/common/base/Optional;
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

.method public l()Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public abstract m()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public n()Ljava/lang/String;
    .locals 2
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
    invoke-virtual {p0}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 3
    invoke-static {v1}, Lcom/google/common/io/k;->k(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 7
    throw v1
.end method

.method public o()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/m;->a()Lcom/google/common/io/m;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/j;->l()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/m;->close()V

    .line 7
    throw v1
.end method

.method public p()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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
    invoke-virtual {p0}, Lcom/google/common/io/j;->l()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 3
    invoke-static {}, Lcom/google/common/collect/b3;->q()Ljava/util/ArrayList;

    move-result-object v2

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
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

.method public q(Lcom/google/common/io/t;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/t<",
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
    invoke-virtual {p0}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/m;->b(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 4
    invoke-static {v1, p1}, Lcom/google/common/io/k;->h(Ljava/lang/Readable;Lcom/google/common/io/t;)Ljava/lang/Object;

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
