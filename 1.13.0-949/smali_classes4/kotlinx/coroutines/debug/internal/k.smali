.class public final Lkotlinx/coroutines/debug/internal/k;
.super Ljava/lang/Object;
.source "StackTraceFrame.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u00018\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/k;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Ljava/lang/StackTraceElement;",
        "getStackTraceElement",
        "a",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "b",
        "Ljava/lang/StackTraceElement;",
        "stackTraceElement",
        "<init>",
        "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Ljava/lang/StackTraceElement;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/StackTraceElement;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/k;->a:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/k;->b:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/k;->a:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/k;->b:Ljava/lang/StackTraceElement;

    return-object v0
.end method
