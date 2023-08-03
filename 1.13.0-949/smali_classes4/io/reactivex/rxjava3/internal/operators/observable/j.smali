.class public final Lio/reactivex/rxjava3/internal/operators/observable/j;
.super Lio/reactivex/rxjava3/core/p0;
.source "ObservableAnySingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/rxjava3/internal/fuseable/f<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->a:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->b:Lq7/r;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 3
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
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/j$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->b:Lq7/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/j$a;-><init>(Lio/reactivex/rxjava3/core/s0;Lq7/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method

.method public a()Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/i;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->a:Lio/reactivex/rxjava3/core/l0;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->b:Lq7/r;

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/i;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method
