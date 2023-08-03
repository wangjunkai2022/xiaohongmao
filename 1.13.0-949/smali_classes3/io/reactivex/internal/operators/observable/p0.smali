.class public final Lio/reactivex/internal/operators/observable/p0;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDoOnLifecycle.java"


# annotations
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
.field private final b:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/z;Ln7/g;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/p0;->b:Ln7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/p0;->c:Ln7/a;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/observers/g;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/p0;->b:Ln7/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/p0;->c:Ln7/a;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/observers/g;-><init>(Lio/reactivex/g0;Ln7/g;Ln7/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
