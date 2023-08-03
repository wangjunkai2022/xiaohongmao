.class public final Lkotlinx/coroutines/debug/internal/DebuggerInfo;
.super Ljava/lang/Object;
.source "DebuggerInfo.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\'\u001a\u00020&\u0012\u0006\u0010)\u001a\u00020(\u00a2\u0006\u0004\u0008*\u0010+R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u0012\u0010\u000cR\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0015\u0010\u000cR\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\n\u001a\u0004\u0008\u0018\u0010\u000cR\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\u00a8\u0006,"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/DebuggerInfo;",
        "Ljava/io/Serializable;",
        "",
        "a",
        "Ljava/lang/Long;",
        "getCoroutineId",
        "()Ljava/lang/Long;",
        "coroutineId",
        "",
        "b",
        "Ljava/lang/String;",
        "getDispatcher",
        "()Ljava/lang/String;",
        "dispatcher",
        "c",
        "getName",
        "name",
        "d",
        "getState",
        "state",
        "e",
        "getLastObservedThreadState",
        "lastObservedThreadState",
        "f",
        "getLastObservedThreadName",
        "lastObservedThreadName",
        "",
        "Ljava/lang/StackTraceElement;",
        "g",
        "Ljava/util/List;",
        "getLastObservedStackTrace",
        "()Ljava/util/List;",
        "lastObservedStackTrace",
        "h",
        "J",
        "getSequenceNumber",
        "()J",
        "sequenceNumber",
        "Lkotlinx/coroutines/debug/internal/e;",
        "source",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
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
.field private final a:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final g:Ljava/util/List;
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

.field private final h:J


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/e;Lkotlin/coroutines/CoroutineContext;)V
    .locals 4
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
    sget-object v0, Lkotlinx/coroutines/q0;->b:Lkotlinx/coroutines/q0$a;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/q0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/q0;->s0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->a:Ljava/lang/Long;

    .line 3
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/ContinuationInterceptor;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Lkotlinx/coroutines/r0;->b:Lkotlinx/coroutines/r0$a;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/r0;

    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lkotlinx/coroutines/r0;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/e;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->d:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lkotlinx/coroutines/debug/internal/e;->e:Ljava/lang/Thread;

    if-nez p2, :cond_3

    :goto_3
    move-object p2, v1

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_4
    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->e:Ljava/lang/String;

    .line 7
    iget-object p2, p1, Lkotlinx/coroutines/debug/internal/e;->e:Ljava/lang/Thread;

    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/e;->h()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->g:Ljava/util/List;

    .line 9
    iget-wide p1, p1, Lkotlinx/coroutines/debug/internal/e;->b:J

    iput-wide p1, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->h:J

    return-void
.end method


# virtual methods
.method public final getCoroutineId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDispatcher()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastObservedStackTrace()Ljava/util/List;
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

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getLastObservedThreadName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastObservedThreadState()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->h:J

    return-wide v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->d:Ljava/lang/String;

    return-object v0
.end method
