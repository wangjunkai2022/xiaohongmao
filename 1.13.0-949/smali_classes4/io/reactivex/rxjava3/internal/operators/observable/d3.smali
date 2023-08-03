.class public final Lio/reactivex/rxjava3/internal/operators/observable/d3;
.super Lio/reactivex/rxjava3/core/g0;
.source "ObservableSequenceEqual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/d3$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/d3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/g0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lq7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "first",
            "second",
            "comparer",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->a:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->b:Lio/reactivex/rxjava3/core/l0;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->c:Lq7/d;

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->d:I

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 7
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
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/observable/d3$a;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->d:I

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->a:Lio/reactivex/rxjava3/core/l0;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->b:Lio/reactivex/rxjava3/core/l0;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/d3;->c:Lq7/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/d3$a;-><init>(Lio/reactivex/rxjava3/core/n0;ILio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/operators/observable/d3$a;->d()V

    return-void
.end method
