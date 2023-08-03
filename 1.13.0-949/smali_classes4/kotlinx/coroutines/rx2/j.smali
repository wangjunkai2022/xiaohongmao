.class public final synthetic Lkotlinx/coroutines/rx2/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/c0;


# instance fields
.field public final synthetic a:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic b:Lkotlinx/coroutines/flow/i;


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/j;->a:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lkotlinx/coroutines/rx2/j;->b:Lkotlinx/coroutines/flow/i;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/b0;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/rx2/j;->a:Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Lkotlinx/coroutines/rx2/j;->b:Lkotlinx/coroutines/flow/i;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/rx2/k;->a(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/i;Lio/reactivex/b0;)V

    return-void
.end method
