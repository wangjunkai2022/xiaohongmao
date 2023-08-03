.class Lcom/tangxiaolv/telegramgallery/Actionbar/a$b;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/a;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-boolean v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->v:Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;->b(I)V

    :cond_1
    return-void
.end method
