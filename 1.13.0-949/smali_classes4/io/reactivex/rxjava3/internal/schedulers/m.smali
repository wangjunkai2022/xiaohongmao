.class public Lio/reactivex/rxjava3/internal/schedulers/m;
.super Lio/reactivex/rxjava3/core/o0;
.source "SchedulerWhen.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/m$g;,
        Lio/reactivex/rxjava3/internal/schedulers/m$e;,
        Lio/reactivex/rxjava3/internal/schedulers/m$a;,
        Lio/reactivex/rxjava3/internal/schedulers/m$d;,
        Lio/reactivex/rxjava3/internal/schedulers/m$b;,
        Lio/reactivex/rxjava3/internal/schedulers/m$c;,
        Lio/reactivex/rxjava3/internal/schedulers/m$f;
    }
.end annotation


# static fields
.field static final e:Lio/reactivex/rxjava3/disposables/f;

.field static final f:Lio/reactivex/rxjava3/disposables/f;


# instance fields
.field private final b:Lio/reactivex/rxjava3/core/o0;

.field private final c:Lio/reactivex/rxjava3/processors/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/c<",
            "Lio/reactivex/rxjava3/core/m<",
            "Lio/reactivex/rxjava3/core/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/m$g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/m$g;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/m;->e:Lio/reactivex/rxjava3/disposables/f;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/disposables/e;->a()Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/m;->f:Lio/reactivex/rxjava3/disposables/f;

    return-void
.end method

.method public constructor <init>(Lq7/o;Lio/reactivex/rxjava3/core/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "combine",
            "actualScheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "Lio/reactivex/rxjava3/core/m<",
            "Lio/reactivex/rxjava3/core/m<",
            "Lio/reactivex/rxjava3/core/a;",
            ">;>;",
            "Lio/reactivex/rxjava3/core/a;",
            ">;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/o0;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/m;->b:Lio/reactivex/rxjava3/core/o0;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/processors/h;->m9()Lio/reactivex/rxjava3/processors/h;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/rxjava3/processors/c;->k9()Lio/reactivex/rxjava3/processors/c;

    move-result-object p2

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/m;->c:Lio/reactivex/rxjava3/processors/c;

    .line 4
    :try_start_0
    invoke-interface {p1, p2}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/core/a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/a;->V0()Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/m;->d:Lio/reactivex/rxjava3/disposables/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/g;->i(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public d()Lio/reactivex/rxjava3/core/o0$c;
    .locals 4
    .annotation build Lp7/e;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/m;->b:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/processors/h;->m9()Lio/reactivex/rxjava3/processors/h;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/processors/c;->k9()Lio/reactivex/rxjava3/processors/c;

    move-result-object v1

    .line 3
    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/m$a;

    invoke-direct {v2, v0}, Lio/reactivex/rxjava3/internal/schedulers/m$a;-><init>(Lio/reactivex/rxjava3/core/o0$c;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/m;->Z3(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object v2

    .line 4
    new-instance v3, Lio/reactivex/rxjava3/internal/schedulers/m$e;

    invoke-direct {v3, v1, v0}, Lio/reactivex/rxjava3/internal/schedulers/m$e;-><init>(Lio/reactivex/rxjava3/processors/c;Lio/reactivex/rxjava3/core/o0$c;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/m;->c:Lio/reactivex/rxjava3/processors/c;

    invoke-interface {v0, v2}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/m;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/m;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->isDisposed()Z

    move-result v0

    return v0
.end method
