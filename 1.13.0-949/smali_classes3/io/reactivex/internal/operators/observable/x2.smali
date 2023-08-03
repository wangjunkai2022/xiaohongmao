.class public final Lio/reactivex/internal/operators/observable/x2;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/x2$a;,
        Lio/reactivex/internal/operators/observable/x2$b;,
        Lio/reactivex/internal/operators/observable/x2$d;,
        Lio/reactivex/internal/operators/observable/x2$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/e0<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/x2;->b:Lio/reactivex/e0;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/x2;->c:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/l;

    invoke-direct {v0, p1}, Lio/reactivex/observers/l;-><init>(Lio/reactivex/g0;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/x2;->c:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/x2$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/x2;->b:Lio/reactivex/e0;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/x2$a;-><init>(Lio/reactivex/g0;Lio/reactivex/e0;)V

    invoke-interface {p1, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/x2$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/x2;->b:Lio/reactivex/e0;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/x2$b;-><init>(Lio/reactivex/g0;Lio/reactivex/e0;)V

    invoke-interface {p1, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    :goto_0
    return-void
.end method
