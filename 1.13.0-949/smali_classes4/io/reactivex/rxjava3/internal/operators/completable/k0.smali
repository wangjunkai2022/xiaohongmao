.class public final Lio/reactivex/rxjava3/internal/operators/completable/k0;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletablePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/k0$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g;

.field final b:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lq7/a;

.field final e:Lq7/a;

.field final f:Lq7/a;

.field final g:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)V
    .locals 0
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
            "source",
            "onSubscribe",
            "onError",
            "onComplete",
            "onTerminate",
            "onAfterTerminate",
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g;",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            "Lq7/a;",
            "Lq7/a;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->a:Lio/reactivex/rxjava3/core/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->b:Lq7/g;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->c:Lq7/g;

    .line 5
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->d:Lq7/a;

    .line 6
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->e:Lq7/a;

    .line 7
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->f:Lq7/a;

    .line 8
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->g:Lq7/a;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/k0;->a:Lio/reactivex/rxjava3/core/g;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/k0$a;-><init>(Lio/reactivex/rxjava3/internal/operators/completable/k0;Lio/reactivex/rxjava3/core/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
