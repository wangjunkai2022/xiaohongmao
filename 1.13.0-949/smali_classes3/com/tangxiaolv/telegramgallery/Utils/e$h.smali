.class Lcom/tangxiaolv/telegramgallery/Utils/e$h;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;->M(Ljava/lang/String;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->b:I

    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->y(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/e$n;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->b:I

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->c(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)Lcom/tangxiaolv/telegramgallery/TL/d;

    move-result-object v4

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->d(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->z(Lcom/tangxiaolv/telegramgallery/Utils/e;ILjava/io/File;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->y(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 6
    :goto_0
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 7
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tangxiaolv/telegramgallery/k;

    .line 8
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->o(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    if-nez v5, :cond_2

    .line 9
    new-instance v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {v5, v3, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$a;)V

    .line 10
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->c:Ljava/io/File;

    iput-object v3, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    .line 11
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    iput-object v3, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    .line 12
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    iput-object v3, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    .line 13
    iget-boolean v3, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    iput-boolean v3, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    .line 14
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->d:Ljava/lang/String;

    iput-object v3, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->d:Ljava/lang/String;

    .line 15
    new-instance v3, Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {v3, v6, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$j;)V

    iput-object v3, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    .line 16
    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    iput-object v6, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    .line 17
    iget-boolean v6, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->f:Z

    iput-boolean v6, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->f:Z

    .line 18
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/e;->o(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    invoke-virtual {v5, v4}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a(Lcom/tangxiaolv/telegramgallery/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    .line 20
    iget-boolean v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->j(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$h;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->k(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method
