.class Lcom/tangxiaolv/telegramgallery/Utils/c$g;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/c;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->e(Lcom/tangxiaolv/telegramgallery/Utils/c;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->e(Lcom/tangxiaolv/telegramgallery/Utils/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/c;->f(Lcom/tangxiaolv/telegramgallery/Utils/c;I)I

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->g(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->h(Lcom/tangxiaolv/telegramgallery/Utils/c;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/c;->h(Lcom/tangxiaolv/telegramgallery/Utils/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/c;->h(Lcom/tangxiaolv/telegramgallery/Utils/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/c$j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->a(Lcom/tangxiaolv/telegramgallery/Utils/c;)Lcom/tangxiaolv/telegramgallery/Utils/c$i;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$g;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/c$i;->a(Lcom/tangxiaolv/telegramgallery/Utils/c;I)V

    :cond_2
    :goto_1
    return-void
.end method
