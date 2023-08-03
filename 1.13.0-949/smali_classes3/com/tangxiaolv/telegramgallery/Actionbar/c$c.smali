.class Lcom/tangxiaolv/telegramgallery/Actionbar/c$c;
.super Ljava/lang/Object;
.source "ActionBarMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a(ILandroid/view/View;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c$c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->l(I)V

    return-void
.end method
