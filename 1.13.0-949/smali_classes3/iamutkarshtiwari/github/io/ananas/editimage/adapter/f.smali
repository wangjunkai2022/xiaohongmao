.class public Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StickerTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;,
        Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;
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
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:[I

.field private d:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

.field private e:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;


# direct methods
.method public constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$a;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->e:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;

    .line 3
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->d:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lf7/b$c;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->a:[Ljava/lang/String;

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->d:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lf7/b$c;->f:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->b:[Ljava/lang/String;

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->d:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lf7/b$c;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->c:[I

    return-void
.end method

.method static synthetic d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->d:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->b:[Ljava/lang/String;

    array-length v0, v0

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
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    check-cast p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->b:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 3
    iget-object v1, p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;->b:Landroid/widget/TextView;

    sget v1, Lf7/b$i;->K3:I

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->a:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;->b:Landroid/widget/TextView;

    sget v1, Lf7/b$i;->J3:I

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->c:[I

    aget p2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 6
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;->b:Landroid/widget/TextView;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->e:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lf7/b$l;->j2:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;

    invoke-direct {p2, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;Landroid/view/View;)V

    return-object p2
.end method
