.class public final Lio/reactivex/rxjava3/internal/operators/single/c;
.super Lio/reactivex/rxjava3/core/p0;
.source "SingleContains.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;

.field final c:Lq7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/v0;Ljava/lang/Object;Lq7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "value",
            "comparer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lq7/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/c;->a:Lio/reactivex/rxjava3/core/v0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/c;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/single/c;->c:Lq7/d;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/c;->a:Lio/reactivex/rxjava3/core/v0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/c$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/c$a;-><init>(Lio/reactivex/rxjava3/internal/operators/single/c;Lio/reactivex/rxjava3/core/s0;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/v0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method
