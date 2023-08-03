.class Lcom/tangxiaolv/telegramgallery/o$s;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->Z0(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$s;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$s;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->m(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$s;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->o(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Components/d;->c()V

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$s;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->r(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$s;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->t(Lcom/tangxiaolv/telegramgallery/o;)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$s;->a:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->p(Lcom/tangxiaolv/telegramgallery/o;I)V

    return-void
.end method
