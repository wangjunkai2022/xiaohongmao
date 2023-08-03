.class final Lcom/google/common/collect/k0$d;
.super Lcom/google/common/collect/k0;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k0<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/common/collect/k0$d;

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/k0$d;

    invoke-direct {v0}, Lcom/google/common/collect/k0$d;-><init>()V

    sput-object v0, Lcom/google/common/collect/k0$d;->c:Lcom/google/common/collect/k0$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/k0;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static synthetic t()Lcom/google/common/collect/k0$d;
    .locals 1

    sget-object v0, Lcom/google/common/collect/k0$d;->c:Lcom/google/common/collect/k0$d;

    return-object v0
.end method

.method private u()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/k0$d;->c:Lcom/google/common/collect/k0$d;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/k0;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/k0$d;->h(Lcom/google/common/collect/k0;)I

    move-result p1

    return p1
.end method

.method e(Lcom/google/common/collect/p0;)Lcom/google/common/collect/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/p0<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/k0<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/p0;->h()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/k0;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/k0;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public h(Lcom/google/common/collect/k0;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/k0<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method k(Ljava/lang/StringBuilder;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method l()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method m(Lcom/google/common/collect/p0;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/p0<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method n(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method o(Lcom/google/common/collect/p0;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/p0<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/p0;->h()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method p()Lcom/google/common/collect/BoundType;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method q()Lcom/google/common/collect/BoundType;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method r(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/p0;)Lcom/google/common/collect/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/p0<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/k0<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method s(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/p0;)Lcom/google/common/collect/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/p0<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/k0<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "this statement should be unreachable"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "-\u221e"

    return-object v0
.end method
