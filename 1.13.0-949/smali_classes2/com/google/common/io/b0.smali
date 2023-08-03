.class public final Lcom/google/common/io/b0;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/b0$b;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/URL;)Lcom/google/common/io/f;
    .locals 2

    new-instance v0, Lcom/google/common/io/b0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/b0$b;-><init>(Ljava/net/URL;Lcom/google/common/io/b0$a;)V

    return-object v0
.end method

.method public static b(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/j;
    .locals 0

    invoke-static {p0}, Lcom/google/common/io/b0;->a(Ljava/net/URL;)Lcom/google/common/io/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/io/f;->a(Ljava/nio/charset/Charset;)Lcom/google/common/io/j;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/net/URL;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/io/b0;->a(Ljava/net/URL;)Lcom/google/common/io/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/io/f;->g(Ljava/io/OutputStream;)J

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "resource %s relative to %s not found."

    .line 3
    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/a0;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/google/common/io/b0;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "resource %s not found."

    .line 4
    invoke-static {v1, v2, p0}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Ljava/net/URL;Ljava/nio/charset/Charset;Lcom/google/common/io/t;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            "Lcom/google/common/io/t<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/io/b0;->b(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/j;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/common/io/j;->q(Lcom/google/common/io/t;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
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

    new-instance v0, Lcom/google/common/io/b0$a;

    invoke-direct {v0}, Lcom/google/common/io/b0$a;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/io/b0;->f(Ljava/net/URL;Ljava/nio/charset/Charset;Lcom/google/common/io/t;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static h(Ljava/net/URL;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/io/b0;->a(Ljava/net/URL;)Lcom/google/common/io/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/io/f;->o()[B

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/io/b0;->b(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/io/j;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
