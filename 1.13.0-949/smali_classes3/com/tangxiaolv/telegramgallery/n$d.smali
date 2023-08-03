.class Lcom/tangxiaolv/telegramgallery/n$d;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    sget p2, Lcom/tangxiaolv/telegramgallery/q$o;->c0:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lcom/tangxiaolv/telegramgallery/q$o;->g:I

    .line 4
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lcom/tangxiaolv/telegramgallery/q$o;->f:I

    new-instance p4, Lcom/tangxiaolv/telegramgallery/n$d$a;

    invoke-direct {p4, p0}, Lcom/tangxiaolv/telegramgallery/n$d$a;-><init>(Lcom/tangxiaolv/telegramgallery/n$d;)V

    .line 5
    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lcom/tangxiaolv/telegramgallery/q$o;->e:I

    const/4 p4, 0x0

    .line 6
    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->Y(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
