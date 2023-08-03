.class public final Lcom/google/common/base/j0;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/j0$f;,
        Lcom/google/common/base/j0$e;,
        Lcom/google/common/base/j0$h;,
        Lcom/google/common/base/j0$g;,
        Lcom/google/common/base/j0$a;,
        Lcom/google/common/base/j0$c;,
        Lcom/google/common/base/j0$b;,
        Lcom/google/common/base/j0$d;
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/base/q;Lcom/google/common/base/i0;)Lcom/google/common/base/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "-TF;TT;>;",
            "Lcom/google/common/base/i0<",
            "TF;>;)",
            "Lcom/google/common/base/i0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/j0$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/j0$d;-><init>(Lcom/google/common/base/q;Lcom/google/common/base/i0;)V

    return-object v0
.end method

.method public static b(Lcom/google/common/base/i0;)Lcom/google/common/base/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/i0<",
            "TT;>;)",
            "Lcom/google/common/base/i0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/base/j0$c;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/common/base/j0$b;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/base/j0$b;

    invoke-direct {v0, p0}, Lcom/google/common/base/j0$b;-><init>(Lcom/google/common/base/i0;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/base/j0$c;

    invoke-direct {v0, p0}, Lcom/google/common/base/j0$c;-><init>(Lcom/google/common/base/i0;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static c(Lcom/google/common/base/i0;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/i0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/base/i0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/j0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/base/j0$a;-><init>(Lcom/google/common/base/i0;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lcom/google/common/base/i0;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/i0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/j0$g;

    invoke-direct {v0, p0}, Lcom/google/common/base/j0$g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/q<",
            "Lcom/google/common/base/i0<",
            "TT;>;TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/j0$f;->a:Lcom/google/common/base/j0$f;

    return-object v0
.end method

.method public static f(Lcom/google/common/base/i0;)Lcom/google/common/base/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/i0<",
            "TT;>;)",
            "Lcom/google/common/base/i0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/j0$h;

    invoke-direct {v0, p0}, Lcom/google/common/base/j0$h;-><init>(Lcom/google/common/base/i0;)V

    return-object v0
.end method
