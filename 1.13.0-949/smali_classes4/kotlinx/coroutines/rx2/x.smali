.class public final synthetic Lkotlinx/coroutines/rx2/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/q;

.field public final synthetic b:Lkotlinx/coroutines/rx2/z;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/q;Lkotlinx/coroutines/rx2/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/x;->a:Lkotlinx/coroutines/q;

    iput-object p2, p0, Lkotlinx/coroutines/rx2/x;->b:Lkotlinx/coroutines/rx2/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/rx2/x;->a:Lkotlinx/coroutines/q;

    iget-object v1, p0, Lkotlinx/coroutines/rx2/x;->b:Lkotlinx/coroutines/rx2/z;

    invoke-static {v0, v1}, Lkotlinx/coroutines/rx2/z;->p0(Lkotlinx/coroutines/q;Lkotlinx/coroutines/rx2/z;)V

    return-void
.end method
