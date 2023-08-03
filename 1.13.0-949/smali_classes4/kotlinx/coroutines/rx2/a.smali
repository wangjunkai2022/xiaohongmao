.class final Lkotlinx/coroutines/rx2/a;
.super Lio/reactivex/h0;
.source "RxScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/rx2/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008 \u0010!J+\u0010\n\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/a;",
        "Lio/reactivex/h0;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "",
        "delay",
        "Ljava/util/concurrent/TimeUnit;",
        "unit",
        "Lio/reactivex/disposables/c;",
        "g",
        "(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;",
        "Lio/reactivex/h0$c;",
        "d",
        "()Lio/reactivex/h0$c;",
        "",
        "i",
        "()V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/n0;",
        "c",
        "Lkotlinx/coroutines/n0;",
        "dispatcher",
        "Lkotlinx/coroutines/c0;",
        "Lkotlinx/coroutines/c0;",
        "schedulerJob",
        "Lkotlinx/coroutines/s0;",
        "e",
        "Lkotlinx/coroutines/s0;",
        "scope",
        "<init>",
        "(Lkotlinx/coroutines/n0;)V",
        "a",
        "kotlinx-coroutines-rx2"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field public final c:Lkotlinx/coroutines/n0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlinx/coroutines/c0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlinx/coroutines/s0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile synthetic workerCounter:J
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/rx2/a;

    const-string v1, "workerCounter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/rx2/a;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/n0;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/reactivex/h0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/a;->c:Lkotlinx/coroutines/n0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/m3;->c(Lkotlinx/coroutines/j2;ILjava/lang/Object;)Lkotlinx/coroutines/c0;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/rx2/a;->d:Lkotlinx/coroutines/c0;

    .line 3
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/rx2/a;->e:Lkotlinx/coroutines/s0;

    const-wide/16 v0, 0x1

    .line 4
    iput-wide v0, p0, Lkotlinx/coroutines/rx2/a;->workerCounter:J

    return-void
.end method

.method public static final synthetic l(Lkotlinx/coroutines/rx2/a;)Lkotlinx/coroutines/s0;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/rx2/a;->e:Lkotlinx/coroutines/s0;

    return-object p0
.end method


# virtual methods
.method public d()Lio/reactivex/h0$c;
    .locals 5
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/rx2/a$a;

    sget-object v1, Lkotlinx/coroutines/rx2/a;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    iget-object v3, p0, Lkotlinx/coroutines/rx2/a;->c:Lkotlinx/coroutines/n0;

    iget-object v4, p0, Lkotlinx/coroutines/rx2/a;->d:Lkotlinx/coroutines/c0;

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/rx2/a$a;-><init>(JLkotlinx/coroutines/n0;Lkotlinx/coroutines/j2;)V

    return-object v0
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/rx2/a;->e:Lkotlinx/coroutines/s0;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    new-instance p4, Lkotlinx/coroutines/rx2/a$b;

    invoke-direct {p4, p0}, Lkotlinx/coroutines/rx2/a$b;-><init>(Lkotlinx/coroutines/rx2/a;)V

    invoke-static {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/rx2/t;->b(Lkotlinx/coroutines/s0;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/c;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/rx2/a;->d:Lkotlinx/coroutines/c0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/rx2/a;->c:Lkotlinx/coroutines/n0;

    invoke-virtual {v0}, Lkotlinx/coroutines/n0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
