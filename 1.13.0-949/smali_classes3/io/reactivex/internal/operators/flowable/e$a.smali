.class final Lio/reactivex/internal/operators/flowable/e$a;
.super Ljava/lang/Object;
.source "BlockingFlowableNext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/e;
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
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/flowable/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/e$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Throwable;

.field private g:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/c;Lio/reactivex/internal/operators/flowable/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lio/reactivex/internal/operators/flowable/e$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->d:Z

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Z

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lorg/reactivestreams/c;

    .line 5
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lio/reactivex/internal/operators/flowable/e$b;

    return-void
.end method

.method private a()Z
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->g:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/e$a;->g:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lio/reactivex/internal/operators/flowable/e$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/e$b;->e()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lorg/reactivestreams/c;

    invoke-static {v0}, Lio/reactivex/j;->Y2(Lorg/reactivestreams/c;)Lio/reactivex/j;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/j;->L3()Lio/reactivex/j;

    move-result-object v0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lio/reactivex/internal/operators/flowable/e$b;

    invoke-virtual {v0, v2}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lio/reactivex/internal/operators/flowable/e$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/e$b;->f()Lio/reactivex/y;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/reactivex/y;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 8
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Z

    .line 9
    invoke-virtual {v0}, Lio/reactivex/y;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->c:Ljava/lang/Object;

    return v1

    .line 10
    :cond_1
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/e$a;->d:Z

    .line 11
    invoke-virtual {v0}, Lio/reactivex/y;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 12
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/y;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v0}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->f:Ljava/lang/Throwable;

    .line 14
    invoke-static {v0}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lio/reactivex/internal/operators/flowable/e$b;

    invoke-virtual {v1}, Lio/reactivex/subscribers/b;->dispose()V

    .line 17
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->f:Ljava/lang/Throwable;

    .line 18
    invoke-static {v0}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->f:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/e$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 4
    :cond_3
    invoke-static {v0}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->f:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/e$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->c:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
