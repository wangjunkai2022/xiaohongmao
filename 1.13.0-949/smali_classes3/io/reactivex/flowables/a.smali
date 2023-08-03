.class public abstract Lio/reactivex/flowables/a;
.super Lio/reactivex/j;
.source "ConnectableFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    return-void
.end method

.method private R8()Lio/reactivex/flowables/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/operators/flowable/r2;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/operators/flowable/r2;

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/flowable/q2;

    .line 4
    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/r2;->a()Lorg/reactivestreams/c;

    move-result-object v2

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/r2;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/flowable/q2;-><init>(Lorg/reactivestreams/c;I)V

    .line 5
    invoke-static {v1}, Lio/reactivex/plugins/a;->T(Lio/reactivex/flowables/a;)Lio/reactivex/flowables/a;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public M8()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/flowables/a;->N8(I)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public N8(I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/flowables/a;->O8(ILn7/g;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public O8(ILn7/g;)Lio/reactivex/j;
    .locals 1
    .param p2    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lio/reactivex/flowables/a;->Q8(Ln7/g;)V

    .line 2
    invoke-static {p0}, Lio/reactivex/plugins/a;->T(Lio/reactivex/flowables/a;)Lio/reactivex/flowables/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/k;-><init>(Lio/reactivex/flowables/a;ILn7/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P8()Lio/reactivex/disposables/c;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/util/e;

    invoke-direct {v0}, Lio/reactivex/internal/util/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/flowables/a;->Q8(Ln7/g;)V

    .line 3
    iget-object v0, v0, Lio/reactivex/internal/util/e;->a:Lio/reactivex/disposables/c;

    return-object v0
.end method

.method public abstract Q8(Ln7/g;)V
    .param p1    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public S8()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/z2;

    invoke-direct {p0}, Lio/reactivex/flowables/a;->R8()Lio/reactivex/flowables/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/z2;-><init>(Lio/reactivex/flowables/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final T8(I)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/b;->i()Lio/reactivex/h0;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/a;->V8(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final U8(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/a;->V8(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final V8(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "subscriberCount"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/z2;

    invoke-direct {p0}, Lio/reactivex/flowables/a;->R8()Lio/reactivex/flowables/a;

    move-result-object v2

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/z2;-><init>(Lio/reactivex/flowables/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final W8(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/a;->V8(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final X8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/flowables/a;->V8(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method
