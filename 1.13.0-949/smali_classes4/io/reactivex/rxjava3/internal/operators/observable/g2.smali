.class public final Lio/reactivex/rxjava3/internal/operators/observable/g2;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/g2$a;
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
.field final b:Lio/reactivex/rxjava3/core/o0;

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "scheduler",
            "delayError",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/o0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/g2;->b:Lio/reactivex/rxjava3/core/o0;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/g2;->c:Z

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/g2;->d:I

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/g2;->b:Lio/reactivex/rxjava3/core/o0;

    instance-of v1, v0, Lio/reactivex/rxjava3/internal/schedulers/o;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/g2$a;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/g2;->c:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/g2;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/g2$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/o0$c;ZI)V

    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :goto_0
    return-void
.end method
