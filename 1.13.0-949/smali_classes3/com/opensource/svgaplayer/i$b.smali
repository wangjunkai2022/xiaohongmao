.class public final Lcom/opensource/svgaplayer/i$b;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R*\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u00088\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/i$b;",
        "",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "executor",
        "",
        "b",
        "Lcom/opensource/svgaplayer/i;",
        "d",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "threadPoolExecutor",
        "Ljava/util/concurrent/ExecutorService;",
        "a",
        "()Ljava/util/concurrent/ExecutorService;",
        "c",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "",
        "TAG",
        "Ljava/lang/String;",
        "mShareParser",
        "Lcom/opensource/svgaplayer/i;",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "threadNum",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "<init>",
        "()V",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/opensource/svgaplayer/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/opensource/svgaplayer/i;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/i$b;->c(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final c(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p1}, Lcom/opensource/svgaplayer/i;->q(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final d()Lcom/opensource/svgaplayer/i;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/opensource/svgaplayer/i;->e()Lcom/opensource/svgaplayer/i;

    move-result-object v0

    return-object v0
.end method
