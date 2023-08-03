.class public Liamutkarshtiwari/github/io/ananas/editimage/widget/b;
.super Ljava/lang/Object;
.source "RedoUndoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

.field private e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

.field private f:Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;


# direct methods
.method public constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    .line 3
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b$a;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/b$a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/widget/b;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->f:Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;

    .line 4
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->d:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    .line 5
    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->a:Landroid/view/View;

    .line 6
    sget p1, Lf7/b$i;->T8:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->b:Landroid/view/View;

    .line 7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->a:Landroid/view/View;

    sget p2, Lf7/b$i;->o6:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->c:Landroid/view/View;

    .line 8
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e()V

    .line 11
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->f:Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;

    invoke-virtual {p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->a(Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->f:Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->p(Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->o()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->d:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-virtual {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->n(Landroid/graphics/Bitmap;)Z

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-virtual {p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->n(Landroid/graphics/Bitmap;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected d()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->d:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->b:Landroid/view/View;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->c:Landroid/view/View;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/widget/a;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->d()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->c:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->b()V

    :cond_1
    :goto_0
    return-void
.end method
