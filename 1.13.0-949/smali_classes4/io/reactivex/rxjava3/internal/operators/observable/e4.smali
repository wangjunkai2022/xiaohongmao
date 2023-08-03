.class public final Lio/reactivex/rxjava3/internal/operators/observable/e4;
.super Lio/reactivex/rxjava3/core/p0;
.source "ObservableToListSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/e4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/core/p0<",
        "TU;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/f<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "source",
            "defaultCapacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->a:Lio/reactivex/rxjava3/core/l0;

    .line 3
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/a;->f(I)Lq7/s;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->b:Lq7/s;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "collectionSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/s<",
            "TU;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 5
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->a:Lio/reactivex/rxjava3/core/l0;

    .line 6
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->b:Lq7/s;

    return-void
.end method


# virtual methods
.method public M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 3
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
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->b:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null Collection."

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/e4$a;

    invoke-direct {v2, p1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/e4$a;-><init>(Lio/reactivex/rxjava3/core/s0;Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method

.method public a()Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/g0<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/d4;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->a:Lio/reactivex/rxjava3/core/l0;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/e4;->b:Lq7/s;

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/d4;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method
