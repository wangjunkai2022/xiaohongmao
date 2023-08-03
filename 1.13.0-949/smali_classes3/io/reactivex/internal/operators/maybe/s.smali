.class public final Lio/reactivex/internal/operators/maybe/s;
.super Lio/reactivex/q;
.source "MaybeDoOnTerminate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/s;->a:Lio/reactivex/w;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/s;->b:Ln7/a;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/s$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/maybe/s$a;-><init>(Lio/reactivex/internal/operators/maybe/s;Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method
