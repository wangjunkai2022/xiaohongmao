.class public final Lio/reactivex/internal/operators/maybe/m1;
.super Lio/reactivex/z;
.source "MaybeToObservable.java"

# interfaces
.implements Lo7/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/m1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;",
        "Lo7/f<",
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


# direct methods
.method public constructor <init>(Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/m1;->a:Lio/reactivex/w;

    return-void
.end method

.method public static b(Lio/reactivex/g0;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/g0<",
            "-TT;>;)",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/maybe/m1$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/m1$a;-><init>(Lio/reactivex/g0;)V

    return-object v0
.end method


# virtual methods
.method public source()Lio/reactivex/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m1;->a:Lio/reactivex/w;

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m1;->a:Lio/reactivex/w;

    invoke-static {p1}, Lio/reactivex/internal/operators/maybe/m1;->b(Lio/reactivex/g0;)Lio/reactivex/t;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method
