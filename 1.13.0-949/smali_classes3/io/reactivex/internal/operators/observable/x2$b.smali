.class final Lio/reactivex/internal/operators/observable/x2$b;
.super Lio/reactivex/internal/operators/observable/x2$c;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/x2;
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
        "Lio/reactivex/internal/operators/observable/x2$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final f:J = -0x2a0bdab9530de829L


# direct methods
.method constructor <init>(Lio/reactivex/g0;Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;",
            "Lio/reactivex/e0<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/observable/x2$c;-><init>(Lio/reactivex/g0;Lio/reactivex/e0;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x2$c;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void
.end method

.method e()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/x2$c;->c()V

    return-void
.end method
