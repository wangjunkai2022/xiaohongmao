.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$o;
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
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln7/o<",
        "Ljava/util/List<",
        "Lorg/reactivestreams/c<",
        "+TT;>;>;",
        "Lorg/reactivestreams/c<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$o;->a:Ln7/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lorg/reactivestreams/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/reactivestreams/c<",
            "+TT;>;>;)",
            "Lorg/reactivestreams/c<",
            "+TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$o;->a:Ln7/o;

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lio/reactivex/j;->H8(Ljava/lang/Iterable;Ln7/o;ZI)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$o;->a(Ljava/util/List;)Lorg/reactivestreams/c;

    move-result-object p1

    return-object p1
.end method
