.class public final Lio/reactivex/rxjava3/internal/operators/completable/a0;
.super Lio/reactivex/rxjava3/core/p0;
.source "CompletableMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Lio/reactivex/rxjava3/core/d0<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/a0;->a:Lio/reactivex/rxjava3/core/a;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 2
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
            "-",
            "Lio/reactivex/rxjava3/core/d0<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a0;->a:Lio/reactivex/rxjava3/core/a;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/mixed/n;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/n;-><init>(Lio/reactivex/rxjava3/core/s0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
