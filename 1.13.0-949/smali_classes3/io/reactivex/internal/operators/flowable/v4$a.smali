.class final Lio/reactivex/internal/operators/flowable/v4$a;
.super Lio/reactivex/subscribers/b;
.source "FlowableWindowBoundarySupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/internal/operators/flowable/v4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/v4$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/v4$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/v4$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/subscribers/b;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$a;->b:Lio/reactivex/internal/operators/flowable/v4$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/v4$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/v4$a;->c:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$a;->b:Lio/reactivex/internal/operators/flowable/v4$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/v4$b;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/v4$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/v4$a;->c:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v4$a;->b:Lio/reactivex/internal/operators/flowable/v4$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/v4$b;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/v4$a;->c:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/v4$a;->c:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/subscribers/b;->dispose()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/v4$a;->b:Lio/reactivex/internal/operators/flowable/v4$b;

    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/flowable/v4$b;->e(Lio/reactivex/internal/operators/flowable/v4$a;)V

    return-void
.end method
