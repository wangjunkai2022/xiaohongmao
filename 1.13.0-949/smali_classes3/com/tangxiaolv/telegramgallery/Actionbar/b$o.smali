.class Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->i(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-virtual {v0, v1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->O(ZZ)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->O(ZZ)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->D()V

    return-void
.end method
