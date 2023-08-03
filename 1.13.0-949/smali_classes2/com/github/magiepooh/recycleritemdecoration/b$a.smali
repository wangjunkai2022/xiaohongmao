.class public Lcom/github/magiepooh/recycleritemdecoration/b$a;
.super Ljava/lang/Object;
.source "HorizontalItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/magiepooh/recycleritemdecoration/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->b:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/github/magiepooh/recycleritemdecoration/b;
    .locals 4

    new-instance v0, Lcom/github/magiepooh/recycleritemdecoration/b;

    iget-object v1, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/magiepooh/recycleritemdecoration/b;-><init>(Ljava/util/HashMap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public b(I)Lcom/github/magiepooh/recycleritemdecoration/b$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/magiepooh/recycleritemdecoration/b$a;->c(Landroid/graphics/drawable/Drawable;)Lcom/github/magiepooh/recycleritemdecoration/b$a;

    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/github/magiepooh/recycleritemdecoration/b$a;
    .locals 0

    iput-object p1, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public d(I)Lcom/github/magiepooh/recycleritemdecoration/b$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/magiepooh/recycleritemdecoration/b$a;->e(Landroid/graphics/drawable/Drawable;)Lcom/github/magiepooh/recycleritemdecoration/b$a;

    return-object p0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lcom/github/magiepooh/recycleritemdecoration/b$a;
    .locals 0

    iput-object p1, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public f(I)Lcom/github/magiepooh/recycleritemdecoration/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/github/magiepooh/recycleritemdecoration/b;->a()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/github/magiepooh/recycleritemdecoration/b$a;->h(ILandroid/graphics/drawable/Drawable;)Lcom/github/magiepooh/recycleritemdecoration/b$a;

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method

.method public g(II)Lcom/github/magiepooh/recycleritemdecoration/b$a;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public h(ILandroid/graphics/drawable/Drawable;)Lcom/github/magiepooh/recycleritemdecoration/b$a;
    .locals 1

    iget-object v0, p0, Lcom/github/magiepooh/recycleritemdecoration/b$a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
