.class public final Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Reduce.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1\n*L\n1#1,172:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2"
    f = "Reduce.kt"
    i = {}
    l = {
        0x2d
    }
    m = "emit"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1;->c:Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1;->b:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1;->d:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2$emit$1;->c:Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
