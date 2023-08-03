.class final Lio/reactivex/rxjava3/internal/operators/observable/h4$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableWindow.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final h:J = -0x67d4a190b6f57310L


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field d:J

.field e:Lio/reactivex/rxjava3/disposables/f;

.field f:Lio/reactivex/rxjava3/subjects/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile g:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "count",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->b:J

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->c:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->g:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/j;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
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

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->g:Z

    if-nez v2, :cond_0

    .line 3
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->c:I

    invoke-static {v0, p0}, Lio/reactivex/rxjava3/subjects/j;->H8(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/j;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    .line 5
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/k4;

    invoke-direct {v2, v0}, Lio/reactivex/rxjava3/internal/operators/observable/k4;-><init>(Lio/reactivex/rxjava3/subjects/i;)V

    .line 6
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v3, v2}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/j;->onNext(Ljava/lang/Object;)V

    .line 8
    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->d:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->d:J

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->b:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    const-wide/16 v3, 0x0

    .line 9
    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->d:J

    .line 10
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    .line 11
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    .line 12
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->g:Z

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->e:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_1
    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/observable/k4;->A8()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/j;->onComplete()V

    .line 16
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->f:Lio/reactivex/rxjava3/subjects/j;

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->e:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->e:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/h4$a;->e:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    return-void
.end method
