.class final Lcom/giphy/sdk/ui/views/GPHVideoControls$b;
.super Ljava/lang/Object;
.source "GPHVideoControls.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GPHVideoControls;->y(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GPHVideoControls;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GPHVideoControls;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->i(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lh2/r;

    move-result-object v0

    iget-object v0, v0, Lh2/r;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "viewBinding.controls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
