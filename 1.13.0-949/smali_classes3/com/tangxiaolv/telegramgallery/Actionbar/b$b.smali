.class Lcom/tangxiaolv/telegramgallery/Actionbar/b$b;
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
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c(Lcom/tangxiaolv/telegramgallery/Actionbar/b;ZZ)V

    return-void
.end method
