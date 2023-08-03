.class Lcom/tangxiaolv/telegramgallery/Utils/d$d;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/d;->t(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/TL/d;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/d;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->b:Lcom/tangxiaolv/telegramgallery/TL/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->a(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->b:Lcom/tangxiaolv/telegramgallery/TL/d;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->k(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/c;

    .line 6
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->i(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/c;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->j(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    .line 10
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->p()V

    goto :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->n(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/c;

    .line 14
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->l(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/c;

    if-eqz v0, :cond_3

    .line 17
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->m(Lcom/tangxiaolv/telegramgallery/Utils/d;)I

    .line 18
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->p()V

    :cond_3
    :goto_2
    return-void
.end method
