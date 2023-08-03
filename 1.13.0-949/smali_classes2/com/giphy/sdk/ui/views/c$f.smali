.class final Lcom/giphy/sdk/ui/views/c$f;
.super Ljava/lang/Object;
.source "GPHMediaActionsView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/c;->p()Landroid/view/View$OnClickListener;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/c;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/c;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/c$f;->a:Lcom/giphy/sdk/ui/views/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/c$f;->a:Lcom/giphy/sdk/ui/views/c;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/c;->d()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/giphy/sdk/ui/utils/d;->a:Lcom/giphy/sdk/ui/utils/d;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/c$f;->a:Lcom/giphy/sdk/ui/views/c;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/views/c;->e()Lcom/giphy/sdk/core/models/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/utils/d;->c(Lcom/giphy/sdk/core/models/Media;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/c$f;->a:Lcom/giphy/sdk/ui/views/c;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
