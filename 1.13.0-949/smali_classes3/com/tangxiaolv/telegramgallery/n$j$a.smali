.class Lcom/tangxiaolv/telegramgallery/n$j$a;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/n$j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/n$j;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/n$j;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v1

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 4
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, -0x1

    .line 5
    iput v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    .line 6
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v2

    iget v4, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->h:Ljava/lang/String;

    .line 8
    iput-object v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->g:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {v2, v0}, Lcom/tangxiaolv/telegramgallery/n;->i(I)V

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;

    move-result-object v0

    iget v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-interface {v0, v2}, Lcom/tangxiaolv/telegramgallery/n$k;->c(I)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->j0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;

    move-result-object v0

    invoke-interface {v0}, Lcom/tangxiaolv/telegramgallery/n$k;->e()I

    move-result v0

    .line 14
    iput v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    .line 15
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/n;->b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;

    move-result-object v2

    iget v4, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-interface {v2, v4, v0}, Lcom/tangxiaolv/telegramgallery/n$k;->h(II)V

    goto :goto_1

    .line 16
    :cond_1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/m;->G:Ljava/lang/String;

    .line 17
    sget-object v4, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    sget v5, Lcom/tangxiaolv/telegramgallery/q$o;->i:I

    .line 18
    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v6, v6, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/n;->j0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 19
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    sget-object v2, Lcom/tangxiaolv/telegramgallery/m;->G:Ljava/lang/String;

    .line 22
    :goto_0
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->J(Ljava/lang/String;)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/n;->j0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result v2

    if-gt v0, v2, :cond_5

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Components/f;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    .line 25
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;

    move-result-object v0

    iget v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-interface {v0, v2}, Lcom/tangxiaolv/telegramgallery/n$k;->d(I)I

    move-result v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    .line 26
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v2

    iget v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 27
    invoke-virtual {p1, v0, v1, v3}, Lcom/tangxiaolv/telegramgallery/Components/f;->c(IZZ)V

    goto :goto_3

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    .line 29
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 31
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    goto :goto_2

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    .line 35
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Components/f;

    invoke-virtual {p1, v2, v3}, Lcom/tangxiaolv/telegramgallery/Components/f;->d(ZZ)V

    .line 36
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->k0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    .line 37
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 38
    invoke-virtual {p1, v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/h;->a(IZ)V

    .line 39
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$j$a;->a:Lcom/tangxiaolv/telegramgallery/n$j;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/n;->b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;

    move-result-object p1

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/n$k;->f()V

    return-void
.end method
