.class final Lio/reactivex/rxjava3/internal/operators/observable/a3$b;
.super Lio/reactivex/rxjava3/internal/operators/observable/a3$c;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a3$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final f:J = -0x2a0bdab9530de829L


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/a3$c;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/l0;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a3$c;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void
.end method

.method e()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/a3$c;->c()V

    return-void
.end method
