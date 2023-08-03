.class public final synthetic Lkotlinx/coroutines/android/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlinx/coroutines/l1;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/android/b;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/b;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/a;->a:Lkotlinx/coroutines/android/b;

    iput-object p2, p0, Lkotlinx/coroutines/android/a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/android/a;->a:Lkotlinx/coroutines/android/b;

    iget-object v1, p0, Lkotlinx/coroutines/android/a;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lkotlinx/coroutines/android/b;->s0(Lkotlinx/coroutines/android/b;Ljava/lang/Runnable;)V

    return-void
.end method
