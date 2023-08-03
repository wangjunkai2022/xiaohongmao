.class final Lio/reactivex/internal/operators/flowable/j0$a$c;
.super Ljava/lang/Object;
.source "FlowableDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/j0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/flowable/j0$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/j0$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/j0$a$c;->b:Lio/reactivex/internal/operators/flowable/j0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/j0$a$c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/j0$a$c;->b:Lio/reactivex/internal/operators/flowable/j0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/j0$a;->a:Lorg/reactivestreams/d;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/j0$a$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-void
.end method
