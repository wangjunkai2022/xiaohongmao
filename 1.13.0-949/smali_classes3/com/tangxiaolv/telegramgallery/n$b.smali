.class Lcom/tangxiaolv/telegramgallery/n$b;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/n;->r(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/n;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$b;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$b;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->t()V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$b;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/tangxiaolv/telegramgallery/n$k;->g(Z)V

    return-void
.end method
