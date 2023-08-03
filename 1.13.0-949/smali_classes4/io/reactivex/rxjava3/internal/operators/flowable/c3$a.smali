.class final Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableRefCount.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lq7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lq7/g<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:J = -0x3f2c4fd6dc101621L


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/flowable/c3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/c3<",
            "*>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/rxjava3/disposables/f;

.field c:J

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/c3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/c3<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->a:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->a:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->e:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->a:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->b:Lio/reactivex/rxjava3/flowables/a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/flowables/a;->r9()V

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->a(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;->a:Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;->i9(Lio/reactivex/rxjava3/internal/operators/flowable/c3$a;)V

    return-void
.end method
