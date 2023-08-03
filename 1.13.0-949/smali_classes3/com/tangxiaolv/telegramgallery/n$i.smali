.class Lcom/tangxiaolv/telegramgallery/n$i;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/n;->u0()V
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$i;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$i;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->d0(Lcom/tangxiaolv/telegramgallery/n;)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$i;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->e0(Lcom/tangxiaolv/telegramgallery/n;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$i;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->e0(Lcom/tangxiaolv/telegramgallery/n;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
