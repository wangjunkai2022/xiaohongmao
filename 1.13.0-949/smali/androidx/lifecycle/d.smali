.class public final synthetic Landroidx/lifecycle/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/m;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/d;->a:Lkotlinx/coroutines/channels/m;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/d;->a:Lkotlinx/coroutines/channels/m;

    invoke-static {v0, p1}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->h(Lkotlinx/coroutines/channels/m;Ljava/lang/Object;)V

    return-void
.end method
