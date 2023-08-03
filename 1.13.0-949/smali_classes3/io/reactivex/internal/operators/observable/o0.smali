.class public final Lio/reactivex/internal/operators/observable/o0;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/o0$a;
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
.field final b:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ln7/a;

.field final e:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ln7/g;Ln7/g;Ln7/a;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/o0;->b:Ln7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/o0;->c:Ln7/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/o0;->d:Ln7/a;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/o0;->e:Ln7/a;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v7, Lio/reactivex/internal/operators/observable/o0$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/o0;->b:Ln7/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/o0;->c:Ln7/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/o0;->d:Ln7/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/o0;->e:Ln7/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/o0$a;-><init>(Lio/reactivex/g0;Ln7/g;Ln7/g;Ln7/a;Ln7/a;)V

    invoke-interface {v0, v7}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
