.class public final Lio/reactivex/rxjava3/internal/jdk8/n;
.super Lio/reactivex/rxjava3/core/g0;
.source "MaybeFlattenStreamAsObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/jdk8/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/g0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/v;Lq7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/n;->a:Lio/reactivex/rxjava3/core/v;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/n;->b:Lq7/o;

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
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
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/n;->a:Lio/reactivex/rxjava3/core/v;

    new-instance v1, Lio/reactivex/rxjava3/internal/jdk8/n$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/jdk8/n;->b:Lq7/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/jdk8/n$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method
