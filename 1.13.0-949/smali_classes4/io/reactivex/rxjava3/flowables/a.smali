.class public abstract Lio/reactivex/rxjava3/flowables/a;
.super Lio/reactivex/rxjava3/core/m;
.source "ConnectableFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    return-void
.end method


# virtual methods
.method public g9()Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/flowables/a;->h9(I)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public h9(I)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberOfSubscribers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/flowables/a;->i9(ILq7/g;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public i9(ILq7/g;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numberOfSubscribers",
            "connection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "connection is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gtz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/flowables/a;->k9(Lq7/g;)V

    .line 3
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->T(Lio/reactivex/rxjava3/flowables/a;)Lio/reactivex/rxjava3/flowables/a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/k;-><init>(Lio/reactivex/rxjava3/flowables/a;ILq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final j9()Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/util/e;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/flowables/a;->k9(Lq7/g;)V

    .line 3
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/util/e;->a:Lio/reactivex/rxjava3/disposables/f;

    return-object v0
.end method

.method public abstract k9(Lq7/g;)V
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation
.end method

.method public l9()Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;-><init>(Lio/reactivex/rxjava3/flowables/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final m9(I)Lio/reactivex/rxjava3/core/m;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriberCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/flowables/a;->o9(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final n9(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/m;
    .locals 6
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subscriberCount",
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/flowables/a;->o9(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final o9(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/m;
    .locals 8
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "subscriberCount",
            "timeout",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "subscriberCount"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/c3;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/c3;-><init>(Lio/reactivex/rxjava3/flowables/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final p9(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/m;
    .locals 6
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/flowables/a;->o9(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final q9(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/m;
    .locals 6
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/flowables/a;->o9(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public abstract r9()V
    .annotation runtime Lp7/g;
        value = "none"
    .end annotation
.end method
