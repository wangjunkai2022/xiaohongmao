.class Lcom/tangxiaolv/telegramgallery/Utils/d$a;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/d;->p(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/TL/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/TL/b;

.field final synthetic d:Lcom/tangxiaolv/telegramgallery/Utils/d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/d;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/d;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->c:Lcom/tangxiaolv/telegramgallery/TL/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->w(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->c:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->v(Lcom/tangxiaolv/telegramgallery/TL/m;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->a(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/c;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 9
    :goto_1
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->i()V

    :cond_4
    return-void
.end method
