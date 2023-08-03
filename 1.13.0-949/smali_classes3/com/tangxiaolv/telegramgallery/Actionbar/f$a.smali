.class Lcom/tangxiaolv/telegramgallery/Actionbar/f$a;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/f;->Z(Landroid/app/Dialog;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f$a;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f$a;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->H(Landroid/app/Dialog;)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f$a;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    return-void
.end method
