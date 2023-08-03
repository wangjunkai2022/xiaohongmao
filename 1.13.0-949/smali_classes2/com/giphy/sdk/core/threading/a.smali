.class public final Lcom/giphy/sdk/core/threading/a;
.super Ljava/lang/Object;
.source "ApiTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/threading/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u0018*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\nB\u0017\u0008\u0016\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B\'\u0008\u0016\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0017J\u001c\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003J\r\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/giphy/sdk/core/threading/a;",
        "V",
        "",
        "Lcom/giphy/sdk/core/network/api/a;",
        "completionHandler",
        "Ljava/util/concurrent/Future;",
        "k",
        "m",
        "()Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable;",
        "a",
        "Ljava/util/concurrent/Callable;",
        "callable",
        "Ljava/util/concurrent/ExecutorService;",
        "b",
        "Ljava/util/concurrent/ExecutorService;",
        "networkRequestExecutor",
        "Ljava/util/concurrent/Executor;",
        "c",
        "Ljava/util/concurrent/Executor;",
        "completionExecutor",
        "<init>",
        "(Ljava/util/concurrent/Callable;)V",
        "(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V",
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
.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:J

.field private static h:Ljava/util/concurrent/ExecutorService;

.field private static i:Ljava/util/concurrent/Executor;

.field public static final j:Lcom/giphy/sdk/core/threading/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/core/threading/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/core/threading/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/core/threading/a;->j:Lcom/giphy/sdk/core/threading/a$a;

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/giphy/sdk/core/threading/a;->d:I

    add-int/lit8 v1, v0, 0x2

    .line 2
    sput v1, Lcom/giphy/sdk/core/threading/a;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 3
    sput v0, Lcom/giphy/sdk/core/threading/a;->f:I

    const-wide/16 v0, 0x1

    .line 4
    sput-wide v0, Lcom/giphy/sdk/core/threading/a;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/core/threading/a;->a:Ljava/util/concurrent/Callable;

    .line 2
    sget-object p1, Lcom/giphy/sdk/core/threading/a;->j:Lcom/giphy/sdk/core/threading/a$a;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/threading/a$a;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/core/threading/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-virtual {p1}, Lcom/giphy/sdk/core/threading/a$a;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/giphy/sdk/core/threading/a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequestExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/core/threading/a;->a:Ljava/util/concurrent/Callable;

    .line 5
    iput-object p2, p0, Lcom/giphy/sdk/core/threading/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p3, p0, Lcom/giphy/sdk/core/threading/a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/core/threading/a;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lcom/giphy/sdk/core/threading/a;->d:I

    return v0
.end method

.method public static final synthetic c(Lcom/giphy/sdk/core/threading/a;)Ljava/util/concurrent/Callable;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/core/threading/a;->a:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public static final synthetic d(Lcom/giphy/sdk/core/threading/a;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/core/threading/a;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/core/threading/a;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Lcom/giphy/sdk/core/threading/a;->e:I

    return v0
.end method

.method public static final synthetic g()J
    .locals 2

    sget-wide v0, Lcom/giphy/sdk/core/threading/a;->g:J

    return-wide v0
.end method

.method public static final synthetic h()I
    .locals 1

    sget v0, Lcom/giphy/sdk/core/threading/a;->f:I

    return v0
.end method

.method public static final synthetic i(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lcom/giphy/sdk/core/threading/a;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final synthetic j(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    sput-object p0, Lcom/giphy/sdk/core/threading/a;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic l(Lcom/giphy/sdk/core/threading/a;Lcom/giphy/sdk/core/network/api/a;ILjava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/giphy/sdk/core/threading/a;->k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final k(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1    # Lcom/giphy/sdk/core/network/api/a;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/core/network/api/a<",
            "-TV;>;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/threading/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/giphy/sdk/core/threading/a$b;

    invoke-direct {v1, p0, p1}, Lcom/giphy/sdk/core/threading/a$b;-><init>(Lcom/giphy/sdk/core/threading/a;Lcom/giphy/sdk/core/network/api/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v0, "networkRequestExecutor.s\u2026}\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final m()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/threading/a;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
