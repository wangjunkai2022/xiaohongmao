.class Lcom/tangxiaolv/telegramgallery/Actionbar/c$b;
.super Ljava/lang/Object;
.source "ActionBarMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/c;->d(IIILandroid/graphics/drawable/Drawable;I)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/c;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    .line 2
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->v:Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->u()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->t(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->u(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c$b;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->l(I)V

    :cond_2
    :goto_0
    return-void
.end method
