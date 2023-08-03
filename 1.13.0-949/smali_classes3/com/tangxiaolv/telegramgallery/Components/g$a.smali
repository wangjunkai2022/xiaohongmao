.class Lcom/tangxiaolv/telegramgallery/Components/g$a;
.super Ljava/lang/Object;
.source "PhotoPickerSearchCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Components/g;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Components/g;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$a;->a:Lcom/tangxiaolv/telegramgallery/Components/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$a;->a:Lcom/tangxiaolv/telegramgallery/Components/g;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/g;->a(Lcom/tangxiaolv/telegramgallery/Components/g;)Lcom/tangxiaolv/telegramgallery/Components/g$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$a;->a:Lcom/tangxiaolv/telegramgallery/Components/g;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/g;->a(Lcom/tangxiaolv/telegramgallery/Components/g;)Lcom/tangxiaolv/telegramgallery/Components/g$c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/g$c;->a(I)V

    :cond_0
    return-void
.end method
