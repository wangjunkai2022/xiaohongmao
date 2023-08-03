.class Lcom/hbb20/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CountryCodeAdapter.java"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/e$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/hbb20/e$e;",
        ">;",
        "Lcom/futuremind/recyclerviewfastscroll/b;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/widget/TextView;

.field d:Lcom/hbb20/CountryCodePicker;

.field e:Landroid/view/LayoutInflater;

.field f:Landroid/widget/EditText;

.field g:Landroid/app/Dialog;

.field h:Landroid/content/Context;

.field i:Landroid/widget/RelativeLayout;

.field j:Landroid/widget/ImageView;

.field k:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "countries",
            "codePicker",
            "rlQueryHolder",
            "editText_search",
            "textView_noResult",
            "dialog",
            "imgClearQuery"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;",
            "Lcom/hbb20/CountryCodePicker;",
            "Landroid/widget/RelativeLayout;",
            "Landroid/widget/EditText;",
            "Landroid/widget/TextView;",
            "Landroid/app/Dialog;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/hbb20/e;->k:I

    .line 4
    iput-object p1, p0, Lcom/hbb20/e;->h:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/hbb20/e;->b:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    .line 7
    iput-object p7, p0, Lcom/hbb20/e;->g:Landroid/app/Dialog;

    .line 8
    iput-object p6, p0, Lcom/hbb20/e;->c:Landroid/widget/TextView;

    .line 9
    iput-object p5, p0, Lcom/hbb20/e;->f:Landroid/widget/EditText;

    .line 10
    iput-object p4, p0, Lcom/hbb20/e;->i:Landroid/widget/RelativeLayout;

    .line 11
    iput-object p8, p0, Lcom/hbb20/e;->j:Landroid/widget/ImageView;

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/e;->e:Landroid/view/LayoutInflater;

    const-string p1, ""

    .line 13
    invoke-direct {p0, p1}, Lcom/hbb20/e;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    .line 14
    invoke-direct {p0}, Lcom/hbb20/e;->j()V

    return-void
.end method

.method static synthetic d(Lcom/hbb20/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hbb20/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/e;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/hbb20/e;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/hbb20/e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/hbb20/e;->k:I

    .line 3
    iget-object v1, p0, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/b;

    .line 5
    invoke-virtual {v2, p1}, Lcom/hbb20/b;->z(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget v2, p0, Lcom/hbb20/e;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hbb20/e;->k:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget v1, p0, Lcom/hbb20/e;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hbb20/e;->k:I

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/hbb20/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/b;

    .line 12
    invoke-virtual {v2, p1}, Lcom/hbb20/b;->z(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/hbb20/e;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/hbb20/e$a;

    invoke-direct {v1, p0}, Lcom/hbb20/e$a;-><init>(Lcom/hbb20/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->z()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hbb20/e;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/hbb20/e;->k()V

    .line 4
    invoke-direct {p0}, Lcom/hbb20/e;->i()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hbb20/e;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hbb20/e;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/hbb20/e$b;

    invoke-direct {v1, p0}, Lcom/hbb20/e$b;-><init>(Lcom/hbb20/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/hbb20/e;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/hbb20/e$c;

    invoke-direct {v1, p0}, Lcom/hbb20/e$c;-><init>(Lcom/hbb20/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/b;

    .line 2
    iget v1, p0, Lcom/hbb20/e;->k:I

    if-le v1, p1, :cond_0

    const-string p1, "\u2605"

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/hbb20/b;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "\u263a"

    return-object p1
.end method

.method public g(Lcom/hbb20/e$e;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "countryCodeViewHolder",
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/b;

    invoke-virtual {p1, v0}, Lcom/hbb20/e$e;->c(Lcom/hbb20/b;)V

    .line 2
    iget-object v0, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/hbb20/e$e;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/hbb20/e$d;

    invoke-direct {v0, p0, p2}, Lcom/hbb20/e$d;-><init>(Lcom/hbb20/e;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/e$e;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/hbb20/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/hbb20/e$e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/hbb20/e;->e:Landroid/view/LayoutInflater;

    sget v0, Lcom/hbb20/i$k;->H:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hbb20/e$e;

    invoke-direct {p2, p0, p1}, Lcom/hbb20/e$e;-><init>(Lcom/hbb20/e;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "countryCodeViewHolder",
            "i"
        }
    .end annotation

    check-cast p1, Lcom/hbb20/e$e;

    invoke-virtual {p0, p1, p2}, Lcom/hbb20/e;->g(Lcom/hbb20/e$e;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hbb20/e;->h(Landroid/view/ViewGroup;I)Lcom/hbb20/e$e;

    move-result-object p1

    return-object p1
.end method
