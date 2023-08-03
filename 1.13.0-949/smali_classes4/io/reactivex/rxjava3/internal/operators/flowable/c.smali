.class public final Lio/reactivex/rxjava3/internal/operators/flowable/c;
.super Ljava/lang/Object;
.source "BlockingFlowableLatest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/c$a;
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
.field final a:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c;->a:Lorg/reactivestreams/c;

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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;-><init>()V

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c;->a:Lorg/reactivestreams/c;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/m;->b4()Lio/reactivex/rxjava3/core/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-object v0
.end method
