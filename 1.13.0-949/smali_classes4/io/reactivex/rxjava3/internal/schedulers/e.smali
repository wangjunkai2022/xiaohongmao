.class public final Lio/reactivex/rxjava3/internal/schedulers/e;
.super Lio/reactivex/rxjava3/core/o0;
.source "ImmediateThinScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/e$a;
    }
.end annotation


# static fields
.field public static final b:Lio/reactivex/rxjava3/core/o0;

.field static final c:Lio/reactivex/rxjava3/core/o0$c;

.field static final d:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/e;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/e;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/e;->b:Lio/reactivex/rxjava3/core/o0;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/e$a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/e$a;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/e;->c:Lio/reactivex/rxjava3/core/o0$c;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/disposables/e;->b()Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/e;->d:Lio/reactivex/rxjava3/disposables/f;

    .line 4
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lio/reactivex/rxjava3/core/o0$c;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/e;->c:Lio/reactivex/rxjava3/core/o0$c;

    return-object v0
.end method

.method public f(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
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

    .annotation build Lp7/e;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Lio/reactivex/rxjava3/internal/schedulers/e;->d:Lio/reactivex/rxjava3/disposables/f;

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
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
            "run",
            "delay",
            "unit"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support delayed execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
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
            "run",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support periodic execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
