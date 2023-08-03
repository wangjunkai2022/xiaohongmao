.class final Lio/reactivex/internal/operators/flowable/x3$a$a;
.super Ljava/lang/Object;
.source "FlowableSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/x3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/e;

.field final b:J


# direct methods
.method constructor <init>(Lorg/reactivestreams/e;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x3$a$a;->a:Lorg/reactivestreams/e;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/x3$a$a;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x3$a$a;->a:Lorg/reactivestreams/e;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/x3$a$a;->b:J

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/e;->request(J)V

    return-void
.end method
