.class public final Lcom/google/common/base/s;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/s$h;,
        Lcom/google/common/base/s$b;,
        Lcom/google/common/base/s$g;,
        Lcom/google/common/base/s$d;,
        Lcom/google/common/base/s$c;,
        Lcom/google/common/base/s$e;,
        Lcom/google/common/base/s$f;,
        Lcom/google/common/base/s$i;
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

.method public static a(Lcom/google/common/base/q;Lcom/google/common/base/q;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "TB;TC;>;",
            "Lcom/google/common/base/q<",
            "TA;+TB;>;)",
            "Lcom/google/common/base/q<",
            "TA;TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/s$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/s$d;-><init>(Lcom/google/common/base/q;Lcom/google/common/base/q;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/common/base/q;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/base/q<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/s$b;

    invoke-direct {v0, p0}, Lcom/google/common/base/s$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/util/Map;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/base/q<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/s$e;

    invoke-direct {v0, p0}, Lcom/google/common/base/s$e;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static d(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/q;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;TV;)",
            "Lcom/google/common/base/q<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/s$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/s$c;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Lcom/google/common/base/b0;)Lcom/google/common/base/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/b0<",
            "TT;>;)",
            "Lcom/google/common/base/q<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/s$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/s$g;-><init>(Lcom/google/common/base/b0;Lcom/google/common/base/s$a;)V

    return-object v0
.end method

.method public static f(Lcom/google/common/base/i0;)Lcom/google/common/base/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/i0<",
            "TT;>;)",
            "Lcom/google/common/base/q<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/s$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/s$h;-><init>(Lcom/google/common/base/i0;Lcom/google/common/base/s$a;)V

    return-object v0
.end method

.method public static g()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/q<",
            "TE;TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/s$f;->a:Lcom/google/common/base/s$f;

    return-object v0
.end method

.method public static h()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/s$i;->a:Lcom/google/common/base/s$i;

    return-object v0
.end method
