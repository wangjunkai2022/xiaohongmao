.class public abstract Lcom/google/android/gms/common/api/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/q;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/common/api/l$a;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/l$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract d()Lcom/google/android/gms/common/api/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/q;
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()Z
.end method

.method public abstract h(Lcom/google/android/gms/common/api/r;)V
    .param p1    # Lcom/google/android/gms/common/api/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/r<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract i(Lcom/google/android/gms/common/api/r;JLjava/util/concurrent/TimeUnit;)V
    .param p1    # Lcom/google/android/gms/common/api/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/r<",
            "-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation
.end method

.method public j(Lcom/google/android/gms/common/api/t;)Lcom/google/android/gms/common/api/u;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/q;",
            ">(",
            "Lcom/google/android/gms/common/api/t<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/u<",
            "TS;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
