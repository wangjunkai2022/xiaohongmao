.class public final Lio/reactivex/rxjava3/internal/operators/completable/b0;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableMerge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/b0$a;
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Z


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "maxConcurrency",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/b0;->a:Lorg/reactivestreams/c;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/b0;->b:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/b0;->c:Z

    return-void
.end method


# virtual methods
.method public Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/b0$a;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/b0;->b:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/completable/b0;->c:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/completable/b0$a;-><init>(Lio/reactivex/rxjava3/core/d;IZ)V

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/b0;->a:Lorg/reactivestreams/c;

    invoke-interface {p1, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
