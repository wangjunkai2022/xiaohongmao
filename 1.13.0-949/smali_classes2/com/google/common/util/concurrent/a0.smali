.class public abstract Lcom/google/common/util/concurrent/a0;
.super Lcom/google/common/util/concurrent/f0;
.source "ForwardingCheckedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/f0<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/q<",
        "TV;TX;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/f0;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic N()Lcom/google/common/util/concurrent/q0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    return-object v0
.end method

.method protected abstract O()Lcom/google/common/util/concurrent/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/q<",
            "TV;TX;>;"
        }
    .end annotation
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/q;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^",
            "Ljava/util/concurrent/TimeoutException;",
            "^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/q;->m(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
