.class public final Lkotlinx/coroutines/flow/internal/AbortFlowException;
.super Ljava/util/concurrent/CancellationException;
.source "FlowExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowExceptions.kt\nkotlinx/coroutines/flow/internal/AbortFlowException\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,30:1\n26#2:31\n*S KotlinDebug\n*F\n+ 1 FlowExceptions.kt\nkotlinx/coroutines/flow/internal/AbortFlowException\n*L\n17#1:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0016R\u001b\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/AbortFlowException;",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "",
        "fillInStackTrace",
        "Lkotlinx/coroutines/flow/j;",
        "a",
        "Lkotlinx/coroutines/flow/j;",
        "getOwner",
        "()Lkotlinx/coroutines/flow/j;",
        "owner",
        "<init>",
        "(Lkotlinx/coroutines/flow/j;)V",
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
.field private final a:Lkotlinx/coroutines/flow/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/j<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/j;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Flow was aborted, no more elements needed"

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->a:Lkotlinx/coroutines/flow/j;

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CancellationException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public final getOwner()Lkotlinx/coroutines/flow/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/j<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->a:Lkotlinx/coroutines/flow/j;

    return-object v0
.end method
