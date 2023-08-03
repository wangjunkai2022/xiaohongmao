.class public final Lio/reactivex/rxjava3/internal/operators/single/s;
.super Lio/reactivex/rxjava3/core/p0;
.source "SingleDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/p0;Lq7/g;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "upstream",
            "onSubscribe",
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/s;->a:Lio/reactivex/rxjava3/core/p0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/s;->b:Lq7/g;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/single/s;->c:Lq7/a;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 4
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
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/s;->a:Lio/reactivex/rxjava3/core/p0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/s$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/s;->b:Lq7/g;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/single/s;->c:Lq7/a;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/single/s$a;-><init>(Lio/reactivex/rxjava3/core/s0;Lq7/g;Lq7/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method
