.class public final Lcom/giphy/sdk/analytics/batching/c;
.super Ljava/lang/Object;
.source "PingbackSubmissionQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/analytics/batching/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 -2\u00020\u0001:\u0001\u000bB\u0011\u0008\u0016\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&B!\u0008\u0016\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010+\u001a\u00020)\u00a2\u0006\u0004\u0008%\u0010,J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u000e\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0011\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001f\u0010\u0018\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006."
    }
    d2 = {
        "Lcom/giphy/sdk/analytics/batching/c;",
        "",
        "",
        "q",
        "r",
        "p",
        "Lcom/giphy/sdk/analytics/models/Session;",
        "session",
        "l",
        "m",
        "",
        "a",
        "I",
        "retriesCount",
        "Ljava/util/concurrent/ScheduledFuture;",
        "b",
        "Ljava/util/concurrent/ScheduledFuture;",
        "retryFuture",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "c",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "n",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "executorService",
        "Ljava/util/LinkedList;",
        "e",
        "Ljava/util/LinkedList;",
        "o",
        "()Ljava/util/LinkedList;",
        "sessions",
        "Ljava/lang/Runnable;",
        "f",
        "Ljava/lang/Runnable;",
        "retryFlush",
        "Lf2/a;",
        "pingbackClient",
        "<init>",
        "(Lf2/a;)V",
        "",
        "apiKey",
        "",
        "isMainInstance",
        "enableVerificationMode",
        "(Ljava/lang/String;ZZ)V",
        "j",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static g:I

.field private static h:J

.field private static i:J

.field public static final j:Lcom/giphy/sdk/analytics/batching/c$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Lf2/a;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/giphy/sdk/analytics/models/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/analytics/batching/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/analytics/batching/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/analytics/batching/c;->j:Lcom/giphy/sdk/analytics/batching/c$a;

    const/16 v0, 0xa

    .line 1
    sput v0, Lcom/giphy/sdk/analytics/batching/c;->g:I

    const-wide/16 v0, 0x1388

    .line 2
    sput-wide v0, Lcom/giphy/sdk/analytics/batching/c;->h:J

    const-wide/16 v0, 0x3

    .line 3
    sput-wide v0, Lcom/giphy/sdk/analytics/batching/c;->i:J

    return-void
.end method

.method public constructor <init>(Lf2/a;)V
    .locals 1
    .param p1    # Lf2/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "pingbackClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lcom/giphy/sdk/analytics/batching/c$d;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/analytics/batching/c$d;-><init>(Lcom/giphy/sdk/analytics/batching/c;)V

    iput-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->f:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/c;->d:Lf2/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    .line 9
    new-instance v1, Lcom/giphy/sdk/analytics/batching/c$d;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/analytics/batching/c$d;-><init>(Lcom/giphy/sdk/analytics/batching/c;)V

    iput-object v1, p0, Lcom/giphy/sdk/analytics/batching/c;->f:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lf2/b;

    .line 11
    new-instance v2, Lcom/giphy/sdk/core/network/engine/a;

    const-string v3, "executorService"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v0}, Lcom/giphy/sdk/core/network/engine/a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    .line 12
    new-instance v0, Lcom/giphy/sdk/analytics/batching/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/giphy/sdk/analytics/batching/a;-><init>(Ljava/lang/String;ZZ)V

    .line 13
    invoke-direct {v1, p1, v2, v0}, Lf2/b;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/network/engine/b;Lcom/giphy/sdk/analytics/batching/a;)V

    iput-object v1, p0, Lcom/giphy/sdk/analytics/batching/c;->d:Lf2/a;

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lcom/giphy/sdk/analytics/batching/c;->h:J

    return-wide v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lcom/giphy/sdk/analytics/batching/c;->g:I

    return v0
.end method

.method public static final synthetic c()J
    .locals 2

    sget-wide v0, Lcom/giphy/sdk/analytics/batching/c;->i:J

    return-wide v0
.end method

.method public static final synthetic d(Lcom/giphy/sdk/analytics/batching/c;)I
    .locals 0

    iget p0, p0, Lcom/giphy/sdk/analytics/batching/c;->a:I

    return p0
.end method

.method public static final synthetic e(Lcom/giphy/sdk/analytics/batching/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/c;->p()V

    return-void
.end method

.method public static final synthetic f(J)V
    .locals 0

    sput-wide p0, Lcom/giphy/sdk/analytics/batching/c;->h:J

    return-void
.end method

.method public static final synthetic g(I)V
    .locals 0

    sput p0, Lcom/giphy/sdk/analytics/batching/c;->g:I

    return-void
.end method

.method public static final synthetic h(J)V
    .locals 0

    sput-wide p0, Lcom/giphy/sdk/analytics/batching/c;->i:J

    return-void
.end method

.method public static final synthetic i(Lcom/giphy/sdk/analytics/batching/c;I)V
    .locals 0

    iput p1, p0, Lcom/giphy/sdk/analytics/batching/c;->a:I

    return-void
.end method

.method public static final synthetic j(Lcom/giphy/sdk/analytics/batching/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/c;->q()V

    return-void
.end method

.method public static final synthetic k(Lcom/giphy/sdk/analytics/batching/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/c;->r()V

    return-void
.end method

.method private final p()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 3
    :cond_0
    iget v0, p0, Lcom/giphy/sdk/analytics/batching/c;->a:I

    int-to-long v1, v0

    sget-wide v3, Lcom/giphy/sdk/analytics/batching/c;->i:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 4
    iget-object v1, p0, Lcom/giphy/sdk/analytics/batching/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/giphy/sdk/analytics/batching/c;->f:Ljava/lang/Runnable;

    .line 5
    sget-wide v3, Lcom/giphy/sdk/analytics/batching/c;->h:J

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    mul-long v3, v3, v5

    .line 6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->b:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/giphy/sdk/analytics/batching/c;->a:I

    :goto_0
    return-void
.end method

.method private final q()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/analytics/models/Session;

    .line 3
    iget-object v1, p0, Lcom/giphy/sdk/analytics/batching/c;->d:Lf2/a;

    const-string v2, "session"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/giphy/sdk/analytics/batching/c$e;

    invoke-direct {v2, p0, v0}, Lcom/giphy/sdk/analytics/batching/c$e;-><init>(Lcom/giphy/sdk/analytics/batching/c;Lcom/giphy/sdk/analytics/models/Session;)V

    invoke-interface {v1, v0, v2}, Lf2/a;->a(Lcom/giphy/sdk/analytics/models/Session;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final r()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/giphy/sdk/analytics/batching/c;->g:I

    if-le v0, v1, :cond_1

    .line 2
    sget-object v0, Le2/a;->j:Le2/a;

    invoke-virtual {v0}, Le2/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "trimming queued session because count == %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PINGBACK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final l(Lcom/giphy/sdk/analytics/models/Session;)V
    .locals 2
    .param p1    # Lcom/giphy/sdk/analytics/models/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/giphy/sdk/analytics/batching/c$b;

    invoke-direct {v1, p0, p1}, Lcom/giphy/sdk/analytics/batching/c$b;-><init>(Lcom/giphy/sdk/analytics/batching/c;Lcom/giphy/sdk/analytics/models/Session;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/giphy/sdk/analytics/batching/c$c;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/analytics/batching/c$c;-><init>(Lcom/giphy/sdk/analytics/batching/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final o()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/giphy/sdk/analytics/models/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/c;->e:Ljava/util/LinkedList;

    return-object v0
.end method
