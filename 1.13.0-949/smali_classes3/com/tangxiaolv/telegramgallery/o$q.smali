.class Lcom/tangxiaolv/telegramgallery/o$q;
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$q;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$q;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$q;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/o$b0;->d()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$q;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/o$b0;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$q;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$q;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->f(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/tangxiaolv/telegramgallery/o$b0;->m(I)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$q;->a:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    :cond_1
    return-void
.end method
