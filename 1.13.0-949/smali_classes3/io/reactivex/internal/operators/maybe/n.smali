.class public final Lio/reactivex/internal/operators/maybe/n;
.super Lio/reactivex/q;
.source "MaybeDelayWithCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/n$a;,
        Lio/reactivex/internal/operators/maybe/n$b;
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

.field final b:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/n;->a:Lio/reactivex/w;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/n;->b:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/n;->b:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/maybe/n$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/n;->a:Lio/reactivex/w;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/n$b;-><init>(Lio/reactivex/t;Lio/reactivex/w;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
