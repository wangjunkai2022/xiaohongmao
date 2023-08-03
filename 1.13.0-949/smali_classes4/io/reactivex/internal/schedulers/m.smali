.class public Lio/reactivex/internal/schedulers/m;
.super Lio/reactivex/h0;
.source "SchedulerWhen.java"

# interfaces
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/m$g;,
        Lio/reactivex/internal/schedulers/m$e;,
        Lio/reactivex/internal/schedulers/m$a;,
        Lio/reactivex/internal/schedulers/m$d;,
        Lio/reactivex/internal/schedulers/m$b;,
        Lio/reactivex/internal/schedulers/m$c;,
        Lio/reactivex/internal/schedulers/m$f;
    }
.end annotation


# static fields
.field static final f:Lio/reactivex/disposables/c;

.field static final g:Lio/reactivex/disposables/c;


# instance fields
.field private final c:Lio/reactivex/h0;

.field private final d:Lio/reactivex/processors/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/c<",
            "Lio/reactivex/j<",
            "Lio/reactivex/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/disposables/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/m$g;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/m$g;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/m;->f:Lio/reactivex/disposables/c;

    .line 2
    invoke-static {}, Lio/reactivex/disposables/d;->a()Lio/reactivex/disposables/c;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/m;->g:Lio/reactivex/disposables/c;

    return-void
.end method

.method public constructor <init>(Ln7/o;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/o<",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "Lio/reactivex/a;",
            ">;>;",
            "Lio/reactivex/a;",
            ">;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/h0;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/m;->c:Lio/reactivex/h0;

    .line 3
    invoke-static {}, Lio/reactivex/processors/h;->S8()Lio/reactivex/processors/h;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/processors/c;->Q8()Lio/reactivex/processors/c;

    move-result-object p2

    iput-object p2, p0, Lio/reactivex/internal/schedulers/m;->d:Lio/reactivex/processors/c;

    .line 4
    :try_start_0
    invoke-interface {p1, p2}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/a;

    invoke-virtual {p1}, Lio/reactivex/a;->F0()Lio/reactivex/disposables/c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/m;->e:Lio/reactivex/disposables/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public d()Lio/reactivex/h0$c;
    .locals 4
    .annotation build Lm7/e;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/m;->c:Lio/reactivex/h0;

    invoke-virtual {v0}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/processors/h;->S8()Lio/reactivex/processors/h;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/processors/c;->Q8()Lio/reactivex/processors/c;

    move-result-object v1

    .line 3
    new-instance v2, Lio/reactivex/internal/schedulers/m$a;

    invoke-direct {v2, v0}, Lio/reactivex/internal/schedulers/m$a;-><init>(Lio/reactivex/h0$c;)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->K3(Ln7/o;)Lio/reactivex/j;

    move-result-object v2

    .line 4
    new-instance v3, Lio/reactivex/internal/schedulers/m$e;

    invoke-direct {v3, v1, v0}, Lio/reactivex/internal/schedulers/m$e;-><init>(Lio/reactivex/processors/c;Lio/reactivex/h0$c;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/schedulers/m;->d:Lio/reactivex/processors/c;

    invoke-interface {v0, v2}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/m;->e:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/m;->e:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    return v0
.end method
