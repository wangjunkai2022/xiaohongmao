.class final Lkotlinx/coroutines/flow/u;
.super Ljava/lang/Object;
.source "Share.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/x;
.implements Lkotlinx/coroutines/flow/c;
.implements Lkotlinx/coroutines/flow/internal/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/x<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/p<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0008\u0012\u0004\u0012\u00028\u00000\u0004B\u001f\u0012\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ&\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00158\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/u;",
        "T",
        "Lkotlinx/coroutines/flow/x;",
        "Lkotlinx/coroutines/flow/c;",
        "Lkotlinx/coroutines/flow/internal/p;",
        "Lkotlinx/coroutines/flow/j;",
        "collector",
        "",
        "collect",
        "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/i;",
        "a",
        "Lkotlinx/coroutines/j2;",
        "Lkotlinx/coroutines/j2;",
        "job",
        "",
        "b",
        "()Ljava/util/List;",
        "replayCache",
        "flow",
        "<init>",
        "(Lkotlinx/coroutines/flow/x;Lkotlinx/coroutines/j2;)V",
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
.field private final a:Lkotlinx/coroutines/j2;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final synthetic b:Lkotlinx/coroutines/flow/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/x;Lkotlinx/coroutines/j2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/j2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/x<",
            "+TT;>;",
            "Lkotlinx/coroutines/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/flow/u;->a:Lkotlinx/coroutines/j2;

    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/flow/u;->b:Lkotlinx/coroutines/flow/x;

    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/z;->e(Lkotlinx/coroutines/flow/x;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/u;->b:Lkotlinx/coroutines/flow/x;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/x;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/u;->b:Lkotlinx/coroutines/flow/x;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/x;->collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
