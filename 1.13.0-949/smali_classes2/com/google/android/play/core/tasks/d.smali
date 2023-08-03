.class public abstract Lcom/google/android/play/core/tasks/d;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/d;
    .param p1    # Lcom/google/android/play/core/tasks/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/a<",
            "TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/d;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/tasks/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/a<",
            "TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;
    .param p1    # Lcom/google/android/play/core/tasks/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/tasks/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract e(Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/c<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/tasks/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/c<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract g()Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TResultT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method
