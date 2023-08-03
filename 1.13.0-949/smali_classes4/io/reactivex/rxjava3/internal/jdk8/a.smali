.class public final Lio/reactivex/rxjava3/internal/jdk8/a;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableFromCompletionStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/jdk8/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/a;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletionStage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/a;->a:Ljava/util/concurrent/CompletionStage;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/g$a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/jdk8/g$a;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/jdk8/a$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/rxjava3/internal/jdk8/a$a;-><init>(Lio/reactivex/rxjava3/core/d;Lio/reactivex/rxjava3/internal/jdk8/g$a;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/a;->a:Ljava/util/concurrent/CompletionStage;

    invoke-interface {p1, v0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    return-void
.end method
