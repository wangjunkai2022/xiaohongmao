.class Lcom/tangxiaolv/telegramgallery/n$f;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/n;->r(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/n;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$f;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-eqz p3, :cond_0

    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    if-le p2, p4, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$f;->a:Lcom/tangxiaolv/telegramgallery/n;

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->s0(Lcom/tangxiaolv/telegramgallery/n;)Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$f;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    :cond_0
    return-void
.end method
