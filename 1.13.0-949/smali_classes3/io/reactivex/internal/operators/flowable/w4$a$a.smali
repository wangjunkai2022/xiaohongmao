.class final Lio/reactivex/internal/operators/flowable/w4$a$a;
.super Ljava/lang/Object;
.source "FlowableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/w4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lio/reactivex/internal/operators/flowable/w4$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/w4$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/flowable/w4$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/internal/operators/flowable/w4$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/w4$a$a;->a:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/w4$a$a;->b:Lio/reactivex/internal/operators/flowable/w4$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$a$a;->b:Lio/reactivex/internal/operators/flowable/w4$a;

    .line 2
    invoke-static {v0}, Lio/reactivex/internal/operators/flowable/w4$a;->n(Lio/reactivex/internal/operators/flowable/w4$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lio/reactivex/internal/operators/flowable/w4$a;->o(Lio/reactivex/internal/operators/flowable/w4$a;)Lo7/n;

    move-result-object v1

    invoke-interface {v1, p0}, Lo7/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/w4$a;->G2:Z

    .line 5
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/w4$a;->q()V

    :cond_1
    return-void
.end method
