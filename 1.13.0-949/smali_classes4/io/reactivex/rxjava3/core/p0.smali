.class public abstract Lio/reactivex/rxjava3/core/p0;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/v0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/v0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->o1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static A2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/k;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lq7/k;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT6;>;",
            "Lq7/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p6}, Lio/reactivex/rxjava3/internal/functions/a;->B(Lq7/k;)Lq7/o;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->o1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static B2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/j;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lq7/j;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT5;>;",
            "Lq7/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/functions/a;->A(Lq7/j;)Lq7/o;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/m;->q1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static C0(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/g0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/g0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static C1(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/w;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/w;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static C2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/i;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lq7/i;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT4;>;",
            "Lq7/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Lio/reactivex/rxjava3/internal/functions/a;->z(Lq7/i;)Lq7/o;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static D0(Ljava/util/concurrent/CompletionStage;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Ljava/util/concurrent/CompletionStage;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "stage is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/g0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/jdk8/g0;-><init>(Ljava/util/concurrent/CompletionStage;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static D2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/h;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/h;
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
            "source1",
            "source2",
            "source3",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT3;>;",
            "Lq7/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Lio/reactivex/rxjava3/internal/functions/a;->y(Lq7/h;)Lq7/o;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/lang/Iterable;I)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/m;->e1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/core/p0;
    .locals 0
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->c3(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static E2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
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
            "source1",
            "source2",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lq7/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/a;->x(Lq7/c;)Lq7/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->b1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/p0;
    .locals 0
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
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
            "future",
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/reactivex/rxjava3/core/m;->d3(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static F2(Ljava/lang/Iterable;Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/f1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/f1;-><init>(Ljava/lang/Iterable;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lio/reactivex/rxjava3/core/m;->c1(Lq7/o;II)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maybe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/q1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/q1;-><init>(Lio/reactivex/rxjava3/core/b0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # [Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipper",
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    .line 4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/p0;->o0(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/e1;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/single/e1;-><init>([Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Lio/reactivex/rxjava3/core/b0;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maybe",
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;TT;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultItem is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/q1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/q1;-><init>(Lio/reactivex/rxjava3/core/b0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/Iterable;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, v1}, Lio/reactivex/rxjava3/core/m;->e1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/h3;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static J(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publisher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/h0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/h0;-><init>(Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, v1}, Lio/reactivex/rxjava3/core/m;->e1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static K0(Lq7/s;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/i0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/i0;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/m0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/m0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static P1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/m;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/mixed/m;-><init>(Lorg/reactivestreams/c;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static Q1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/m;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/mixed/m;-><init>(Lorg/reactivestreams/c;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static R(Lio/reactivex/rxjava3/core/t0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/t0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/t0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/d;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/d;-><init>(Lio/reactivex/rxjava3/core/t0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lq7/s;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/e;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/e;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static S0(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static T0(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
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
            "source1",
            "source2",
            "source3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    const p2, 0x7fffffff

    invoke-virtual {p0, p1, v1, p2}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static U0(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
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
            "source1",
            "source2",
            "source3",
            "source4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    const p2, 0x7fffffff

    invoke-virtual {p0, p1, v1, p2}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static V0(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->P2(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static W0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 4
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/f1;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/f1;-><init>(Lorg/reactivestreams/c;Lq7/o;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static X0(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/y;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/y;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Y0([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Z0([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # [Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, p0, v1}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static b1(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
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
            "source1",
            "source2",
            "source3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p1, 0x2

    aput-object p2, v0, p1

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p2

    const v0, 0x7fffffff

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static c1(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
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
            "source1",
            "source2",
            "source3",
            "source4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p2

    const p3, 0x7fffffff

    invoke-virtual {p1, p2, p0, p3}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static d1(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/m;->Q2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/rxjava3/internal/operators/single/a;-><init>([Lio/reactivex/rxjava3/core/v0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 4
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/f1;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/f1;-><init>(Lorg/reactivestreams/c;Lq7/o;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method private e2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeout",
            "unit",
            "scheduler",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/y0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/single/y0;-><init>(Lio/reactivex/rxjava3/core/v0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public static varargs f([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->a()Lq7/s;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/p0;->p0(Lq7/s;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 6
    invoke-static {p0}, Lio/reactivex/rxjava3/core/p0;->w2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/a;-><init>([Lio/reactivex/rxjava3/core/v0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static f2(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/p0;->g2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static g1()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/single/q0;->a:Lio/reactivex/rxjava3/core/p0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public static g2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/o0;
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
            "delay",
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
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/z0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/single/z0;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "throwable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/functions/a;->o(Ljava/lang/Object;)Lq7/s;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/p0;->p0(Lq7/s;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lio/reactivex/rxjava3/core/m;->p1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Lq7/s;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/x;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/x;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
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
            "source1",
            "source2",
            "source3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lio/reactivex/rxjava3/core/m;->p1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
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
            "source1",
            "source2",
            "source3",
            "source4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lio/reactivex/rxjava3/core/m;->p1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method private static r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/m;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/u3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/u3;-><init>(Lio/reactivex/rxjava3/core/m;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->p1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static s2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSubscribe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/rxjava3/core/p0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/j0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/j0;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Single) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/p0;->u(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/g;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, v2, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/g;-><init>(Lorg/reactivestreams/c;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static u2(Lq7/s;Lq7/o;Lq7/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
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
            "resourceSupplier",
            "sourceSupplier",
            "resourceCleanup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TU;>;",
            "Lq7/o<",
            "-TU;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;",
            "Lq7/g<",
            "-TU;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/p0;->v2(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 4
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/s;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/mixed/s;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static v2(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
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
            "resourceSupplier",
            "sourceSupplier",
            "resourceCleanup",
            "eager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TU;>;",
            "Lq7/o<",
            "-TU;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;",
            "Lq7/g<",
            "-TU;>;Z)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resourceCleanup is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/d1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/single/d1;-><init>(Lq7/s;Lq7/o;Lq7/g;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->p1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static w2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/rxjava3/core/p0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/reactivex/rxjava3/core/p0;

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/j0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/j0;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->p1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static x2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/n;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p9    # Lq7/n;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "source7",
            "source8",
            "source9",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT8;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT9;>;",
            "Lq7/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 9
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 10
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {p9}, Lio/reactivex/rxjava3/internal/functions/a;->E(Lq7/n;)Lq7/o;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs y([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # [Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->b1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static y2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/m;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Lq7/m;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "source7",
            "source8",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT8;>;",
            "Lq7/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 9
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {p8}, Lio/reactivex/rxjava3/internal/functions/a;->D(Lq7/m;)Lq7/o;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs z([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/single/l0;->c()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static z2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/l;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lq7/l;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "source7",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT7;>;",
            "Lq7/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p7}, Lio/reactivex/rxjava3/internal/functions/a;->C(Lq7/l;)Lq7/o;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, Lio/reactivex/rxjava3/core/p0;->G2(Lq7/o;[Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Lq7/o;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/e0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/e0;-><init>(Lio/reactivex/rxjava3/core/p0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final A1(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->M5(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final B0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/f0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/f0;-><init>(Lio/reactivex/rxjava3/core/p0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final B1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/s0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/s;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/s;-><init>(Lio/reactivex/rxjava3/core/s0;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method

.method public final D1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g;",
            ")",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final E1(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/v;->I2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final F1(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->w2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final G1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->y6(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final H1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->q2()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/g0;->p1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final H2(Lio/reactivex/rxjava3/core/v0;Lq7/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TU;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/core/p0;->E2(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;Lq7/c;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final I1()Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->f:Lq7/g;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/p0;->L1(Lq7/g;Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    return-object v0
.end method

.method public final J1(Lq7/b;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onCallback is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;-><init>(Lq7/b;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-object v0
.end method

.method public final K1(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->f:Lq7/g;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/p0;->L1(Lq7/g;Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/y;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final L0()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/k0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/k0;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final L1(Lq7/g;Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "onSuccess",
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lq7/g;Lq7/g;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-object v0
.end method

.method public final M(Lq7/o;)Lio/reactivex/rxjava3/core/a;
    .locals 0
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/p0;->u0(Lq7/o;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final M0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/v;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/v;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract M1(Lio/reactivex/rxjava3/core/s0;)V
    .param p1    # Lio/reactivex/rxjava3/core/s0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final N(Lq7/o;)Lio/reactivex/rxjava3/core/v;
    .locals 0
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/p0;->v0(Lq7/o;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final N1(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/v0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/v0;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/p0;->p(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final O0(Lio/reactivex/rxjava3/core/u0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/u0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lift"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/u0<",
            "+TR;-TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "lift is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/n0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/n0;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/u0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final O1(Lio/reactivex/rxjava3/core/s0;)Lio/reactivex/rxjava3/core/s0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-object p1
.end method

.method public final P(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/b;->a()Lq7/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/p0;->Q(Ljava/lang/Object;Lq7/d;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final P0(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/o0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/o0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Ljava/lang/Object;Lq7/d;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/d;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "comparer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq7/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "comparer is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/single/c;-><init>(Lio/reactivex/rxjava3/core/v0;Ljava/lang/Object;Lq7/d;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;",
            "Ljava/util/Optional<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/h0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/h0;-><init>(Lio/reactivex/rxjava3/core/p0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final R0()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/core/d0<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/p0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/p0;-><init>(Lio/reactivex/rxjava3/core/p0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final R1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/q0;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/q0;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->T1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final S1(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TE;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/a1;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/single/a1;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->T1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final T(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/p0;
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
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/p0;->V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final T1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TE;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/w0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/w0;-><init>(Lio/reactivex/rxjava3/core/v0;Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final U(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
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
            "time",
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
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/p0;->V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final U1()Lio/reactivex/rxjava3/observers/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observers/n<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/observers/n;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-object v0
.end method

.method public final V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/p0;
    .locals 8
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
            0x0,
            0x0
        }
        names = {
            "time",
            "unit",
            "scheduler",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/f;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/single/f;-><init>(Lio/reactivex/rxjava3/core/v0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final V1(Z)Lio/reactivex/rxjava3/observers/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/observers/n<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/observers/n;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/observers/n;->dispose()V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-object v0
.end method

.method public final W(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/rxjava3/core/p0;
    .locals 6
    .param p3    # Ljava/util/concurrent/TimeUnit;
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
            "time",
            "unit",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/p0;->V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final W1()Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/p0;->Z1(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final X(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
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
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/p0;->Y(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final X1(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/p0;->Z1(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final Y(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 0
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
            "time",
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
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/g0;->l7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/p0;->a0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/p0;->Z1(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriptionIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/g;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final Z1(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/x0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/single/x0;-><init>(Lio/reactivex/rxjava3/core/v0;Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final a0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriptionIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/h;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/h;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final a2(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/p0;
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
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/core/p0;->e2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final b0(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriptionIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/j;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final b2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
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
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/core/p0;->e2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final c0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriptionIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/i;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/i;-><init>(Lio/reactivex/rxjava3/core/v0;Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final c2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/v0;
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
            "timeout",
            "unit",
            "scheduler",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct/range {p0 .. p5}, Lio/reactivex/rxjava3/core/p0;->e2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/reactivex/rxjava3/core/s0;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/s0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/a;->g0(Lio/reactivex/rxjava3/core/p0;Lio/reactivex/rxjava3/core/s0;)Lio/reactivex/rxjava3/core/s0;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/p0;->M1(Lio/reactivex/rxjava3/core/s0;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0

    :catch_0
    move-exception p1

    .line 9
    throw p1
.end method

.method public final d0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;",
            "Lio/reactivex/rxjava3/core/d0<",
            "TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/k;-><init>(Lio/reactivex/rxjava3/core/p0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final d2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/v0;
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
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/core/p0;->e2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Lq7/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAfterSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onAfterSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/m;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final f0(Lq7/a;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAfterTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/n;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/n;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final f1(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/p0;->S0(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/p0;->f([Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final g0(Lq7/a;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFinally"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/o;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/o;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/g;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final h0(Lq7/a;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onDispose is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/p;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/p;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final h1(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/r0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/r0;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final h2()Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/p0;->k2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 2
    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->e:Lq7/g;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/p0;->l(Lq7/g;Lq7/g;)V

    return-void
.end method

.method public final i0(Lq7/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/q;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/q;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final i1(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->l(Ljava/lang/Class;)Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->q0(Lq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/v;->o(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final i2(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/p0;->k2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/rxjava3/core/s0;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/s0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/d;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/d;-><init>()V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/s0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/observers/d;->c(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method

.method public final j0(Lq7/b;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/r;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/r;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/b;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final j1()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->k1(Lq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final j2(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/p0;->k2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lq7/g;)V
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->e:Lq7/g;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/p0;->l(Lq7/g;Lq7/g;)V

    return-void
.end method

.method public final k0(Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onSubscribe",
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/s;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/single/s;-><init>(Lio/reactivex/rxjava3/core/p0;Lq7/g;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final k1(Lq7/r;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/s0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/s0;-><init>(Lio/reactivex/rxjava3/core/p0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final k2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/x0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/single/x0;-><init>(Lio/reactivex/rxjava3/core/v0;Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lq7/g;Lq7/g;)V
    .locals 2
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "onSuccess",
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->d(Lio/reactivex/rxjava3/core/s0;)V

    .line 5
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {v0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/observers/g;->b(Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final l0(Lq7/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSubscribe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/t;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final l1(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fallbackSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "fallbackSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/u0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/u0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final l2(Lio/reactivex/rxjava3/core/q0;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/q0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/q0<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/q0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/q0;->a(Lio/reactivex/rxjava3/core/p0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/b;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/b;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final m0(Lq7/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/u;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/u;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final m1(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->n(Ljava/lang/Object;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/p0;->l1(Lq7/o;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final m2()Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/jdk8/b;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->O1(Lio/reactivex/rxjava3/core/s0;)Lio/reactivex/rxjava3/core/s0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final n(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->e(Ljava/lang/Class;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/p0;->P0(Lq7/o;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final n0(Lq7/a;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/v;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/v;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final n1(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "itemSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/t0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/single/t0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final n2()Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/d;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/d;->c()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/a1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/a1;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lio/reactivex/rxjava3/core/w0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/w0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/w0<",
            "-TT;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/w0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/w0;->a(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/v0;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->w2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final o1(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/t0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/single/t0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final o2()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/i;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/i;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/p0;->O1(Lio/reactivex/rxjava3/core/s0;)Lio/reactivex/rxjava3/core/s0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final p1()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/l;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/l;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final p2()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/e;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/e;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/e;->b()Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/n0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/n0;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final q0(Lq7/r;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/a0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/a0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final q1()Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/m;->k5()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final q2()Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/f;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/f;->a()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/b1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/b1;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final r0(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/y;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final r1(J)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/core/m;->l5(J)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final s0(Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/z;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/single/z;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final s1(Lq7/e;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lq7/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/e;",
            ")",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->m5(Lq7/e;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final t0(Lq7/o;Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onSuccessMapper",
            "onErrorMapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSuccessMapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/e0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/single/e0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final t1(Lq7/o;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->n5(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final t2(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/c1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/c1;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final u0(Lq7/o;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/a0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/a0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final u1()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/m;->G5()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final v0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/d0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/d0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final v1(J)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/core/m;->H5(J)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final w0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/x;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/x;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final w1(JLq7/r;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p3    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "times",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/rxjava3/core/m;->I5(JLq7/r;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final x0(Lq7/o;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/f0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/f0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final x1(Lq7/d;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/d;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->J5(Lq7/d;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final y0(Lq7/o;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/b0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/b0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final y1(Lq7/r;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->K5(Lq7/r;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->r2(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/c0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/c0;-><init>(Lio/reactivex/rxjava3/core/v0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final z1(Lq7/e;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p1    # Lq7/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/e;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->v(Lq7/e;)Lq7/r;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/p0;->w1(JLq7/r;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method
