.class final Lio/reactivex/rxjava3/internal/jdk8/v$a;
.super Ljava/lang/Object;
.source "ObservableFromStream.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/jdk8/v;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/internal/fuseable/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/AutoCloseable;

.field volatile d:Z

.field e:Z

.field f:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Ljava/util/Iterator;Ljava/lang/AutoCloseable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downstream",
            "iterator",
            "closeable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/lang/AutoCloseable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->b:Ljava/util/Iterator;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->c:Ljava/lang/AutoCloseable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->b:Ljava/util/Iterator;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 4
    :goto_0
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/v$a;->clear()V

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The Stream\'s Iterator.next returned a null value"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1, v3}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 9
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    if-eqz v3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {v1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    .line 12
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 13
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    invoke-interface {v1, v3}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 15
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    goto :goto_0

    :catchall_1
    move-exception v3

    .line 16
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 17
    invoke-interface {v1, v3}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 18
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->b:Ljava/util/Iterator;

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->c:Ljava/lang/AutoCloseable;

    .line 3
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->c:Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lio/reactivex/rxjava3/internal/jdk8/v;->A8(Ljava/lang/AutoCloseable;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/v$a;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->d:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->e:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/v$a;->clear()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->b:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->e:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->e:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/jdk8/v$a;->clear()V

    return-object v1

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The Stream\'s Iterator.next() returned a null value"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/v$a;->f:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
