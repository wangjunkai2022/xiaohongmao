.class public final Lio/reactivex/rxjava3/internal/jdk8/w;
.super Lio/reactivex/rxjava3/internal/jdk8/z;
.source "ObservableLastStageObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/jdk8/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final c:Z

.field final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hasDefault",
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/jdk8/z;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/jdk8/w;->c:Z

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/w;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/z;->b:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/z;->a()V

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/jdk8/z;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/w;->c:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/w;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/jdk8/z;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/jdk8/z;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/z;->b:Ljava/lang/Object;

    return-void
.end method
