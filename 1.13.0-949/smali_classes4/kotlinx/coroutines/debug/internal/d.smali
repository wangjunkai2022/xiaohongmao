.class public final Lkotlinx/coroutines/debug/internal/d;
.super Ljava/lang/Object;
.source "DebugCoroutineInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\'\u0010(R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0008\u0010\nR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\r\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010!\u001a\u0004\u0018\u00010\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u001f\u001a\u0004\u0008\u0019\u0010 R\u0019\u0010\"\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\t\u001a\u0004\u0008\u0014\u0010\nR\u001d\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128G\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0015\u001a\u0004\u0008#\u0010\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/d;",
        "",
        "Lkotlin/coroutines/CoroutineContext;",
        "a",
        "Lkotlin/coroutines/CoroutineContext;",
        "()Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "b",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "creationStackBottom",
        "",
        "c",
        "J",
        "f",
        "()J",
        "sequenceNumber",
        "",
        "Ljava/lang/StackTraceElement;",
        "d",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "creationStackTrace",
        "",
        "e",
        "Ljava/lang/String;",
        "g",
        "()Ljava/lang/String;",
        "state",
        "Ljava/lang/Thread;",
        "Ljava/lang/Thread;",
        "()Ljava/lang/Thread;",
        "lastObservedThread",
        "lastObservedFrame",
        "h",
        "lastObservedStackTrace",
        "Lkotlinx/coroutines/debug/internal/e;",
        "source",
        "<init>",
        "(Lkotlinx/coroutines/debug/internal/e;Lkotlin/coroutines/CoroutineContext;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field private final a:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:J

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Ljava/lang/Thread;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final g:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/e;Lkotlin/coroutines/CoroutineContext;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/debug/internal/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/d;->a:Lkotlin/coroutines/CoroutineContext;

    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/e;->d()Lkotlinx/coroutines/debug/internal/k;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/d;->b:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 4
    iget-wide v0, p1, Lkotlinx/coroutines/debug/internal/e;->b:J

    iput-wide v0, p0, Lkotlinx/coroutines/debug/internal/d;->c:J

    .line 5
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/e;->e()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/d;->d:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/e;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/d;->e:Ljava/lang/String;

    .line 7
    iget-object p2, p1, Lkotlinx/coroutines/debug/internal/e;->e:Ljava/lang/Thread;

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/d;->f:Ljava/lang/Thread;

    .line 8
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/e;->f()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/d;->g:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 9
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/e;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/d;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->a:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final b()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->b:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->g:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public final e()Ljava/lang/Thread;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/debug/internal/d;->c:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "lastObservedStackTrace"
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/d;->h:Ljava/util/List;

    return-object v0
.end method
