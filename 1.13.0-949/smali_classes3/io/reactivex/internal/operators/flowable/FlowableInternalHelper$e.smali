.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Ln7/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln7/o<",
        "TT;",
        "Lorg/reactivestreams/c<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field private final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ln7/c;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/c<",
            "-TT;-TU;+TR;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->a:Ln7/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->b:Ln7/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/reactivestreams/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/reactivestreams/c<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->b:Ln7/o;

    invoke-interface {v0, p1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/c;

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/b2;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$d;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->a:Ln7/c;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$d;-><init>(Ln7/c;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/b2;-><init>(Lorg/reactivestreams/c;Ln7/o;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->a(Ljava/lang/Object;)Lorg/reactivestreams/c;

    move-result-object p1

    return-object p1
.end method
