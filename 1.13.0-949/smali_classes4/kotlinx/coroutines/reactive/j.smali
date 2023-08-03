.class public final synthetic Lkotlinx/coroutines/reactive/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/reactivestreams/c;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/s0;

.field public final synthetic b:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/reactive/j;->a:Lkotlinx/coroutines/s0;

    iput-object p2, p0, Lkotlinx/coroutines/reactive/j;->b:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lkotlinx/coroutines/reactive/j;->c:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lkotlinx/coroutines/reactive/j;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final i(Lorg/reactivestreams/d;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/reactive/j;->a:Lkotlinx/coroutines/s0;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/j;->b:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lkotlinx/coroutines/reactive/j;->c:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lkotlinx/coroutines/reactive/j;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3, p1}, Lkotlinx/coroutines/reactive/k;->a(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lorg/reactivestreams/d;)V

    return-void
.end method
