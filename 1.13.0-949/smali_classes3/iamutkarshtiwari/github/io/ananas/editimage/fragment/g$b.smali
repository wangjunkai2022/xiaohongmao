.class Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;
.super Ljava/lang/Object;
.source "AddTextFragment.java"

# interfaces
.implements Li7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->h0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/widget/ImageView;

.field final synthetic f:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->f:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->c:Landroid/widget/TextView;

    iput-object p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->d:Landroid/view/View;

    iput-object p5, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->e:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->a:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 5
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->f:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->d:Landroid/view/View;

    invoke-static {v2, v3, v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->f0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->b:Landroid/widget/FrameLayout;

    sget v3, Lf7/b$h;->F0:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->b:Landroid/widget/FrameLayout;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->f:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->d:Landroid/view/View;

    invoke-static {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;)V

    .line 6
    iput-boolean v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->a:Z

    goto :goto_1

    .line 7
    :cond_1
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;->a:Z

    :goto_1
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
