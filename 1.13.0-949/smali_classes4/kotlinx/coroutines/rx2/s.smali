.class public final synthetic Lkotlinx/coroutines/rx2/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/s;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/rx2/s;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlinx/coroutines/rx2/t;->a(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
