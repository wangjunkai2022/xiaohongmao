.class public Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:I = 0x1


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->c:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    .line 3
    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->d:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lf7/b$c;->d:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->a:[Ljava/lang/String;

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->c:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lf7/b$c;->c:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->b:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->e(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic e(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->c:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {p2, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;->f0(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lg7/b;

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->a:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 3
    iget-object v1, p1, Lg7/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->c:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6
    iget-object v1, p1, Lg7/b;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;->c:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p1, Lg7/b;->a:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p1, Lg7/b;->a:Landroid/widget/ImageView;

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/c;

    invoke-direct {v0, p0, p2}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/d;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    sget v0, Lf7/b$l;->Z:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lg7/b;

    invoke-direct {p2, p1}, Lg7/b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
