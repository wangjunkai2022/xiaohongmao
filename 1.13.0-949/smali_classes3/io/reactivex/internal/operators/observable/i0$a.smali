.class final Lio/reactivex/internal/operators/observable/i0$a;
.super Ljava/lang/Object;
.source "ObservableDematerialize.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/y<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Lio/reactivex/disposables/c;


# direct methods
.method constructor <init>(Lio/reactivex/g0;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/y<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i0$a;->a:Lio/reactivex/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i0$a;->b:Ln7/o;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->d:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->d:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->c:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->c:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->c:Z

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lio/reactivex/y;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lio/reactivex/y;

    .line 4
    invoke-virtual {p1}, Lio/reactivex/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->b:Ln7/o;

    invoke-interface {v0, p1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null Notification"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Lio/reactivex/y;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->d:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 9
    invoke-virtual {p1}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/i0$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/y;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i0$a;->d:Lio/reactivex/disposables/c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    .line 12
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/i0$a;->onComplete()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->a:Lio/reactivex/g0;

    invoke-virtual {p1}, Lio/reactivex/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->d:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 16
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/i0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i0$a;->d:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i0$a;->d:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i0$a;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    :cond_0
    return-void
.end method
