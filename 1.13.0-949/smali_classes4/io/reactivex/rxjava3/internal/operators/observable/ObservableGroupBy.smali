.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/rxjava3/observables/b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;IZ)V
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
            "keySelector",
            "valueSelector",
            "bufferSize",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->b:Lq7/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->c:Lq7/o;

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->d:I

    .line 5
    iput-boolean p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->e:Z

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
            "-",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->b:Lq7/o;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->c:Lq7/o;

    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->d:I

    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;->e:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;Lq7/o;IZ)V

    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
