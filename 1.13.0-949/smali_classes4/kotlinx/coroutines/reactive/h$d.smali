.class final Lkotlinx/coroutines/reactive/h$d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ReactiveFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/reactive/h;->t1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.reactive.FlowSubscription"
    f = "ReactiveFlow.kt"
    i = {
        0x0
    }
    l = {
        0xd1
    }
    m = "flowProcessing"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lkotlinx/coroutines/reactive/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/reactive/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/reactive/h;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/reactive/h<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/reactive/h$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/reactive/h$d;->c:Lkotlinx/coroutines/reactive/h;

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

    iput-object p1, p0, Lkotlinx/coroutines/reactive/h$d;->b:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/reactive/h$d;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/reactive/h$d;->d:I

    iget-object p1, p0, Lkotlinx/coroutines/reactive/h$d;->c:Lkotlinx/coroutines/reactive/h;

    invoke-static {p1, p0}, Lkotlinx/coroutines/reactive/h;->q1(Lkotlinx/coroutines/reactive/h;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method