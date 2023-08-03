.class public final Lcom/google/common/io/k;
.super Ljava/lang/Object;
.source "CharStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/k$a;
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final a:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1
    .annotation build Lh3/a;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/io/Writer;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/io/a;

    invoke-direct {v0, p0}, Lcom/google/common/io/a;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/io/Reader;

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/google/common/io/k;->c(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_0
    check-cast p0, Ljava/io/Reader;

    invoke-static {p1}, Lcom/google/common/io/k;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/io/k;->d(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide p0

    return-wide p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 7
    invoke-static {}, Lcom/google/common/io/k;->e()Ljava/nio/CharBuffer;

    move-result-object v2

    .line 8
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 11
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 12
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method static c(Ljava/io/Reader;Ljava/lang/StringBuilder;)J
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x800

    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p1, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method static d(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x800

    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method static e()Ljava/nio/CharBuffer;
    .locals 1

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/Readable;)J
    .locals 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/k;->e()Ljava/nio/CharBuffer;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    add-long/2addr v1, v3

    .line 3
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static g()Ljava/io/Writer;
    .locals 1
    .annotation build Lh3/a;
    .end annotation

    invoke-static {}, Lcom/google/common/io/k$a;->a()Lcom/google/common/io/k$a;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/Readable;Lcom/google/common/io/t;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Readable;",
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
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/io/u;

    invoke-direct {v0, p0}, Lcom/google/common/io/u;-><init>(Ljava/lang/Readable;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/io/u;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p1, p0}, Lcom/google/common/io/t;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/t;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Readable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Readable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/google/common/io/u;

    invoke-direct {v1, p0}, Lcom/google/common/io/u;-><init>(Ljava/lang/Readable;)V

    .line 3
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/io/u;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static j(Ljava/io/Reader;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static k(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/io/k;->l(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Ljava/io/Reader;

    invoke-static {p0, v0}, Lcom/google/common/io/k;->c(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, v0}, Lcom/google/common/io/k;->b(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    :goto_0
    return-object v0
.end method
