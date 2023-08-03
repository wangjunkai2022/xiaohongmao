.class Lcom/tangxiaolv/telegramgallery/n$c;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object p1

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-ltz p3, :cond_5

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->p0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->p0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->getSearchField()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->f:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object p2

    iget-object p2, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-object p2, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->S(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object p1

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/o;->Z0(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V

    .line 12
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    const/4 v2, 0x0

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->q0(Lcom/tangxiaolv/telegramgallery/n;)Z

    move-result v4

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/n$c;->a:Lcom/tangxiaolv/telegramgallery/n;

    move v3, p3

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/tangxiaolv/telegramgallery/o;->T0(Ljava/util/List;ZIILcom/tangxiaolv/telegramgallery/o$b0;)V

    :cond_5
    :goto_2
    return-void
.end method
