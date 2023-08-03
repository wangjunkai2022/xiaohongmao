.class public abstract Lio/reactivex/rxjava3/core/g0;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/l0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs A0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/rxjava3/core/g0;->z0(II[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static A3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3",
            "item4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static B0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->C0(Lio/reactivex/rxjava3/core/l0;IZ)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static B3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3",
            "item4",
            "item5"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static C0(Lio/reactivex/rxjava3/core/l0;IZ)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "sources",
            "bufferSize",
            "tillTheEnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;IZ)",
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

    const-string v0, "bufferSize is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/u;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static C3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3",
            "item4",
            "item5",
            "item6"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static C4(II)Lio/reactivex/rxjava3/core/g0;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/lang/Integer;",
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

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->x3(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/m2;-><init>(II)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D0(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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
    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->B0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static D3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3",
            "item4",
            "item5",
            "item6",
            "item7"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 8
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static D4(JJ)Lio/reactivex/rxjava3/core/g0;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/lang/Long;",
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

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->x3(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_3
    :goto_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/n2;-><init>(JJ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->F0(Lio/reactivex/rxjava3/core/l0;II)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static E3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3",
            "item4",
            "item5",
            "item6",
            "item7",
            "item8"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 9
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Lio/reactivex/rxjava3/core/l0;II)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "sources",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;II)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/reactivex/rxjava3/core/g0;->Y0(Lq7/o;II)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static F3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3",
            "item4",
            "item5",
            "item6",
            "item7",
            "item8",
            "item9"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 9
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->H0(Ljava/lang/Iterable;II)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static G3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3",
            "item4",
            "item5",
            "item6",
            "item7",
            "item8",
            "item9",
            "item10"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 9
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item10 is null"

    .line 10
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

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

    const/16 p0, 0x9

    aput-object p9, v0, p0

    .line 11
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Ljava/lang/Iterable;II)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
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
            "sources",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;II)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/rxjava3/core/g0;->a1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static H7(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/rxjava3/core/g0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/l1;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Observable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static I0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->J0(Lio/reactivex/rxjava3/core/l0;II)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Lio/reactivex/rxjava3/core/l0;II)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "sources",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;II)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/rxjava3/core/g0;->a1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static J7(Lq7/s;Lq7/o;Lq7/g;)Lio/reactivex/rxjava3/core/g0;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TD;>;",
            "Lq7/o<",
            "-TD;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/g<",
            "-TD;>;)",
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

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->K7(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static K0(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->L0(Ljava/lang/Iterable;II)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static K7(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/g0;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TD;>;",
            "Lq7/o<",
            "-TD;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/g<",
            "-TD;>;Z)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/g4;-><init>(Lq7/s;Lq7/o;Lq7/g;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static L0(Ljava/lang/Iterable;II)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
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
            "sources",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;II)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/rxjava3/core/g0;->a1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static N2(Lq7/a;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/a;",
            ")",
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

    const-string v0, "action is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/c1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/c1;-><init>(Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "items is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->x3(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/d1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/d1;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static P2(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/e1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static Q2(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completableSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/g;",
            ")",
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

    const-string v0, "completableSource is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/f1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/f1;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static Q3(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/l0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w0;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/w0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ZII)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static R()I
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    return v0
.end method

.method public static R2(Ljava/util/concurrent/CompletionStage;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "stage is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/u;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/jdk8/u;-><init>(Ljava/util/concurrent/CompletionStage;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static R3(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;I)",
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

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w0;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/w0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ZII)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static S2(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/core/g0;
    .locals 4
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

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g1;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/observable/g1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static S3(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3
    invoke-static {v1}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static T2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/g1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static T3(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    new-array v1, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 4
    invoke-static {v1}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
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

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/h1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static U3(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    new-array v1, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    .line 5
    invoke-static {v1}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static V2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/p1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/p1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static V3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->o2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method private W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lq7/a;
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
            "onNext",
            "onError",
            "onComplete",
            "onAfterTerminate"
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
            ">;",
            "Lq7/a;",
            "Lq7/a;",
            ")",
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

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/o0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/g;Lq7/g;Lq7/a;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public static W2(Ljava/util/Optional;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Ljava/util/Optional;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Optional<",
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

    const-string v0, "optional is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/reactivex/rxjava3/core/e0;->a:Lio/reactivex/rxjava3/core/e0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lio/reactivex/rxjava3/core/f0;->a:Lio/reactivex/rxjava3/core/f0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/g0;

    return-object p0
.end method

.method public static W3(Ljava/lang/Iterable;I)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;I)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/g0;->p2(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static X2(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/i1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/i1;-><init>(Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static X3(Ljava/lang/Iterable;II)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
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
            "sources",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;II)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/rxjava3/core/g0;->z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/n;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT8;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT9;>;",
            "Lq7/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
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

    const-string v0, "combiner is null"

    .line 10
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

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

    .line 11
    invoke-static {p9}, Lio/reactivex/rxjava3/internal/functions/a;->E(Lq7/n;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static Y2(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            ")",
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

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/j1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/j1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Y3(II[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p2    # [Lio/reactivex/rxjava3/core/l0;
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
            "maxConcurrency",
            "bufferSize",
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p2}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p2

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/rxjava3/core/g0;->z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/m;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT8;>;",
            "Lq7/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
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

    const-string v0, "combiner is null"

    .line 9
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

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

    .line 10
    invoke-static {p8}, Lio/reactivex/rxjava3/internal/functions/a;->D(Lq7/m;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static Z2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/b1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/b1;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Z3([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, Lio/reactivex/rxjava3/core/g0;->p2(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/l;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT7;>;",
            "Lq7/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
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

    const-string v0, "combiner is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

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

    .line 9
    invoke-static {p7}, Lio/reactivex/rxjava3/internal/functions/a;->C(Lq7/l;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static a3(Ljava/util/stream/Stream;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Ljava/util/stream/Stream;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
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

    const-string v0, "stream is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/v;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/jdk8/v;-><init>(Ljava/util/stream/Stream;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a4(II[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p2    # [Lio/reactivex/rxjava3/core/l0;
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
            "maxConcurrency",
            "bufferSize",
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p2}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p2

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/rxjava3/core/g0;->z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/k;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lq7/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
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

    const-string v0, "combiner is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

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

    .line 8
    invoke-static {p6}, Lio/reactivex/rxjava3/internal/functions/a;->B(Lq7/k;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static b3(Lq7/s;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/k1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/k1;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b4([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/h;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/j;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lq7/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
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

    const-string v0, "combiner is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

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

    .line 7
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/functions/a;->A(Lq7/j;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static c3(Lq7/g;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/g<",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;>;)",
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

    const-string v0, "generator is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->u()Lq7/s;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->l(Lq7/g;)Lq7/c;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    .line 4
    invoke-static {v0, p0, v1}, Lio/reactivex/rxjava3/core/g0;->g3(Lq7/s;Lq7/c;Lq7/g;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static c4(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/l0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w0;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v4, 0x1

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/w0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ZII)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/h;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/i;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lq7/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
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

    const-string v0, "combiner is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 6
    invoke-static {p4}, Lio/reactivex/rxjava3/internal/functions/a;->z(Lq7/i;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static d3(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialState",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TS;>;",
            "Lq7/b<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;>;)",
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

    const-string v0, "generator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->k(Lq7/b;)Lq7/c;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->g3(Lq7/s;Lq7/c;Lq7/g;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static d4(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;I)",
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

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w0;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/w0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ZII)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/h;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lq7/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 5
    invoke-static {p3}, Lio/reactivex/rxjava3/internal/functions/a;->y(Lq7/h;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static e3(Lq7/s;Lq7/b;Lq7/g;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/b;
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
            "initialState",
            "generator",
            "disposeState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TS;>;",
            "Lq7/b<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;>;",
            "Lq7/g<",
            "-TS;>;)",
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

    const-string v0, "generator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->k(Lq7/b;)Lq7/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/core/g0;->g3(Lq7/s;Lq7/c;Lq7/g;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static e4(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3
    invoke-static {v1}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lq7/c<",
            "-TT1;-TT2;+TR;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 4
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/a;->x(Lq7/c;)Lq7/o;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result p1

    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static f2()Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
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

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/t0;->a:Lio/reactivex/rxjava3/core/g0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public static f3(Lq7/s;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialState",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TS;>;",
            "Lq7/c<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;TS;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->g3(Lq7/s;Lq7/c;Lq7/g;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static f4(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    new-array v1, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 4
    invoke-static {v1}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/lang/Iterable;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->h0(Ljava/lang/Iterable;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static g2(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "throwable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/functions/a;->o(Ljava/lang/Object;)Lq7/s;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->h2(Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static g3(Lq7/s;Lq7/c;Lq7/g;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/c;
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
            "initialState",
            "generator",
            "disposeState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TS;>;",
            "Lq7/c<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;TS;>;",
            "Lq7/g<",
            "-TS;>;)",
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

    const-string v0, "initialState is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/m1;-><init>(Lq7/s;Lq7/c;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static g4(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    new-array v1, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    .line 5
    invoke-static {v1}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ljava/lang/Iterable;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            0x0,
            0x0
        }
        names = {
            "sources",
            "combiner",
            "bufferSize"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 4
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/t;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/t;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V

    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static h2(Lq7/s;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/u0;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static h4(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->x2(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static i0([Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static i4(Ljava/lang/Iterable;I)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;I)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method private i7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/f;
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
            "timeout",
            "unit",
            "fallback",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/b4;-><init>(Lio/reactivex/rxjava3/core/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public static i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/rxjava3/core/g0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/reactivex/rxjava3/core/g0;

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/l1;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static j0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0
        }
        names = {
            "sources",
            "combiner",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 6
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/t;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/t;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V

    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static j4(Ljava/lang/Iterable;II)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
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
            "sources",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;II)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/rxjava3/core/g0;->z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method private j7(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "firstTimeoutIndicator",
            "itemTimeoutIndicator",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/a4;-><init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public static j8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/n;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT8;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT9;>;",
            "Lq7/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static k0([Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->l0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static k7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->l7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static k8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/m;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT8;>;",
            "Lq7/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static l0([Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 6
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0
        }
        names = {
            "sources",
            "combiner",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    array-length v0, p0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_0
    shl-int/lit8 v4, p2, 0x1

    .line 6
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/t;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/t;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V

    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static l7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/c4;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/c4;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static l8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/l;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT7;>;",
            "Lq7/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/lang/Iterable;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->n0(Ljava/lang/Iterable;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static m8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/k;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT6;>;",
            "Lq7/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Ljava/lang/Iterable;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            0x0,
            0x0
        }
        names = {
            "sources",
            "combiner",
            "bufferSize"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 4
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/t;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/t;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V

    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static n8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/j;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT5;>;",
            "Lq7/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static o4()Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
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

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/f2;->a:Lio/reactivex/rxjava3/core/g0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public static o8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/i;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT4;>;",
            "Lq7/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/g0;->q0(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static p3(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->q3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static p8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/h;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT3;>;",
            "Lq7/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/u;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static q3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "initialDelay",
            "period",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/s1;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/s1;-><init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static q8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lq7/c<",
            "-TT1;-TT2;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static r3(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 6
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
            "period",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->q3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static r6(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/g0;->s6(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static r8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/c;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "zipper",
            "delayError"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lq7/c<",
            "-TT1;-TT2;+TR;>;Z)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/rxjava3/core/l0;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static s0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static s3(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 6
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
            "period",
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->q3(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static s6(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p3;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/p3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static s8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/c;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "zipper",
            "delayError",
            "bufferSize"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT2;>;",
            "Lq7/c<",
            "-TT1;-TT2;+TR;>;ZI)",
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

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, Lio/reactivex/rxjava3/core/g0;->v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static t0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static t1(Lio/reactivex/rxjava3/core/j0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/j0;
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
            "Lio/reactivex/rxjava3/core/j0<",
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

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/c0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/c0;-><init>(Lio/reactivex/rxjava3/core/j0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static t3(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 10
    .param p8    # Ljava/util/concurrent/TimeUnit;
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
            "start",
            "count",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lio/reactivex/rxjava3/core/g0;->u3(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public static t6(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/g0;->u6(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static t8(Ljava/lang/Iterable;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
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

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o4;

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/o4;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static u0(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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
    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lio/reactivex/rxjava3/core/g0;->V0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static u3(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 16
    .param p8    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p9    # Lio/reactivex/rxjava3/core/o0;
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
            "start",
            "count",
            "initialDelay",
            "period",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, Lio/reactivex/rxjava3/core/g0;->A1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    add-long v6, p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "unit is null"

    .line 3
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v11, Lio/reactivex/rxjava3/internal/operators/observable/t1;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object v0, v11

    move-wide/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lio/reactivex/rxjava3/internal/operators/observable/t1;-><init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v11}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0

    .line 6
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static u5(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/b;->a()Lq7/d;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/g0;->x5(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;I)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static u6(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p3;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/p3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static u8(Ljava/lang/Iterable;Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "sources",
            "zipper",
            "delayError",
            "bufferSize"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
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

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o4;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/o4;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 4
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v2

    sget-object v3, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/observable/u;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static v5(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;I)",
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

    invoke-static {p0, p1, v0, p2}, Lio/reactivex/rxjava3/core/g0;->x5(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;I)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v8(Lq7/o;ZI[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p0    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # [Lio/reactivex/rxjava3/core/l0;
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
            "zipper",
            "delayError",
            "bufferSize",
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
            "+TR;>;ZI[",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p3

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o4;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/o4;-><init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/g0;->B0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static w5(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "isEqual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/d<",
            "-TT;-TT;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->x5(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;I)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x0(II[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p2    # [Lio/reactivex/rxjava3/core/l0;
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
            "maxConcurrency",
            "bufferSize",
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p2}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p2

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/rxjava3/core/g0;->a1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static x3(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Ljava/lang/Object;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
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

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/v1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static x5(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;I)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "isEqual",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Lq7/d<",
            "-TT;-TT;>;I)",
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

    const-string v0, "isEqual is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e3;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/e3;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/d;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs y0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/rxjava3/core/g0;->x0(II[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static y1(Lq7/s;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/f0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/f0;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static y3(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
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
            "item1",
            "item2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs z0(II[Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p2    # [Lio/reactivex/rxjava3/core/l0;
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
            "maxConcurrency",
            "bufferSize",
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p2}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p2

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/rxjava3/core/g0;->a1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static z3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
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
            "item1",
            "item2",
            "item3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
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

    const-string v0, "item1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(I)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    invoke-virtual {p0, p1, p1}, Lio/reactivex/rxjava3/core/g0;->B(II)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final A1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->B1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final A2(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->B2(Lq7/o;Z)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final A4(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;)",
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

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/l2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final A5(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
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
            "defaultItem"
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

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/h3;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final A6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 9
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
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
            "count",
            "time",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/rxjava3/core/g0;->B6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final A7(Lq7/o;Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
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
            "keySelector",
            "valueSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
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
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/HashMapSupplier;->asSupplier()Lq7/s;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asFunction()Lq7/o;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/rxjava3/core/g0;->C7(Lq7/o;Lq7/o;Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final B(II)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "skip"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lq7/s;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->C(IILq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final B1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/g0;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final B2(Lq7/o;Z)Lio/reactivex/rxjava3/core/a;
    .locals 1
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
            "mapper",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;Z)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/y0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/y0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final B4()Lio/reactivex/rxjava3/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observables/a<",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/k2;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/k2;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->U(Lio/reactivex/rxjava3/observables/a;)Lio/reactivex/rxjava3/observables/a;

    move-result-object v0

    return-object v0
.end method

.method public final B5()Lio/reactivex/rxjava3/core/v;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g3;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/g3;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final B6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 11
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
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
            "count",
            "time",
            "unit",
            "scheduler",
            "delayError",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "ZI)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-wide v2, p1

    const-string v0, "unit is null"

    move-object/from16 v6, p5

    .line 1
    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v7, p6

    .line 2
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v8, p8

    .line 3
    invoke-static {v8, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 4
    new-instance v10, Lio/reactivex/rxjava3/internal/operators/observable/t3;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/reactivex/rxjava3/internal/operators/observable/t3;-><init>(Lio/reactivex/rxjava3/core/l0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)V

    invoke-static {v10}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B7(Lq7/o;Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/s;
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
            "keySelector",
            "valueSelector",
            "mapSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;",
            "Lq7/s<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asFunction()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->C7(Lq7/o;Lq7/o;Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final C(IILq7/s;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p3    # Lq7/s;
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
            "count",
            "skip",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Lq7/s<",
            "TU;>;)",
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

    const-string v0, "count"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "skip"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/m;-><init>(Lio/reactivex/rxjava3/core/l0;IILq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final C1(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->B1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final C2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/b1;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final C5()Lio/reactivex/rxjava3/core/p0;
    .locals 2
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/h3;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final C6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:trampoline"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->F6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final C7(Lq7/o;Lq7/o;Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lq7/o;
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
            "keySelector",
            "valueSelector",
            "mapSupplier",
            "collectionFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;",
            "Lq7/s<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "Lq7/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, p2, p4}, Lio/reactivex/rxjava3/internal/functions/a;->H(Lq7/o;Lq7/o;Lq7/o;)Lq7/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/rxjava3/core/g0;->W(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final D(ILq7/s;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p2    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Lq7/s<",
            "TU;>;)",
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

    invoke-virtual {p0, p1, p1, p2}, Lio/reactivex/rxjava3/core/g0;->C(IILq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final D1(Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "subscriptionIndicator",
            "itemDelayIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;)",
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->H1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/g0;->E1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final D2(Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TV;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TV;>;"
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
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->a(Lq7/o;)Lq7/o;

    move-result-object v2

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/rxjava3/core/g0;->u2(Lq7/o;Lq7/c;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final D5()Ljava/util/concurrent/CompletionStage;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/jdk8/y;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final D6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->F6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final D7()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->q()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->F7(Ljava/util/Comparator;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final E(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .param p5    # Ljava/util/concurrent/TimeUnit;
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
            "timespan",
            "timeskip",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    move-result-object v6

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lq7/s;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->G(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final E1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "itemDelayIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;>;)",
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

    const-string v0, "itemDelayIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->c(Lq7/o;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->o2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final E2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->F2(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final E4(Lq7/c;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/c<",
            "TT;TT;TT;>;)",
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

    const-string v0, "reducer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/o2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final E5(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/internal/jdk8/y;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method

.method public final E6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->F6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final E7(I)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->q()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/g0;->G7(Ljava/util/Comparator;I)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final F(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
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
            "timespan",
            "timeskip",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lq7/s;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->G(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final F1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->G1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final F2(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "mapper",
            "delayErrors"
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
            "+TR;>;>;Z)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/z0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/z0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final F4(Ljava/lang/Object;Lq7/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
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
            "seed",
            "reducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lq7/c<",
            "TR;-TT;TR;>;)",
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

    const-string v0, "seed is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/p2;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Object;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final F5(J)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/i3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/i3;-><init>(Lio/reactivex/rxjava3/core/l0;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 expected but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 9
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
            0x0,
            0x0
        }
        names = {
            "time",
            "unit",
            "scheduler",
            "delayError",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "ZI)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/rxjava3/core/g0;->B6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final F7(Ljava/util/Comparator;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/List<",
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

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/g0;->t7()Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->p(Ljava/util/Comparator;)Lq7/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/p0;->P0(Lq7/o;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final G(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lq7/s;)Lio/reactivex/rxjava3/core/g0;
    .locals 12
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lq7/s;
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
            "timespan",
            "timeskip",
            "unit",
            "scheduler",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lq7/s<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TU;>;"
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

    move-object/from16 v7, p5

    .line 1
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 2
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    .line 3
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, Lio/reactivex/rxjava3/internal/operators/observable/p;-><init>(Lio/reactivex/rxjava3/core/l0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lq7/s;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final G1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->H1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final G2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->H2(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final G4(Lq7/s;Lq7/c;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/s;
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
            "seedSupplier",
            "reducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TR;>;",
            "Lq7/c<",
            "TR;-TT;TR;>;)",
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

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/q2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/q2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/s;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final G5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {p1, p2, p3}, Lio/reactivex/rxjava3/core/g0;->k7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->O5(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final G6(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:trampoline"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->F6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final G7(Ljava/util/Comparator;I)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comparator",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/List<",
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

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/g0;->u7(I)Lio/reactivex/rxjava3/core/p0;

    move-result-object p2

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->p(Ljava/util/Comparator;)Lq7/o;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/core/p0;->P0(Lq7/o;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "timespan",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->K(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/core/g0;

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

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/h0;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final H2(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "mapper",
            "delayErrors"
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
            "+TR;>;>;Z)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/a1;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final H3(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
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
            "defaultItem"
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

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/x1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/x1;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final H4()Lio/reactivex/rxjava3/core/g0;
    .locals 2
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

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->I4(J)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final H5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->O5(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final H6(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/u3;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final I(JLjava/util/concurrent/TimeUnit;I)Lio/reactivex/rxjava3/core/g0;
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
            "timespan",
            "unit",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->K(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final I1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/i0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/i0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final I2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/t;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/t;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final I3()Lio/reactivex/rxjava3/core/v;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/w1;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final I4(J)Lio/reactivex/rxjava3/core/g0;
    .locals 3
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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/s2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/s2;-><init>(Lio/reactivex/rxjava3/core/g0;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I5(I)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/j3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/j3;-><init>(Lio/reactivex/rxjava3/core/l0;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I6(Lq7/r;)Lio/reactivex/rxjava3/core/g0;
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
            "stopPredicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-TT;>;)",
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

    const-string v0, "stopPredicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final I7(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/f4;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/f4;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            0x0
        }
        names = {
            "timespan",
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lq7/s;

    move-result-object v6

    const v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->L(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ILq7/s;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final J1()Lio/reactivex/rxjava3/core/g0;
    .locals 2
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->g()Lq7/s;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->L1(Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final J2(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 0
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNext"
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->a6(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final J3()Lio/reactivex/rxjava3/core/p0;
    .locals 2
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/x1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/x1;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final J4(Lq7/e;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/t2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/t2;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/e;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final J5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:trampoline"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->M5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final J6(Lq7/r;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/w3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/core/g0;
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
            "timespan",
            "unit",
            "scheduler",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "I)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lq7/s;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->L(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ILq7/s;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final K1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "keySelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;TK;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->g()Lq7/s;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->L1(Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final K2(Lq7/r;)Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
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

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/g0;->M2(Lq7/r;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final K3()Ljava/util/concurrent/CompletionStage;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/jdk8/w;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final K4(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "*>;>;)",
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

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/u2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final K5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->M5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final K6()Lio/reactivex/rxjava3/observers/n;
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
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-object v0
.end method

.method public final L(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ILq7/s;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 12
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lq7/s;
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
            "timespan",
            "unit",
            "scheduler",
            "count",
            "bufferSupplier",
            "restartTimerOnMaxSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "I",
            "Lq7/s<",
            "TU;>;Z)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TU;>;"
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

    move-object v7, p3

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 2
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    .line 3
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    .line 4
    invoke-static {v10, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lio/reactivex/rxjava3/internal/operators/observable/p;-><init>(Lio/reactivex/rxjava3/core/l0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lq7/s;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final L1(Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySelector",
            "collectionSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;TK;>;",
            "Lq7/s<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
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

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/k0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/k0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final L2(Lq7/r;Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/r;
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
            "onNext",
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
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

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->M2(Lq7/r;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final L3(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/internal/jdk8/w;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method

.method public final L4(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;)",
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

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->g(Lio/reactivex/rxjava3/core/g0;)Lq7/s;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final L5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->M5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final L6(Z)Lio/reactivex/rxjava3/observers/n;
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
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-object v0
.end method

.method public final L7(J)Lio/reactivex/rxjava3/core/g0;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->N7(JJI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "boundaryIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lq7/s;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->Q(Lio/reactivex/rxjava3/core/l0;Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final M0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->N0(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final M1()Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->O1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final M2(Lq7/r;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/a;
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
            "onNext",
            "onError",
            "onComplete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            ")",
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

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/ForEachWhileObserver;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/observers/ForEachWhileObserver;-><init>(Lq7/r;Lq7/g;Lq7/a;)V

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-object v0
.end method

.method public final M3(Lio/reactivex/rxjava3/core/k0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/k0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/k0<",
            "+TR;-TT;>;)",
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

    const-string v0, "lifter is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/y1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/y1;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/k0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final M4(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "selector",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;I)",
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

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p2, v0}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->i(Lio/reactivex/rxjava3/core/g0;IZ)Lq7/s;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final M5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 9
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
            0x0,
            0x0
        }
        names = {
            "time",
            "unit",
            "scheduler",
            "delayError",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "ZI)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p6, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    .line 4
    new-instance p6, Lio/reactivex/rxjava3/internal/operators/observable/k3;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lio/reactivex/rxjava3/internal/operators/observable/k3;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)V

    invoke-static {p6}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final M6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "windowDuration",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->N6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final M7(JJ)Lio/reactivex/rxjava3/core/g0;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "skip"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->N7(JJI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "boundaryIndicator",
            "initialCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;I)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    const-string v0, "initialCapacity"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/a;->f(I)Lq7/s;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/core/g0;->Q(Lio/reactivex/rxjava3/core/l0;Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N0(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "mapper",
            "bufferSize"
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
            "+TR;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/o;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/internal/fuseable/o;

    invoke-interface {p2}, Lio/reactivex/rxjava3/internal/fuseable/o;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/observable/u;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N1(Lq7/d;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # Lq7/d;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/d<",
            "-TT;-TT;>;)",
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

    const-string v0, "comparer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l0;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/l0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/d;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N3(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/z1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/z1;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N4(Lq7/o;IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/TimeUnit;
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
            "selector",
            "bufferSize",
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
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

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->O4(Lq7/o;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N5(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:trampoline"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->M5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "skipDuration",
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/x3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/x3;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final N7(JJI)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "skip",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "count"

    .line 1
    invoke-static {p1, p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->c(JLjava/lang/String;)J

    const-string v0, "skip"

    .line 2
    invoke-static {p3, p4, v0}, Lio/reactivex/rxjava3/internal/functions/b;->c(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p5, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/h4;-><init>(Lio/reactivex/rxjava3/core/l0;JJI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "openingIndicator",
            "closingIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTOpening;>;",
            "Lq7/o<",
            "-TTOpening;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTClosing;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/util/List<",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Lq7/s;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->P(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O0(Lq7/o;ILio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
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
            "mapper",
            "bufferSize",
            "scheduler"
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
            "+TR;>;>;I",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w;

    sget-object v5, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/w;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "keySelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;TK;>;)",
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

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l0;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/b;->a()Lq7/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/l0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/d;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O3(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/x;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/x;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O4(Lq7/o;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
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
            "selector",
            "bufferSize",
            "time",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 5
    invoke-static/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->h(Lio/reactivex/rxjava3/core/g0;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lq7/s;

    move-result-object p2

    .line 6
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O5(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/l3;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
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
            "intervalDuration",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/rxjava3/core/g0;->l5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final O7(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .param p5    # Ljava/util/concurrent/TimeUnit;
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
            "timespan",
            "timeskip",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v6

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->Q7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final P(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/s;
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
            "openingIndicator",
            "closingIndicator",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTOpening;>;",
            "Lq7/o<",
            "-TTOpening;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTClosing;>;>;",
            "Lq7/s<",
            "TU;>;)",
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

    const-string v0, "openingIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/n;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final P0(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->Q0(Lq7/o;I)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final P1(Lq7/g;)Lio/reactivex/rxjava3/core/g0;
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
            "onAfterNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
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

    const-string v0, "onAfterNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/m0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final P3()Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/g0<",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b2;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/b2;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final P4(Lq7/o;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
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
            "selector",
            "bufferSize",
            "time",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 5
    invoke-static/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->h(Lio/reactivex/rxjava3/core/g0;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lq7/s;

    move-result-object p2

    .line 6
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final P5(Lq7/r;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/m3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final P6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "intervalDuration",
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/g0;->m5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final P7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
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
            "timespan",
            "timeskip",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->Q7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lio/reactivex/rxjava3/core/l0;Lq7/s;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "boundaryIndicator",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;",
            "Lq7/s<",
            "TU;>;)",
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

    const-string v0, "boundaryIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/o;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Lq7/o;I)Lio/reactivex/rxjava3/core/a;
    .locals 2
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
            "mapper",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;I)",
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

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/q;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/rxjava3/internal/operators/mixed/q;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(Lq7/a;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
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

    const-string v0, "onAfterTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-direct {p0, v0, v1, v2, p1}, Lio/reactivex/rxjava3/core/g0;->W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Q4(Lq7/o;IZ)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
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
            "selector",
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;IZ)",
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

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    invoke-static {p0, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->i(Lio/reactivex/rxjava3/core/g0;IZ)Lq7/s;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Q5()Lio/reactivex/rxjava3/core/g0;
    .locals 2
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/g0;->t7()Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/p0;->q2()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->q()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/rxjava3/internal/functions/a;->p(Ljava/util/Comparator;)Lq7/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/g0;->N3(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/g0;->C2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final Q6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->S6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Q7(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 13
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/o0;
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
            "timespan",
            "timeskip",
            "unit",
            "scheduler",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "I)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "timespan"

    move-wide v3, p1

    .line 1
    invoke-static {p1, p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->c(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    .line 2
    invoke-static {v5, v6, v0}, Lio/reactivex/rxjava3/internal/functions/b;->c(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    move/from16 v11, p7

    .line 3
    invoke-static {v11, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 4
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 5
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l4;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lio/reactivex/rxjava3/internal/operators/observable/l4;-><init>(Lio/reactivex/rxjava3/core/g0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JIZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final R0(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/g0;->T0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final R1(Lq7/a;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/n0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final R4(Lq7/o;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 6
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "selector",
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
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

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->S4(Lq7/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final R5(Ljava/util/Comparator;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
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

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/g0;->t7()Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/p0;->q2()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->p(Ljava/util/Comparator;)Lq7/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/g0;->N3(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/g0;->C2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final R6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->S6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final R7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 8
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
            "timespan",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->W7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZ)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final S()Lio/reactivex/rxjava3/core/g0;
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

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->T(I)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final S0(Lq7/o;Z)Lio/reactivex/rxjava3/core/a;
    .locals 1
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
            "mapper",
            "tillTheEnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;Z)",
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->T0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final S1(Lq7/a;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onComplete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/g0;->W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final S4(Lq7/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "selector",
            "time",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->j(Lio/reactivex/rxjava3/core/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lq7/s;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final S5(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/g0;
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
    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/a;->t1()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-static {p1, p0}, Lio/reactivex/rxjava3/core/g0;->r0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final S6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
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
            "timeout",
            "unit",
            "scheduler",
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/y3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/y3;-><init>(Lio/reactivex/rxjava3/core/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final S7(JLjava/util/concurrent/TimeUnit;J)Lio/reactivex/rxjava3/core/g0;
    .locals 8
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
            "timespan",
            "unit",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->W7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZ)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final T(I)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

    const-string v0, "initialCapacity"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/q;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/q;-><init>(Lio/reactivex/rxjava3/core/g0;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p1    # Lq7/o;
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
            "mapper",
            "tillTheEnd",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;ZI)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/q;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/mixed/q;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final T1(Lq7/a;)Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/g0;->Y1(Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final T4(Lq7/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 6
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            0x0,
            0x0
        }
        names = {
            "selector",
            "time",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 4
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->j(Lio/reactivex/rxjava3/core/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lq7/s;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final T5(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/g0;
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
    invoke-static {p1}, Lio/reactivex/rxjava3/core/v;->I2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/v;->C2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-static {p1, p0}, Lio/reactivex/rxjava3/core/g0;->r0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final T6(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/rxjava3/core/g0;
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
            "timeout",
            "unit",
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->S6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final T7(JLjava/util/concurrent/TimeUnit;JZ)Lio/reactivex/rxjava3/core/g0;
    .locals 8
    .param p3    # Ljava/util/concurrent/TimeUnit;
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
            "timespan",
            "unit",
            "count",
            "restart"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->W7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZ)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final U(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->e(Ljava/lang/Class;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->N3(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final U0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/rxjava3/core/g0;->V0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final U1(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p1    # Lio/reactivex/rxjava3/core/n0;
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)",
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

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->f(Lio/reactivex/rxjava3/core/n0;)Lq7/g;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->e(Lio/reactivex/rxjava3/core/n0;)Lq7/g;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->d(Lio/reactivex/rxjava3/core/n0;)Lq7/a;

    move-result-object p1

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 5
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/g0;->W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final U4()Lio/reactivex/rxjava3/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observables/a<",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->Q8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/observables/a;

    move-result-object v0

    return-object v0
.end method

.method public final U5(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "+TT;>;)",
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

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final U6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/rxjava3/core/g0;->u1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final U7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            0x0
        }
        names = {
            "timespan",
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->W7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZ)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final V(Ljava/util/stream/Collector;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/util/stream/Collector;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "TT;TA;TR;>;)",
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

    const-string v0, "collector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/r;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/r;-><init>(Lio/reactivex/rxjava3/core/g0;Ljava/util/stream/Collector;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final V0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
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
            "mapper",
            "tillTheEnd",
            "bufferSize"
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
            "+TR;>;>;ZI)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/o;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/internal/fuseable/o;

    invoke-interface {p2}, Lio/reactivex/rxjava3/internal/fuseable/o;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u;

    if-eqz p2, :cond_2

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_2
    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p3, p2}, Lio/reactivex/rxjava3/internal/operators/observable/u;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final V1(Lq7/g;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNotification"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/core/d0<",
            "TT;>;>;)",
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

    const-string v0, "onNotification is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->t(Lq7/g;)Lq7/g;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->s(Lq7/g;)Lq7/g;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->r(Lq7/g;)Lq7/a;

    move-result-object p1

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 5
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/g0;->W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final V4(I)Lio/reactivex/rxjava3/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/observables/a<",
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

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->M8(Lio/reactivex/rxjava3/core/l0;IZ)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final V5(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/g0;
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
    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->w2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/p0;->q2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-static {p1, p0}, Lio/reactivex/rxjava3/core/g0;->r0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final V6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/g0;->v1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final V7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;J)Lio/reactivex/rxjava3/core/g0;
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
            "timespan",
            "unit",
            "scheduler",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "J)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/rxjava3/core/g0;->W7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZ)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final W(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialItemSupplier",
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TU;>;",
            "Lq7/b<",
            "-TU;-TT;>;)",
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

    const-string v0, "initialItemSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/s;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/s;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/s;Lq7/b;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final W0(Lq7/o;ZILio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
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
            "mapper",
            "tillTheEnd",
            "bufferSize",
            "scheduler"
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
            "+TR;>;>;ZI",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    move-object v5, p2

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/w;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final W4(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/observables/a;
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
            "bufferSize",
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/observables/a<",
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

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->X4(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final varargs W5([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/core/g0;->O2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final W6()Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->Z6(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final W7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZ)Lio/reactivex/rxjava3/core/g0;
    .locals 9
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
            0x0,
            0x0
        }
        names = {
            "timespan",
            "unit",
            "scheduler",
            "count",
            "restart"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "JZ)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/rxjava3/core/g0;->X7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final X(Ljava/lang/Object;Lq7/b;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialItem",
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lq7/b<",
            "-TU;-TT;>;)",
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

    const-string v0, "initialItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->o(Ljava/lang/Object;)Lq7/s;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/core/g0;->W(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final X0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/rxjava3/core/g0;->Y0(Lq7/o;II)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final X1(Lq7/g;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-direct {p0, v0, p1, v1, v1}, Lio/reactivex/rxjava3/core/g0;->W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final X4(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/observables/a;
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
            "bufferSize",
            "time",
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
            "Lio/reactivex/rxjava3/observables/a<",
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

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    .line 4
    invoke-static/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->N8(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final X5(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/g0;->x3(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final X6(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/g0;->Z6(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final X7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JZI)Lio/reactivex/rxjava3/core/g0;
    .locals 13
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "timespan",
            "unit",
            "scheduler",
            "count",
            "restart",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "JZI)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "bufferSize"

    move/from16 v11, p8

    .line 1
    invoke-static {v11, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 2
    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    .line 3
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    .line 4
    invoke-static {v9, v10, v0}, Lio/reactivex/rxjava3/internal/functions/b;->c(JLjava/lang/String;)J

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/l4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lio/reactivex/rxjava3/internal/operators/observable/l4;-><init>(Lio/reactivex/rxjava3/core/g0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JIZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final Y0(Lq7/o;II)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
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
            "mapper",
            "maxConcurrency",
            "bufferSize"
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
            "+TR;>;>;II)",
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

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v;

    sget-object v4, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/v;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;II)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/p0;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/g;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Y4(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/observables/a;
    .locals 7
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
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "time",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/observables/a<",
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

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    move v6, p6

    .line 4
    invoke-static/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->N8(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final Y5(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
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

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/g0;->U2(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->v0([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Y6(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->Z6(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Y7(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "boundaryIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->Z7(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "mapper",
            "tillTheEnd"
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
            "+TR;>;>;Z)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/reactivex/rxjava3/core/g0;->a1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Z1(Lq7/g;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-direct {p0, p1, v0, v1, v1}, Lio/reactivex/rxjava3/core/g0;->W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Z4(IZ)Lio/reactivex/rxjava3/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lio/reactivex/rxjava3/observables/a<",
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

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->M8(Lio/reactivex/rxjava3/core/l0;IZ)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final Z5()Lio/reactivex/rxjava3/disposables/f;
    .locals 3
    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->f:Lq7/g;

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/g0;->c6(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    return-object v0
.end method

.method public final Z6(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/z3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/z3;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Z7(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "boundaryIndicator",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TB;>;I)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "boundaryIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/i4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/i4;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/reactivex/rxjava3/core/n0;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/n0;
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
            "Lio/reactivex/rxjava3/core/n0<",
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
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/a;->f0(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->d6(Lio/reactivex/rxjava3/core/n0;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v0

    :catch_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public final a1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
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
            "mapper",
            "tillTheEnd",
            "maxConcurrency",
            "bufferSize"
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
            "+TR;>;>;ZII)",
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

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    move-object v4, p2

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/v;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;II)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final a2(Lq7/g;)Lio/reactivex/rxjava3/core/g0;
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

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->Y1(Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final a5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/observables/a;
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
            "Lio/reactivex/rxjava3/observables/a<",
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->b5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final a6(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNext"
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

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/g0;->c6(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final a7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->i7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final a8(Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "openingIndicator",
            "closingIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;",
            "Lq7/o<",
            "-TU;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->b8(Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lq7/r;)Lio/reactivex/rxjava3/core/p0;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/g;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final b1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/b1;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final b2(Lq7/a;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
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

    const-string v0, "onTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->a(Lq7/a;)Lq7/g;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 4
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/g0;->W1(Lq7/g;Lq7/g;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final b5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/observables/a;
    .locals 7
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
            "Lio/reactivex/rxjava3/observables/a<",
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

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->O8(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final b6(Lq7/g;Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
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
            "onNext",
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

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->c6(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final b7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/core/g0;->i7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final b8(Lio/reactivex/rxjava3/core/l0;Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0
        }
        names = {
            "openingIndicator",
            "closingIndicator",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;",
            "Lq7/o<",
            "-TU;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;I)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "openingIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/j4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/j4;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/o;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final c1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->d1(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final c2(J)Lio/reactivex/rxjava3/core/v;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/r0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/r0;-><init>(Lio/reactivex/rxjava3/core/l0;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/observables/a;
    .locals 1
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
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/observables/a<",
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
    invoke-static/range {p0 .. p5}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->O8(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/observables/a;

    move-result-object p1

    return-object p1
.end method

.method public final c6(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/a;
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
            "onNext",
            "onError",
            "onComplete"
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
            ">;",
            "Lq7/a;",
            ")",
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

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lq7/g;Lq7/g;Lq7/a;Lq7/g;)V

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-object v0
.end method

.method public final c7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->i7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final c8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/j;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/l0;
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
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT3;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT4;>;",
            "Lq7/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 5
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/functions/a;->A(Lq7/j;)Lq7/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 7
    invoke-virtual {p0, v0, p5}, Lio/reactivex/rxjava3/core/g0;->h8([Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final d1(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "mapper",
            "bufferSize"
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
            "+TR;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/r;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/rxjava3/internal/operators/mixed/r;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final d2(JLjava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 3
    .param p3    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)",
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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/s0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/s0;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final d5()Lio/reactivex/rxjava3/core/g0;
    .locals 3
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/rxjava3/core/g0;->f5(JLq7/r;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d6(Lio/reactivex/rxjava3/core/n0;)V
    .param p1    # Lio/reactivex/rxjava3/core/n0;
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final d7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 6
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->i7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final d8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/i;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
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
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT2;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT3;>;",
            "Lq7/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Lio/reactivex/rxjava3/internal/functions/a;->z(Lq7/i;)Lq7/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 6
    invoke-virtual {p0, v0, p4}, Lio/reactivex/rxjava3/core/g0;->h8([Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "+TT;>;)",
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

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->d([Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final e1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/g0;->g1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final e2(J)Lio/reactivex/rxjava3/core/p0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/s0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/observable/s0;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e5(J)Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->f5(JLq7/r;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final e6(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/n3;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final e7(Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "firstTimeoutIndicator",
            "itemTimeoutIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;)",
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

    const-string v0, "firstTimeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->j7(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final e8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/h;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
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
            0x0
        }
        names = {
            "source1",
            "source2",
            "combiner"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT1;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT2;>;",
            "Lq7/h<",
            "-TT;-TT1;-TT2;TR;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lio/reactivex/rxjava3/internal/functions/a;->y(Lq7/h;)Lq7/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 5
    invoke-virtual {p0, v0, p3}, Lio/reactivex/rxjava3/core/g0;->h8([Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lq7/r;)Lio/reactivex/rxjava3/core/p0;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/j;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final f1(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "mapper",
            "tillTheEnd"
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
            "+TR;>;>;Z)",
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->g1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final f5(JLq7/r;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/x2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/x2;-><init>(Lio/reactivex/rxjava3/core/g0;JLq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;
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
            "Lio/reactivex/rxjava3/core/n0<",
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-object p1
.end method

.method public final f7(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/l0;
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
            "firstTimeoutIndicator",
            "itemTimeoutIndicator",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    const-string v0, "firstTimeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/rxjava3/core/g0;->j7(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final f8(Lio/reactivex/rxjava3/core/l0;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m4;

    invoke-direct {v0, p0, p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/m4;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/c;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/e;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final g1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
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
            "mapper",
            "tillTheEnd",
            "bufferSize"
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
            "+TR;>;>;ZI)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/r;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/mixed/r;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final g5(Lq7/d;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/w2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/w2;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/d;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final g6(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "+TT;>;)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/o3;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final g7(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "itemTimeoutIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;)",
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

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->j7(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final g8(Ljava/lang/Iterable;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
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
            "others",
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "*>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
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

    const-string v0, "others is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/n4;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
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
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/e;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/e;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 4
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final h1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->i1(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final h3(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lio/reactivex/rxjava3/core/g0;->k3(Lq7/o;Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final h5(Lq7/r;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/g0;->f5(JLq7/r;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final h6(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->i6(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final h7(Lq7/o;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemTimeoutIndicator",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TV;>;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lio/reactivex/rxjava3/core/g0;->j7(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final h8([Lio/reactivex/rxjava3/core/l0;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # [Lio/reactivex/rxjava3/core/l0;
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
            "others",
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/l0<",
            "*>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
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

    const-string v0, "others is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/n4;-><init>(Lio/reactivex/rxjava3/core/l0;[Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lq7/g;)V
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
            "onNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->j(Lq7/g;I)V

    return-void
.end method

.method public final i1(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "mapper",
            "bufferSize"
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
            "+TR;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/s;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lio/reactivex/rxjava3/internal/operators/mixed/s;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final i2(Lq7/r;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final i3(Lq7/o;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "keySelector",
            "valueSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/reactivex/rxjava3/core/g0;->k3(Lq7/o;Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final i5(Lq7/e;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->v(Lq7/e;)Lq7/r;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/g0;->f5(JLq7/r;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final i6(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "mapper",
            "bufferSize"
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
            "+TR;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/o;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/internal/fuseable/o;

    invoke-interface {p2}, Lio/reactivex/rxjava3/internal/fuseable/o;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/observable/p3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lq7/g;I)V
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onNext",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;I)V"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/g0;->l(I)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    check-cast p2, Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p2}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 7
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/g;->i(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final j1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/g0;->l1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final j2(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
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
            "defaultItem"
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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/g0;->d2(JLjava/lang/Object;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final j3(Lq7/o;Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
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
            0x0,
            0x0
        }
        names = {
            "keySelector",
            "valueSelector",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;Z)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->k3(Lq7/o;Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final j5(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "*>;>;)",
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

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/y2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/y2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/mixed/t;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->l(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final k1(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "mapper",
            "tillTheEnd"
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
            "+TR;>;>;Z)",
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->l1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final k2()Lio/reactivex/rxjava3/core/v;
    .locals 2
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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->c2(J)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final k3(Lq7/o;Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySelector",
            "valueSelector",
            "delayError",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;ZI)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final k4(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/c2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/c2;-><init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final k5(Lio/reactivex/rxjava3/core/n0;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/n0;
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lio/reactivex/rxjava3/observers/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/observers/l;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/observers/l;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :goto_0
    return-void
.end method

.method public final k6(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/t;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/mixed/t;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final l(I)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
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

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/b;-><init>(Lio/reactivex/rxjava3/core/l0;I)V

    return-object v0
.end method

.method public final l1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
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
            "mapper",
            "tillTheEnd",
            "bufferSize"
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
            "+TR;>;>;ZI)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/s;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/mixed/s;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final l2()Lio/reactivex/rxjava3/core/p0;
    .locals 2
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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->e2(J)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final l3(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "keySelector",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;Z)",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/reactivex/rxjava3/core/g0;->k3(Lq7/o;Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final l4(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/g0;
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
            "+TT;>;)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/d2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/d2;-><init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final l5(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "period",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->m5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final l6(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->m6(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final m()Ljava/lang/Object;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final m1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->I2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

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

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/jdk8/s;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final m3(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lq7/c;
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
            "other",
            "leftEnd",
            "rightEnd",
            "resultSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTRight;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lq7/o<",
            "-TTRight;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TTRightEnd;>;>;",
            "Lq7/c<",
            "-TT;-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TTRight;>;+TR;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/n1;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final m4(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "+TT;>;)",
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
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/g0;->S3(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final m5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            0x0
        }
        names = {
            "period",
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/z2;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/z2;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final m6(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "mapper",
            "bufferSize"
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
            "+TR;>;>;I)",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/o;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/internal/fuseable/o;

    invoke-interface {p2}, Lio/reactivex/rxjava3/internal/fuseable/o;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/observable/p3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final m7()Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/g0;->p7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
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
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/f;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 4
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final n1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/x;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/x;-><init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final n2(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/internal/jdk8/s;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method

.method public final n3()Lio/reactivex/rxjava3/core/g0;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/o1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/o1;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final n4(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/g0;
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
            "+TT;>;)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/e2;-><init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final n5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
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
            "period",
            "unit",
            "scheduler",
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/z2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/z2;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final n6(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/mixed/u;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final n7(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/g0;->p7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final o()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/c;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/c;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    return-object v0
.end method

.method public final o0(Lio/reactivex/rxjava3/core/m0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/m0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m0<",
            "-TT;+TR;>;)",
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

    const-string v0, "composer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/m0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/m0;->a(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/l0;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final o1(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/g0;
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
            "+TT;>;)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/y;-><init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final o2(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->x2(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final o3()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/q1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/q1;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final o5(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/rxjava3/core/g0;
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
            "period",
            "unit",
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->n5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final o6(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/mixed/u;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final o7(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/g0;->p7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/Object;)Ljava/lang/Iterable;
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
            "initialItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
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

    const-string v0, "initialItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/d;-><init>(Lio/reactivex/rxjava3/core/l0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final p1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "+TT;>;)",
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
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/g0;->r0(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final p2(Lq7/o;I)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "mapper",
            "maxConcurrency"
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
            "+TR;>;>;I)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final p4(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/rxjava3/core/g0;->r4(Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final p5(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;)",
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

    const-string v0, "sampler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/a3;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final p6(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/mixed/v;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final p7(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "Lio/reactivex/rxjava3/core/g0<",
            "Lio/reactivex/rxjava3/schedulers/d<",
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

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/functions/a;->w(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->N3(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/e;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    return-object v0
.end method

.method public final q1(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/g0;
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
            "+TT;>;)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/z;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/z;-><init>(Lio/reactivex/rxjava3/core/g0;Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final q2(Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 6
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v4

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->u2(Lq7/o;Lq7/c;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final q4(Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scheduler",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->r4(Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final q5(Lio/reactivex/rxjava3/core/l0;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampler",
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;Z)",
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

    const-string v0, "sampler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/a3;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final q6(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/mixed/v;-><init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final q7(Lio/reactivex/rxjava3/core/h0;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/h0;
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
            "Lio/reactivex/rxjava3/core/h0<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/h0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/h0;->a(Lio/reactivex/rxjava3/core/g0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r()Ljava/lang/Object;
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
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/g0;->B5()Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/v;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final r1(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
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

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->i(Ljava/lang/Object;)Lq7/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->f(Lq7/r;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final r2(Lq7/o;Lq7/c;I)Lio/reactivex/rxjava3/core/g0;
    .locals 6
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
            0x0,
            0x0
        }
        names = {
            "mapper",
            "combiner",
            "maxConcurrency"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;I)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->u2(Lq7/o;Lq7/c;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final r4(Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
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
            "scheduler",
            "delayError",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            "ZI)",
            "Lio/reactivex/rxjava3/core/g0<",
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

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/g2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/g2;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final r5(Ljava/lang/Object;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Ljava/lang/Object;
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
            "initialValue",
            "accumulator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lq7/c<",
            "TR;-TT;TR;>;)",
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

    const-string v0, "initialValue is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->o(Ljava/lang/Object;)Lq7/s;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/core/g0;->t5(Lq7/s;Lq7/c;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final r7(Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/BackpressureStrategy;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/BackpressureStrategy;",
            ")",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "strategy is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/n1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/n1;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 3
    sget-object v1, Lio/reactivex/rxjava3/core/g0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/m;->F4()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/p2;

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/p2;-><init>(Lio/reactivex/rxjava3/core/m;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/m;->P4()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/m;->N4()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->A5(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/p0;->h()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s1()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/b0;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final s2(Lq7/o;Lq7/c;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 6
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
            0x0,
            0x0
        }
        names = {
            "mapper",
            "combiner",
            "delayErrors"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;Z)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v4

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->u2(Lq7/o;Lq7/c;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final s4(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->l(Ljava/lang/Class;)Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->i2(Lq7/r;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/g0;->U(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final s5(Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accumulator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/c<",
            "TT;TT;TT;>;)",
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

    const-string v0, "accumulator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/b3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/b3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final s7()Ljava/util/concurrent/Future;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/j;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/j;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->f6(Lio/reactivex/rxjava3/core/n0;)Lio/reactivex/rxjava3/core/n0;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final t()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->u(I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final t2(Lq7/o;Lq7/c;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 6
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapper",
            "combiner",
            "delayErrors",
            "maxConcurrency"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;ZI)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->u2(Lq7/o;Lq7/c;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final t4()Lio/reactivex/rxjava3/core/g0;
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->u4(Lq7/r;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final t5(Lq7/s;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/s;
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
            "seedSupplier",
            "accumulator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TR;>;",
            "Lq7/c<",
            "TR;-TT;TR;>;)",
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

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/c3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/c3;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/s;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final t7()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/List<",
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

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->u7(I)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final u(I)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
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
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->l(I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    check-cast p1, Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/reactivex/rxjava3/core/j;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/core/j;-><init>(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    return-object p1
.end method

.method public final u1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->v1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final u2(Lq7/o;Lq7/c;ZII)Lio/reactivex/rxjava3/core/g0;
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapper",
            "combiner",
            "delayErrors",
            "maxConcurrency",
            "bufferSize"
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;ZII)",
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

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/r1;->b(Lq7/o;Lq7/c;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lio/reactivex/rxjava3/core/g0;->z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final u4(Lq7/r;)Lio/reactivex/rxjava3/core/g0;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/h2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/h2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final u7(I)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/List<",
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

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e4;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/e4;-><init>(Lio/reactivex/rxjava3/core/l0;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final v()V
    .locals 0
    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/operators/observable/l;->a(Lio/reactivex/rxjava3/core/l0;)V

    return-void
.end method

.method public final v1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
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
            "Lio/reactivex/rxjava3/core/g0<",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/e0;-><init>(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final v2(Lq7/o;Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/s;
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
            "onNextMapper",
            "onErrorMapper",
            "onCompleteSupplier"
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
            "+TR;>;>;",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;",
            "Lq7/s<",
            "+",
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

    const-string v0, "onNextMapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/a2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/g0;->Q3(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final v3()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->b()Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->b(Lq7/r;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final v4(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
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

    const-string v0, "fallbackSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/i2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/i2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final v6(J)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/q3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/q3;-><init>(Lio/reactivex/rxjava3/core/l0;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v7(Lq7/s;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lq7/s<",
            "TU;>;)",
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

    const-string v0, "collectionSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e4;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/e4;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lio/reactivex/rxjava3/core/n0;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/n0;
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
            "Lio/reactivex/rxjava3/core/n0<",
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
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/l;->b(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method

.method public final w1(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "debounceIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TU;>;>;)",
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

    const-string v0, "debounceIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/d0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/d0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final w2(Lq7/o;Lq7/o;Lq7/s;I)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/s;
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
            "onNextMapper",
            "onErrorMapper",
            "onCompleteSupplier",
            "maxConcurrency"
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
            "+TR;>;>;",
            "Lq7/o<",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;I)",
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

    const-string v0, "onNextMapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/a2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/a2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;Lq7/s;)V

    invoke-static {v0, p4}, Lio/reactivex/rxjava3/core/g0;->R3(Lio/reactivex/rxjava3/core/l0;I)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final w3(Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lq7/c;
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
            "other",
            "leftEnd",
            "rightEnd",
            "resultSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TTRight;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lq7/o<",
            "-TTRight;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TTRightEnd;>;>;",
            "Lq7/c<",
            "-TT;-TTRight;+TR;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/u1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/u1;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/o;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final w4(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
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

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->n(Ljava/lang/Object;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->v4(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final w6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 0
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

    invoke-static {p1, p2, p3}, Lio/reactivex/rxjava3/core/g0;->k7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->H6(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final w7(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
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
            "keySelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/HashMapSupplier;->asSupplier()Lq7/s;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->F(Lq7/o;)Lq7/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/g0;->W(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final w8(Lio/reactivex/rxjava3/core/l0;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/core/g0;->q8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/c;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lq7/g;)V
    .locals 2
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNext"
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

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->f:Lq7/g;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/l;->c(Lio/reactivex/rxjava3/core/l0;Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final x1(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
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
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
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

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/g0;->x3(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->g6(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final x2(Lq7/o;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 1
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
            "mapper",
            "delayErrors"
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
            "+TR;>;>;Z)",
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

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/g0;->y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final x4(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "itemSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
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

    const-string v0, "itemSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/j2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/j2;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final x6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->H6(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final x7(Lq7/o;Lq7/o;)Lio/reactivex/rxjava3/core/p0;
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
            "keySelector",
            "valueSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/HashMapSupplier;->asSupplier()Lq7/s;

    move-result-object v0

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/functions/a;->G(Lq7/o;Lq7/o;)Lq7/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/g0;->W(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final x8(Lio/reactivex/rxjava3/core/l0;Lq7/c;Z)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            "other",
            "zipper",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;Z)",
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

    invoke-static {p0, p1, p2, p3}, Lio/reactivex/rxjava3/core/g0;->r8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/c;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lq7/g;Lq7/g;)V
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
            "onNext",
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

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/internal/operators/observable/l;->c(Lio/reactivex/rxjava3/core/l0;Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final y2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lq7/o;
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
            "mapper",
            "delayErrors",
            "maxConcurrency"
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
            "+TR;>;>;ZI)",
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

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/g0;->z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final y4(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/g0;
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
            "(TT;)",
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

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->n(Ljava/lang/Object;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/g0;->x4(Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final y5()Lio/reactivex/rxjava3/core/g0;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/f3;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/f3;-><init>(Lio/reactivex/rxjava3/core/g0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final y6(I)Lio/reactivex/rxjava3/core/g0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/p1;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/p1;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/s3;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/s3;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/r3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/r3;-><init>(Lio/reactivex/rxjava3/core/l0;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y7(Lq7/o;Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/s;
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
            "keySelector",
            "valueSelector",
            "mapSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;",
            "Lq7/s<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/functions/a;->G(Lq7/o;Lq7/o;)Lq7/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/rxjava3/core/g0;->W(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final y8(Lio/reactivex/rxjava3/core/l0;Lq7/c;ZI)Lio/reactivex/rxjava3/core/g0;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/l0;
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
            0x0,
            0x0
        }
        names = {
            "other",
            "zipper",
            "delayError",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;ZI)",
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

    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/g0;->s8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Lq7/c;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lq7/g;Lq7/g;Lq7/a;)V
    .locals 0
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/a;
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
            "onNext",
            "onError",
            "onComplete"
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
            ">;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/observable/l;->c(Lio/reactivex/rxjava3/core/l0;Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final z1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->B1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final z2(Lq7/o;ZII)Lio/reactivex/rxjava3/core/g0;
    .locals 7
    .param p1    # Lq7/o;
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
            "mapper",
            "delayErrors",
            "maxConcurrency",
            "bufferSize"
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
            "+TR;>;>;ZII)",
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

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/o;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Lio/reactivex/rxjava3/internal/fuseable/o;

    invoke-interface {p2}, Lio/reactivex/rxjava3/internal/fuseable/o;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->f2()Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lq7/o;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/observable/w0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/w0;-><init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ZII)V

    invoke-static {v6}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final z4()Lio/reactivex/rxjava3/core/g0;
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/j0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/j0;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final z5()Lio/reactivex/rxjava3/core/g0;
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/g0;->B4()Lio/reactivex/rxjava3/observables/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/observables/a;->F8()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final z6(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;
    .locals 9
    .param p5    # Ljava/util/concurrent/TimeUnit;
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
            "count",
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:trampoline"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v6

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/rxjava3/core/g0;->B6(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;ZI)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final z7(Lq7/o;)Lio/reactivex/rxjava3/core/p0;
    .locals 3
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
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
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/HashMapSupplier;->asSupplier()Lq7/s;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asFunction()Lq7/o;

    move-result-object v2

    .line 4
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/rxjava3/core/g0;->C7(Lq7/o;Lq7/o;Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final z8(Ljava/lang/Iterable;Lq7/c;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
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
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/p4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/p4;-><init>(Lio/reactivex/rxjava3/core/g0;Ljava/lang/Iterable;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method
