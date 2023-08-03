.class public final Lcom/google/common/hash/k;
.super Ljava/lang/Object;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/k$e;,
        Lcom/google/common/hash/k$c;,
        Lcom/google/common/hash/k$d;,
        Lcom/google/common/hash/k$b;,
        Lcom/google/common/hash/k$f;,
        Lcom/google/common/hash/k$g;,
        Lcom/google/common/hash/k$a;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/hash/a0;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lcom/google/common/hash/k$e;

    invoke-direct {v0, p0}, Lcom/google/common/hash/k$e;-><init>(Lcom/google/common/hash/a0;)V

    return-object v0
.end method

.method public static b()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/k$a;->a:Lcom/google/common/hash/k$a;

    return-object v0
.end method

.method public static c()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/k$b;->a:Lcom/google/common/hash/k$b;

    return-object v0
.end method

.method public static d()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/k$c;->a:Lcom/google/common/hash/k$c;

    return-object v0
.end method

.method public static e(Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "TE;>;)",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/hash/k$d;

    invoke-direct {v0, p0}, Lcom/google/common/hash/k$d;-><init>(Lcom/google/common/hash/Funnel;)V

    return-object v0
.end method

.method public static f(Ljava/nio/charset/Charset;)Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/hash/k$f;

    invoke-direct {v0, p0}, Lcom/google/common/hash/k$f;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static g()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/k$g;->a:Lcom/google/common/hash/k$g;

    return-object v0
.end method
