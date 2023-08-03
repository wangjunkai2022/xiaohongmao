.class final Lio/reactivex/internal/operators/flowable/q4$a$a;
.super Ljava/lang/Object;
.source "FlowableUnsubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/q4$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/q4$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q4$a$a;->a:Lio/reactivex/internal/operators/flowable/q4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q4$a$a;->a:Lio/reactivex/internal/operators/flowable/q4$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/q4$a;->c:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    return-void
.end method
