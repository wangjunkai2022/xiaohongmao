.class final Lio/reactivex/internal/operators/single/f$a;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Lio/reactivex/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/f$a$a;,
        Lio/reactivex/internal/operators/single/f$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final b:Lio/reactivex/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/l0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lio/reactivex/internal/operators/single/f;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/f;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/SequentialDisposable;",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/single/f$a;->c:Lio/reactivex/internal/operators/single/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/f$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/single/f$a;->b:Lio/reactivex/l0;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lio/reactivex/internal/operators/single/f$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/f$a;->c:Lio/reactivex/internal/operators/single/f;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/f;->d:Lio/reactivex/h0;

    new-instance v2, Lio/reactivex/internal/operators/single/f$a$a;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/f$a$a;-><init>(Lio/reactivex/internal/operators/single/f$a;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/single/f$a;->c:Lio/reactivex/internal/operators/single/f;

    iget-boolean v3, p1, Lio/reactivex/internal/operators/single/f;->e:Z

    if-eqz v3, :cond_0

    iget-wide v3, p1, Lio/reactivex/internal/operators/single/f;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p1, Lio/reactivex/internal/operators/single/f;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/f$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/f$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/f$a;->c:Lio/reactivex/internal/operators/single/f;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/f;->d:Lio/reactivex/h0;

    new-instance v2, Lio/reactivex/internal/operators/single/f$a$b;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/f$a$b;-><init>(Lio/reactivex/internal/operators/single/f$a;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/single/f$a;->c:Lio/reactivex/internal/operators/single/f;

    iget-wide v3, p1, Lio/reactivex/internal/operators/single/f;->b:J

    iget-object p1, p1, Lio/reactivex/internal/operators/single/f;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/c;)Z

    return-void
.end method
