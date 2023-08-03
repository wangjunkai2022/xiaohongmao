.class Lcom/tangxiaolv/telegramgallery/o$t;
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$t;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$t;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$t;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/k;->x()I

    move-result v0

    add-int/lit8 v0, v0, -0x5a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/k;->k0(IZ)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$t;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->o(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/d;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$t;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/k;->x()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->setOrientation(I)V

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$t;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
