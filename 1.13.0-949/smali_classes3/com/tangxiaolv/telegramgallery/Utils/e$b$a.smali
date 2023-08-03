.class Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a(Ljava/lang/String;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/tangxiaolv/telegramgallery/Utils/e$b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$b;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->b:Ljava/lang/String;

    iput p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/g;->n()Lcom/tangxiaolv/telegramgallery/Utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->r(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->b:Ljava/lang/String;

    const-string v1, ".mp4"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->b:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->r(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->b(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->B:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->d:Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->a:Ljava/io/File;

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$a;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->n(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method
