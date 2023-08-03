.class public final synthetic Landroidx/activity/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/d0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/d0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/f;->a:Lkotlinx/coroutines/channels/d0;

    iput-object p2, p0, Landroidx/activity/f;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/f;->a:Lkotlinx/coroutines/channels/d0;

    iget-object v1, p0, Landroidx/activity/f;->b:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->n(Lkotlinx/coroutines/channels/d0;Landroid/view/View;)V

    return-void
.end method
