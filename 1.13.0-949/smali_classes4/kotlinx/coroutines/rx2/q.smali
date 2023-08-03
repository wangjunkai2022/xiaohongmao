.class public final synthetic Lkotlinx/coroutines/rx2/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/c0;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/s0;

.field public final synthetic b:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/q;->a:Lkotlinx/coroutines/s0;

    iput-object p2, p0, Lkotlinx/coroutines/rx2/q;->b:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lkotlinx/coroutines/rx2/q;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/b0;)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/rx2/q;->a:Lkotlinx/coroutines/s0;

    iget-object v1, p0, Lkotlinx/coroutines/rx2/q;->b:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lkotlinx/coroutines/rx2/q;->c:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, p1}, Lkotlinx/coroutines/rx2/r;->a(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lio/reactivex/b0;)V

    return-void
.end method
