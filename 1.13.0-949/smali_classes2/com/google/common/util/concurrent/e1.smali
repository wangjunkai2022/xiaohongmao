.class public final Lcom/google/common/util/concurrent/e1;
.super Lcom/google/common/util/concurrent/d$j;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/d$j<",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/d$j;-><init>()V

    return-void
.end method

.method public static R()Lcom/google/common/util/concurrent/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/e1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/e1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/e1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public M(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/d;->M(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public N(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/d;->N(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public O(Lcom/google/common/util/concurrent/q0;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;)Z"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/d;->O(Lcom/google/common/util/concurrent/q0;)Z

    move-result p1

    return p1
.end method
