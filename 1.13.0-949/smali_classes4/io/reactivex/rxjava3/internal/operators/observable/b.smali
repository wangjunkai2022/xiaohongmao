.class public final Lio/reactivex/rxjava3/internal/operators/observable/b;
.super Ljava/lang/Object;
.source "BlockingObservableIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/b;->a:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/b;->b:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b$a;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/b;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/b$a;-><init>(I)V

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/b;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-object v0
.end method
