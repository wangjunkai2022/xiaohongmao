.class final Lcom/giphy/sdk/ui/views/s$d;
.super Ljava/lang/Object;
.source "UserProfileInfoDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/giphy/sdk/ui/views/UserProfileInfoDialog$onViewCreated$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/s;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/s;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/s$d;->a:Lcom/giphy/sdk/ui/views/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/s$d;->a:Lcom/giphy/sdk/ui/views/s;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/s;->X()Lcom/giphy/sdk/ui/views/t;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/giphy/sdk/ui/views/t;->a()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/s$d;->a:Lcom/giphy/sdk/ui/views/s;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
