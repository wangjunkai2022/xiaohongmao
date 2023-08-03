.class Lcom/tangxiaolv/telegramgallery/Utils/d$c;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/d;->I(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/TL/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/TL/b;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lcom/tangxiaolv/telegramgallery/Utils/d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/d;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/b;ZIZ)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->c:Lcom/tangxiaolv/telegramgallery/TL/b;

    iput-boolean p5, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->d:Z

    iput p6, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->e:I

    iput-boolean p7, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->w(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->c:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->v(Lcom/tangxiaolv/telegramgallery/TL/m;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_12

    const-string v1, "-2147483648"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->a(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 7
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->d:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/c;->n(Z)V

    :cond_4
    return-void

    .line 15
    :cond_5
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v4

    .line 16
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v6, :cond_6

    .line 17
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c;

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->b:Ljava/lang/String;

    iget v7, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->e:I

    invoke-direct {v1, v6, v5, v7}, Lcom/tangxiaolv/telegramgallery/Utils/c;-><init>(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;I)V

    const/4 v5, 0x0

    goto :goto_2

    .line 18
    :cond_6
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->c:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v6, :cond_7

    .line 19
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-direct {v1, v6}, Lcom/tangxiaolv/telegramgallery/Utils/c;-><init>(Lcom/tangxiaolv/telegramgallery/TL/b;)V

    .line 20
    :cond_7
    :goto_2
    iget-boolean v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->f:Z

    if-nez v6, :cond_8

    .line 21
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-virtual {v6, v5}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v4

    .line 22
    :goto_3
    invoke-virtual {v1, v6, v4}, Lcom/tangxiaolv/telegramgallery/Utils/c;->o(Ljava/io/File;Ljava/io/File;)V

    .line 23
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/d;->a(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v4, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;

    invoke-direct {v4, p0, v0, v5}, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/d$c;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/tangxiaolv/telegramgallery/Utils/c;->m(Lcom/tangxiaolv/telegramgallery/Utils/c$i;)V

    .line 25
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->d:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    :goto_4
    if-ne v5, v2, :cond_c

    .line 26
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->f(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    move-result v2

    if-ge v2, v0, :cond_a

    .line 27
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->g(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    .line 28
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Utils/c;->p()V

    goto/16 :goto_5

    .line 29
    :cond_a
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->d:Z

    if-eqz v0, :cond_b

    .line 30
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->h(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->h(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 32
    :cond_c
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v2, :cond_f

    .line 33
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->i(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    move-result v2

    if-ge v2, v0, :cond_d

    .line 34
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->j(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    .line 35
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Utils/c;->p()V

    goto :goto_5

    .line 36
    :cond_d
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->d:Z

    if-eqz v0, :cond_e

    .line 37
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 38
    :cond_e
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 39
    :cond_f
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->l(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    move-result v2

    if-ge v2, v0, :cond_10

    .line 40
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->m(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    .line 41
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Utils/c;->p()V

    goto :goto_5

    .line 42
    :cond_10
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->d:Z

    if-eqz v0, :cond_11

    .line 43
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 44
    :cond_11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_5
    return-void
.end method
