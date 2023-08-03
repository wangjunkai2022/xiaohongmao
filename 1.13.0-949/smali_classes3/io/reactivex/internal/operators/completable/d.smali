.class public final Lio/reactivex/internal/operators/completable/d;
.super Lio/reactivex/a;
.source "CompletableConcat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/d$a;
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/d;->a:Lorg/reactivestreams/c;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/d;->b:I

    return-void
.end method


# virtual methods
.method public I0(Lio/reactivex/d;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d;->a:Lorg/reactivestreams/c;

    new-instance v1, Lio/reactivex/internal/operators/completable/d$a;

    iget v2, p0, Lio/reactivex/internal/operators/completable/d;->b:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/d$a;-><init>(Lio/reactivex/d;I)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
