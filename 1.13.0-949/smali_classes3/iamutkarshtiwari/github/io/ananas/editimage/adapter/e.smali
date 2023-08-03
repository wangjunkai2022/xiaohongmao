.class public Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

.field private b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$a;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->c:Ljava/util/List;

    .line 4
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    return-void
.end method

.method static synthetic d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lg7/d;

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5
    iget-object v1, p1, Lg7/d;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p1, Lg7/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p1, Lg7/d;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lf7/b$l;->i2:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lg7/d;

    invoke-direct {p2, p1}, Lg7/d;-><init>(Landroid/view/View;)V

    return-object p2
.end method
