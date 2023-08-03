.class Lcom/tangxiaolv/telegramgallery/Utils/e$b;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Utils/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->a(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$b;Ljava/io/File;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->a(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->t(Lcom/tangxiaolv/telegramgallery/Utils/e;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->t(Lcom/tangxiaolv/telegramgallery/Utils/e;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v2, v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->u(Lcom/tangxiaolv/telegramgallery/Utils/e;J)J

    .line 5
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$b;Ljava/lang/String;F)V

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->a(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$b;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method
