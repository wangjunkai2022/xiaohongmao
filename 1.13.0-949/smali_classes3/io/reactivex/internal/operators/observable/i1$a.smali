.class final Lio/reactivex/internal/operators/observable/i1$a;
.super Ljava/lang/Object;
.source "ObservableGenerate.java"

# interfaces
.implements Lio/reactivex/i;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/i<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "TS;-",
            "Lio/reactivex/i<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final c:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-TS;>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:Z

.field g:Z


# direct methods
.method constructor <init>(Lio/reactivex/g0;Ln7/c;Ln7/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;",
            "Ln7/c<",
            "TS;-",
            "Lio/reactivex/i<",
            "TT;>;TS;>;",
            "Ln7/g<",
            "-TS;>;TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i1$a;->a:Lio/reactivex/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i1$a;->b:Ln7/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/i1$a;->c:Ln7/g;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/i1$a;->d:Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->c:Ln7/g;

    invoke-interface {v0, p1}, Ln7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->e:Z

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->d:Ljava/lang/Object;

    .line 2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/i1$a;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/i1$a;->d:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/i1$a;->d(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/i1$a;->b:Ln7/c;

    .line 6
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/i1$a;->e:Z

    if-eqz v3, :cond_2

    .line 7
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/i1$a;->d:Ljava/lang/Object;

    .line 8
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/i1$a;->d(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 9
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/i1$a;->g:Z

    const/4 v3, 0x1

    .line 10
    :try_start_0
    invoke-interface {v1, v0, p0}, Ln7/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/i1$a;->f:Z

    if-eqz v4, :cond_1

    .line 12
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/i1$a;->e:Z

    .line 13
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/i1$a;->d:Ljava/lang/Object;

    .line 14
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/i1$a;->d(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 16
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/i1$a;->d:Ljava/lang/Object;

    .line 17
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/i1$a;->e:Z

    .line 18
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/i1$a;->onError(Ljava/lang/Throwable;)V

    .line 19
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/i1$a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->e:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->f:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->f:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    :goto_0
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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->f:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->g:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext already called in this generate turn"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/i1$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/i1$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->g:Z

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i1$a;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
