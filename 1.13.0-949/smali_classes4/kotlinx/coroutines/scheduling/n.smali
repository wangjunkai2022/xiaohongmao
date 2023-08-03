.class public final Lkotlinx/coroutines/scheduling/n;
.super Ljava/lang/Object;
.source "Tasks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\"\u0014\u0010\u0003\u001a\u00020\u00008\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0001\u0010\u0002\"\u0014\u0010\u0007\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\"\u0014\u0010\u000b\u001a\u00020\u00088\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\"\u0014\u0010\r\u001a\u00020\u00088\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\n\"\u0014\u0010\u000f\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0006\"\u0016\u0010\u0013\u001a\u00020\u00108\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\"\u0014\u0010\u0015\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\n\"\u0014\u0010\u0017\u001a\u00020\u00088\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\n\"\u0014\u0010\u001b\u001a\u00020\u00188\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\"\u0014\u0010\u001d\u001a\u00020\u00188\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001a\"\u0019\u0010!\u001a\u00020\u001f*\u00020\u001e8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0001\u0010 \u00a8\u0006\""
    }
    d2 = {
        "",
        "a",
        "Ljava/lang/String;",
        "DEFAULT_SCHEDULER_NAME",
        "",
        "b",
        "J",
        "WORK_STEALING_TIME_RESOLUTION_NS",
        "",
        "c",
        "I",
        "CORE_POOL_SIZE",
        "d",
        "MAX_POOL_SIZE",
        "e",
        "IDLE_WORKER_KEEP_ALIVE_NS",
        "Lkotlinx/coroutines/scheduling/i;",
        "f",
        "Lkotlinx/coroutines/scheduling/i;",
        "schedulerTimeSource",
        "g",
        "TASK_NON_BLOCKING",
        "h",
        "TASK_PROBABLY_BLOCKING",
        "Lkotlinx/coroutines/scheduling/k;",
        "i",
        "Lkotlinx/coroutines/scheduling/k;",
        "NonBlockingContext",
        "j",
        "BlockingContext",
        "Lkotlinx/coroutines/scheduling/j;",
        "",
        "(Lkotlinx/coroutines/scheduling/j;)Z",
        "isBlocking",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DefaultDispatcher"
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final b:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final d:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final e:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static f:Lkotlinx/coroutines/scheduling/i; = null
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:Lkotlinx/coroutines/scheduling/k;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final j:Lkotlinx/coroutines/scheduling/k;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 1
    invoke-static/range {v0 .. v8}, Lkotlinx/coroutines/internal/r0;->g(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/n;->b:J

    .line 2
    invoke-static {}, Lkotlinx/coroutines/internal/r0;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 3
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/r0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/n;->c:I

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    const v2, 0x1ffffe

    const/4 v3, 0x0

    const v4, 0x1ffffe

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 4
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/r0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/n;->d:I

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 6
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/r0;->g(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/n;->e:J

    .line 8
    sget-object v0, Lkotlinx/coroutines/scheduling/g;->a:Lkotlinx/coroutines/scheduling/g;

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->f:Lkotlinx/coroutines/scheduling/i;

    .line 9
    new-instance v0, Lkotlinx/coroutines/scheduling/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/l;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->i:Lkotlinx/coroutines/scheduling/k;

    .line 10
    new-instance v0, Lkotlinx/coroutines/scheduling/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/l;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->j:Lkotlinx/coroutines/scheduling/k;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/scheduling/j;)Z
    .locals 1
    .param p0    # Lkotlinx/coroutines/scheduling/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/j;->b:Lkotlinx/coroutines/scheduling/k;

    invoke-interface {p0}, Lkotlinx/coroutines/scheduling/k;->d0()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
