.class public Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;,
        Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->a:Landroid/view/LayoutInflater;

    .line 3
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;)Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->c:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;

    return-object p0
.end method

.method static synthetic e(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->b:Ljava/util/List;

    return-object p0
.end method

.method private f(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-gt v2, v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kelly_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public g(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;I)V
    .locals 1
    .param p1    # Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;->a:Landroid/view/View;

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->a:Landroid/view/LayoutInflater;

    sget v0, Lf7/b$l;->F:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;

    invoke-direct {p2, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;Landroid/view/View;)V

    return-object p2
.end method

.method public i(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->c:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lm8/g;
        .end annotation
    .end param

    check-cast p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;

    invoke-virtual {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->g(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->h(Landroid/view/ViewGroup;I)Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;

    move-result-object p1

    return-object p1
.end method
