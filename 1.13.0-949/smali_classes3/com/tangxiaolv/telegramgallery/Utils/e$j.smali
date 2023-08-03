.class Lcom/tangxiaolv/telegramgallery/Utils/e$j;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/tangxiaolv/telegramgallery/TL/m;

.field protected f:Z

.field protected g:Ljava/io/File;

.field protected h:Ljava/io/File;

.field protected i:Z

.field protected j:Ljava/lang/String;

.field protected k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

.field protected l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

.field protected m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/k;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic n:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method private constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tangxiaolv/telegramgallery/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/k;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->i(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/k;->B(Z)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public b(Lcom/tangxiaolv/telegramgallery/k;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/k;

    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_2

    .line 3
    :cond_0
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 4
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/e;->i(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    invoke-virtual {v2, v5}, Lcom/tangxiaolv/telegramgallery/k;->B(Z)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->i(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/k;

    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/k;->B(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->e:Lcom/tangxiaolv/telegramgallery/TL/m;

    if-eqz p1, :cond_6

    .line 10
    instance-of v0, p1, Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v0, :cond_5

    .line 11
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->e:Lcom/tangxiaolv/telegramgallery/TL/m;

    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->q(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    instance-of p1, p1, Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz p1, :cond_6

    .line 13
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->e:Lcom/tangxiaolv/telegramgallery/TL/m;

    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/b;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->o(Lcom/tangxiaolv/telegramgallery/TL/b;)V

    .line 14
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 15
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->j(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object p1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/d;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->k(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object p1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/d;->a(Ljava/lang/Runnable;)V

    .line 18
    :goto_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b()V

    .line 19
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    .line 20
    :cond_8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    if-eqz p1, :cond_9

    .line 21
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->l(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/LinkedList;

    move-result-object p1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    invoke-virtual {p1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 23
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    .line 24
    :cond_9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 25
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_a
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 27
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->o(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public c(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$j;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/k;

    .line 5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->i(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    invoke-virtual {v0, v2}, Lcom/tangxiaolv/telegramgallery/k;->B(Z)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->n:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->o(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
