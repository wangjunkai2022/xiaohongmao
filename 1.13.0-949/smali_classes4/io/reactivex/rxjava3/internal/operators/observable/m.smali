.class public final Lio/reactivex/rxjava3/internal/operators/observable/m;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/m$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:I

.field final c:I

.field final d:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;IILq7/s;)V
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
            "count",
            "skip",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;II",
            "Lq7/s<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->b:I

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->c:I

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->d:Lq7/s;

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
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
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->c:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->b:I

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->d:Lq7/s;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/m$a;-><init>(Lio/reactivex/rxjava3/core/n0;ILq7/s;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/m$b;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->b:I

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->c:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->d:Lq7/s;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/m$b;-><init>(Lio/reactivex/rxjava3/core/n0;IILq7/s;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :cond_1
    :goto_0
    return-void
.end method
