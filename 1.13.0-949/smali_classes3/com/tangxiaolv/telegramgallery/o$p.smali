.class Lcom/tangxiaolv/telegramgallery/o$p;
.super Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->Z0(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->k(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/TL/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->k(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/TL/d;

    move-result-object v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/o;->l(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public b(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-virtual {p1, v2, v0}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->l0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->k0(Lcom/tangxiaolv/telegramgallery/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->R(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    if-ne p1, v2, :cond_5

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    instance-of p1, p1, Lcom/tangxiaolv/telegramgallery/o$d0;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/o$d0;

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->f(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Components/b;->c()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/o$d0;->p(IZ)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/o;->f(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Components/b;->c()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/tangxiaolv/telegramgallery/Components/b;->d(IZZ)V

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->i(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/o$y;->d()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/tangxiaolv/telegramgallery/Components/h;->a(IZ)V

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/o;->f(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v3

    invoke-interface {p1, v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->f(I)V

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/o$b0;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object p1

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/o;->f(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v3

    invoke-interface {p1, v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->n(I)I

    move-result p1

    if-ne v1, p1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Components/b;->c()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    sget-object v1, Lcom/tangxiaolv/telegramgallery/m;->G:Ljava/lang/String;

    .line 14
    sget-object v3, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    sget v4, Lcom/tangxiaolv/telegramgallery/q$o;->i:I

    .line 15
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    sget v5, Lcom/tangxiaolv/telegramgallery/m;->F:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 16
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    sget-object v0, Lcom/tangxiaolv/telegramgallery/m;->G:Ljava/lang/String;

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->J(Ljava/lang/String;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    .line 21
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/o;->d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;

    move-result-object v1

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/o;->f(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->a(I)Z

    move-result v1

    .line 22
    invoke-virtual {v0, p1, v1, v2}, Lcom/tangxiaolv/telegramgallery/Components/b;->d(IZZ)V

    .line 23
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$p;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->j(Lcom/tangxiaolv/telegramgallery/o;)V

    :cond_5
    :goto_1
    return-void
.end method
