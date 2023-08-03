.class public final Lio/reactivex/internal/operators/maybe/v0;
.super Lio/reactivex/i0;
.source "MaybeMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Lio/reactivex/y<",
        "TT;>;>;"
    }
.end annotation

.annotation build Lm7/d;
.end annotation


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/v0;->a:Lio/reactivex/q;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/v0;->a:Lio/reactivex/q;

    new-instance v1, Lio/reactivex/internal/operators/mixed/i;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/mixed/i;-><init>(Lio/reactivex/l0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/q;->b(Lio/reactivex/t;)V

    return-void
.end method
