.class Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Utils/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/d$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/d$c;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tangxiaolv/telegramgallery/Utils/c;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->c:Lcom/tangxiaolv/telegramgallery/TL/b;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->e(Lcom/tangxiaolv/telegramgallery/Utils/d;Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->d(Lcom/tangxiaolv/telegramgallery/Utils/d;)Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->d(Lcom/tangxiaolv/telegramgallery/Utils/d;)Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/tangxiaolv/telegramgallery/Utils/d$f;->c(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/tangxiaolv/telegramgallery/Utils/c;Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->d(Lcom/tangxiaolv/telegramgallery/Utils/d;)Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->d(Lcom/tangxiaolv/telegramgallery/Utils/d;)Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->b:I

    invoke-interface {p1, v0, p2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d$f;->a(Ljava/lang/String;Ljava/io/File;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object p2, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->c:Lcom/tangxiaolv/telegramgallery/TL/b;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->a:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->a:Ljava/lang/String;

    invoke-static {p2, v0, p1, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->e(Lcom/tangxiaolv/telegramgallery/Utils/d;Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/tangxiaolv/telegramgallery/Utils/c;F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->d(Lcom/tangxiaolv/telegramgallery/Utils/d;)Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/d$c;->g:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->d(Lcom/tangxiaolv/telegramgallery/Utils/d;)Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$c$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/tangxiaolv/telegramgallery/Utils/d$f;->b(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method
