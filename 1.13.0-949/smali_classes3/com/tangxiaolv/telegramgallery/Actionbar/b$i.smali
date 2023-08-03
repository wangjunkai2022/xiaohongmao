.class Lcom/tangxiaolv/telegramgallery/Actionbar/b$i;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/b;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZZ)Z
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$i;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$i;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$i;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->O(ZZ)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$i;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->D()V

    return-void
.end method
