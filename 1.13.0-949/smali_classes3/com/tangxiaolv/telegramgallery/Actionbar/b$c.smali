.class Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;
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

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->j(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
