.class Lcom/tangxiaolv/telegramgallery/o$w;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Components/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->b1(I)V
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$w;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$w;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b(FFFZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/o$w;->a:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v0, 0x1

    invoke-static {p4, p3, p1, p2, v0}, Lcom/tangxiaolv/telegramgallery/o;->H(Lcom/tangxiaolv/telegramgallery/o;FFFZ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/o$w;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p4, p1}, Lcom/tangxiaolv/telegramgallery/o;->I(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$w;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, p2}, Lcom/tangxiaolv/telegramgallery/o;->J(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$w;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, p3}, Lcom/tangxiaolv/telegramgallery/o;->D(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$w;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    return-void
.end method
