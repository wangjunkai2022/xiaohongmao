.class Lcom/tangxiaolv/telegramgallery/o$x;
.super Landroid/graphics/drawable/ColorDrawable;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "x"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/o;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$x;->b:Lcom/tangxiaolv/telegramgallery/o;

    .line 2
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/o$x;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$x;->a:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$x;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$x;->a:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method
