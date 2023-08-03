.class public final Lio/reactivex/internal/operators/flowable/n3;
.super Lio/reactivex/i0;
.source "FlowableSequenceEqualSingle.java"

# interfaces
.implements Lo7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/n3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lo7/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Lorg/reactivestreams/c;Ln7/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Ln7/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n3;->a:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/n3;->b:Lorg/reactivestreams/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/n3;->c:Ln7/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/n3;->d:I

    return-void
.end method


# virtual methods
.method public b1(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/n3$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/n3;->d:I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/n3;->c:Ln7/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/n3$a;-><init>(Lio/reactivex/l0;ILn7/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/n3;->a:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n3;->b:Lorg/reactivestreams/c;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/n3$a;->d(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)V

    return-void
.end method

.method public c()Lio/reactivex/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/m3;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n3;->a:Lorg/reactivestreams/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/n3;->b:Lorg/reactivestreams/c;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/n3;->c:Ln7/d;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/n3;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/m3;-><init>(Lorg/reactivestreams/c;Lorg/reactivestreams/c;Ln7/d;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method
