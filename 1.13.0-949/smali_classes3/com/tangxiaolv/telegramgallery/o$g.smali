.class Lcom/tangxiaolv/telegramgallery/o$g;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o$c0;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;Lcom/tangxiaolv/telegramgallery/o$c0;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$g;->b:Lcom/tangxiaolv/telegramgallery/o;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/o$g;->a:Lcom/tangxiaolv/telegramgallery/o$c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$g;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$g;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/o;->V(Lcom/tangxiaolv/telegramgallery/o;I)I

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$g;->b:Lcom/tangxiaolv/telegramgallery/o;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o$g;->a:Lcom/tangxiaolv/telegramgallery/o$c0;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->g0(Lcom/tangxiaolv/telegramgallery/o;Lcom/tangxiaolv/telegramgallery/o$c0;)V

    return-void
.end method
