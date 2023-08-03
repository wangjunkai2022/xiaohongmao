.class public abstract Lio/reactivex/observables/a;
.super Lio/reactivex/z;
.source "ConnectableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    return-void
.end method

.method private h()Lio/reactivex/observables/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/operators/observable/h2;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/g2;

    move-object v1, p0

    check-cast v1, Lio/reactivex/internal/operators/observable/h2;

    .line 3
    invoke-interface {v1}, Lio/reactivex/internal/operators/observable/h2;->a()Lio/reactivex/e0;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/g2;-><init>(Lio/reactivex/e0;)V

    .line 4
    invoke-static {v0}, Lio/reactivex/plugins/a;->U(Lio/reactivex/observables/a;)Lio/reactivex/observables/a;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public b()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/observables/a;->d(I)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/observables/a;->e(ILn7/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public e(ILn7/g;)Lio/reactivex/z;
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
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lio/reactivex/observables/a;->g(Ln7/g;)V

    .line 2
    invoke-static {p0}, Lio/reactivex/plugins/a;->U(Lio/reactivex/observables/a;)Lio/reactivex/observables/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/k;-><init>(Lio/reactivex/observables/a;ILn7/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lio/reactivex/disposables/c;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/util/e;

    invoke-direct {v0}, Lio/reactivex/internal/util/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/observables/a;->g(Ln7/g;)V

    .line 3
    iget-object v0, v0, Lio/reactivex/internal/util/e;->a:Lio/reactivex/disposables/c;

    return-object v0
.end method

.method public abstract g(Ln7/g;)V
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

.method public i()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/o2;

    invoke-direct {p0}, Lio/reactivex/observables/a;->h()Lio/reactivex/observables/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/o2;-><init>(Lio/reactivex/observables/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final j(I)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/a;->l(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final k(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/a;->l(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final l(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/z;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
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
    new-instance v0, Lio/reactivex/internal/operators/observable/o2;

    invoke-direct {p0}, Lio/reactivex/observables/a;->h()Lio/reactivex/observables/a;

    move-result-object v2

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/o2;-><init>(Lio/reactivex/observables/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final m(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/a;->l(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final n(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/z<",
            "TT;>;"
        }
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/observables/a;->l(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
