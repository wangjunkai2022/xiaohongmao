.class public final Lcom/qennnsad/aknkaksd/util/dialog/a$c;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/dialog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->g:I

    const/16 v0, 0x11

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->h:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->i:I

    .line 5
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->b:I

    return p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->c:I

    return p0
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->h:I

    return p0
.end method

.method static synthetic h(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->i:I

    return p0
.end method


# virtual methods
.method public A(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->c:I

    return-object p0
.end method

.method public B(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->c:I

    return-object p0
.end method

.method public i(ILandroid/widget/AdapterView$OnItemSelectedListener;)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p0
.end method

.method public j(ILandroid/view/View$OnLongClickListener;)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public k(ILandroid/view/View$OnClickListener;)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public l()Lcom/qennnsad/aknkaksd/util/dialog/a;
    .locals 3

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->g:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/dialog/a;

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->g:I

    invoke-direct {v0, p0, v2, v1}, Lcom/qennnsad/aknkaksd/util/dialog/a;-><init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;ILcom/qennnsad/aknkaksd/util/dialog/a$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/util/dialog/a;

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/util/dialog/a;-><init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;Lcom/qennnsad/aknkaksd/util/dialog/a$a;)V

    return-object v0
.end method

.method public m(Z)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->d:Z

    return-object p0
.end method

.method public n(Z)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->e:Z

    return-object p0
.end method

.method public o(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->b:I

    return-object p0
.end method

.method public p(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->b:I

    return-object p0
.end method

.method public q(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->b:I

    return-object p0
.end method

.method public r(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->h:I

    return-object p0
.end method

.method public s(ILandroid/graphics/Bitmap;)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public t(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->i:I

    return-object p0
.end method

.method public u(ILjava/lang/String;)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public v(II)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public w(ILjava/lang/String;Landroid/content/Context;)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-object p0
.end method

.method public x(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->g:I

    return-object p0
.end method

.method public y(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f:Landroid/view/View;

    return-object p0
.end method

.method public z(I)Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->c:I

    return-object p0
.end method
