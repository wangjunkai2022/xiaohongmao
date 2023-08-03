.class Lcom/tangxiaolv/telegramgallery/n$d$a;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/n$d;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/n$d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/n$d;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$d$a;->a:Lcom/tangxiaolv/telegramgallery/n$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$d$a;->a:Lcom/tangxiaolv/telegramgallery/n$d;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$d$a;->a:Lcom/tangxiaolv/telegramgallery/n$d;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->r0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$d$a;->a:Lcom/tangxiaolv/telegramgallery/n$d;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/n$d;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->r0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$j;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
