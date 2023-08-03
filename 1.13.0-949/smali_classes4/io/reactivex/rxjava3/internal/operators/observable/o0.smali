.class public final Lio/reactivex/rxjava3/internal/operators/observable/o0;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lq7/a;

.field final e:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/g;Lq7/g;Lq7/a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "onNext",
            "onError",
            "onComplete",
            "onAfterTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->b:Lq7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->c:Lq7/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->d:Lq7/a;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->e:Lq7/a;

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 8
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/o0$a;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->b:Lq7/g;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->c:Lq7/g;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->d:Lq7/a;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/o0;->e:Lq7/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/o0$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/g;Lq7/g;Lq7/a;Lq7/a;)V

    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
