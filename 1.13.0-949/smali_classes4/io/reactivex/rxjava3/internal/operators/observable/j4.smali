.class public final Lio/reactivex/rxjava3/internal/operators/observable/j4;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/j4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/rxjava3/core/g0<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TB;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/o;I)V
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
            "open",
            "closingIndicator",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;",
            "Lq7/o<",
            "-TB;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4;->b:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4;->c:Lq7/o;

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4;->d:I

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 5
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4;->b:Lio/reactivex/rxjava3/core/l0;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4;->c:Lq7/o;

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/j4;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/j4$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/core/l0;Lq7/o;I)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
