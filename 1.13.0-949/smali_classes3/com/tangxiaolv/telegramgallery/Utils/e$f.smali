.class Lcom/tangxiaolv/telegramgallery/Utils/e$f;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;->I(Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Integer;

.field final synthetic e:Lcom/tangxiaolv/telegramgallery/k;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Z

.field final synthetic h:Lcom/tangxiaolv/telegramgallery/TL/m;

.field final synthetic i:Z

.field final synthetic j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;ZLcom/tangxiaolv/telegramgallery/TL/m;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->a:I

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->d:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->e:Lcom/tangxiaolv/telegramgallery/k;

    iput-object p7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->g:Z

    iput-object p9, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->h:Lcom/tangxiaolv/telegramgallery/TL/m;

    iput-boolean p10, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->i:Z

    iput p11, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->j:I

    iput-object p12, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->k:Ljava/lang/String;

    iput-object p13, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    .line 3
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/e;->o(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    .line 4
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->i(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->d:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    if-eqz v5, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->e:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v5, v6}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b(Lcom/tangxiaolv/telegramgallery/k;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 6
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->e:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v4, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a(Lcom/tangxiaolv/telegramgallery/k;)V

    const/4 v5, 0x1

    :cond_3
    if-nez v5, :cond_5

    if-eqz v0, :cond_5

    .line 7
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->e:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, v4}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a(Lcom/tangxiaolv/telegramgallery/k;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :cond_5
    :goto_3
    if-nez v5, :cond_1b

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    const-string v6, "http"

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const-string v6, "thumb://"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v6, ":"

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const/16 v7, 0x8

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 12
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v6, v5

    goto :goto_4

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const-string v7, "vthumb://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const/16 v7, 0x9

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 15
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 16
    :cond_8
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    .line 17
    :cond_9
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->a:I

    if-eqz v0, :cond_a

    .line 18
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->g:Z

    if-eqz v0, :cond_a

    .line 19
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v4}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "q_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move-object v6, v5

    :cond_b
    const/4 v0, 0x0

    .line 22
    :goto_5
    iget v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->a:I

    if-eq v7, v1, :cond_1b

    .line 23
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {v1, v7, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$a;)V

    .line 24
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    if-eqz v5, :cond_c

    const-string v7, "vthumb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const-string v7, "thumb"

    .line 25
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const-string v7, "mp4"

    .line 26
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    const-string v7, "gif"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->h:Lcom/tangxiaolv/telegramgallery/TL/m;

    instance-of v5, v5, Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v5, :cond_e

    .line 27
    :cond_d
    iput-boolean v3, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->f:Z

    :cond_e
    if-nez v6, :cond_12

    .line 28
    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->i:Z

    if-nez v5, :cond_11

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->j:I

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    if-eqz v5, :cond_f

    goto :goto_6

    .line 29
    :cond_f
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->h:Lcom/tangxiaolv/telegramgallery/TL/m;

    instance-of v5, v5, Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v5, :cond_10

    .line 30
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v5

    const/4 v7, 0x3

    .line 31
    invoke-virtual {v5, v7}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v5

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7

    .line 32
    :cond_10
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v5

    .line 33
    invoke-virtual {v5, v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v5

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7

    .line 34
    :cond_11
    :goto_6
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v5

    .line 35
    invoke-virtual {v5, v4}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v5

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    :cond_12
    :goto_7
    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->a:I

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    .line 37
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->c:Ljava/lang/String;

    iput-object v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    .line 38
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->k:Ljava/lang/String;

    iput-object v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    .line 39
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    iput-object v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    .line 40
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->l:Ljava/lang/String;

    iput-object v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->d:Ljava/lang/String;

    .line 41
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->e:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a(Lcom/tangxiaolv/telegramgallery/k;)V

    if-nez v0, :cond_19

    .line 42
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_9

    .line 43
    :cond_14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->h:Lcom/tangxiaolv/telegramgallery/TL/m;

    iput-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->e:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 45
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->f:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 47
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->h:Lcom/tangxiaolv/telegramgallery/TL/m;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v1, :cond_17

    .line 48
    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 49
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v1

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->l:Ljava/lang/String;

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->j:I

    if-eqz v5, :cond_15

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    if-nez v6, :cond_15

    iget-boolean v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->i:Z

    if-eqz v6, :cond_16

    :cond_15
    const/4 v2, 0x1

    :cond_16
    invoke-virtual {v1, v0, v4, v5, v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->K(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 50
    :cond_17
    instance-of v0, v0, Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v0, :cond_1b

    .line 51
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->h:Lcom/tangxiaolv/telegramgallery/TL/m;

    check-cast v1, Lcom/tangxiaolv/telegramgallery/TL/b;

    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->i:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->J(Lcom/tangxiaolv/telegramgallery/TL/b;ZZ)V

    goto :goto_a

    .line 52
    :cond_18
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v4}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_temp.jpg"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->h:Ljava/io/File;

    .line 56
    iput-object v6, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    .line 57
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->j:I

    invoke-direct {v0, v2, v1, v3}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$j;I)V

    iput-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    .line 58
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->l(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 59
    :cond_19
    :goto_9
    iput-object v6, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    .line 60
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {v0, v2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$j;)V

    iput-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    .line 61
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->o(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->a:I

    if-eqz v0, :cond_1a

    .line 63
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->j(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object v0

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 64
    :cond_1a
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$f;->m:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->k(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object v0

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->l:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_a
    return-void
.end method
