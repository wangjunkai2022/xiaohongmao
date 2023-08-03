.class final Lio/reactivex/internal/operators/observable/e4$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableWindow.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/e4;
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
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final h:J = -0x67d4a190b6f57310L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field d:J

.field e:Lio/reactivex/disposables/c;

.field f:Lio/reactivex/subjects/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile g:Z


# direct methods
.method constructor <init>(Lio/reactivex/g0;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e4$a;->a:Lio/reactivex/g0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/e4$a;->b:J

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/e4$a;->c:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->g:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->f:Lio/reactivex/subjects/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/e4$a;->f:Lio/reactivex/subjects/j;

    .line 3
    invoke-virtual {v0}, Lio/reactivex/subjects/j;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->f:Lio/reactivex/subjects/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/e4$a;->f:Lio/reactivex/subjects/j;

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/j;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->f:Lio/reactivex/subjects/j;

    if-nez v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/e4$a;->g:Z

    if-nez v1, :cond_0

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->c:I

    invoke-static {v0, p0}, Lio/reactivex/subjects/j;->j(ILjava/lang/Runnable;)Lio/reactivex/subjects/j;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->f:Lio/reactivex/subjects/j;

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/e4$a;->a:Lio/reactivex/g0;

    invoke-interface {v1, v0}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/j;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/e4$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/e4$a;->d:J

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/e4$a;->b:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/e4$a;->d:J

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e4$a;->f:Lio/reactivex/subjects/j;

    .line 10
    invoke-virtual {v0}, Lio/reactivex/subjects/j;->onComplete()V

    .line 11
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/e4$a;->g:Z

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e4$a;->e:Lio/reactivex/disposables/c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->e:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e4$a;->e:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e4$a;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e4$a;->e:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method
