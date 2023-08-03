.class public Lcom/github/magiepooh/recycleritemdecoration/b;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HorizontalItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/magiepooh/recycleritemdecoration/b$a;
    }
.end annotation


# static fields
.field private static final d:[I


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/github/magiepooh/recycleritemdecoration/b;->d:[I

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->a:Ljava/util/HashMap;

    .line 3
    iput-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p3, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcom/github/magiepooh/recycleritemdecoration/b;->d:[I

    return-object v0
.end method

.method private b(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p4

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/github/magiepooh/recycleritemdecoration/b;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 10
    :cond_4
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/github/magiepooh/recycleritemdecoration/b;->b(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 11
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    if-eqz p4, :cond_5

    .line 12
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v1

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-gt v3, v4, :cond_7

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v5

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8
    invoke-direct {p0, v4, p2}, Lcom/github/magiepooh/recycleritemdecoration/b;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    .line 11
    iget-object v1, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, p2, v1

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result p2

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p2

    .line 13
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p2, v1

    .line 14
    :goto_1
    iget-object v2, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    .line 16
    :cond_2
    iget-object v7, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->a:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    .line 18
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v7, v8

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    .line 20
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v8

    .line 21
    :goto_2
    invoke-virtual {v5, v8, p3, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_4
    invoke-direct {p0, v4, p2}, Lcom/github/magiepooh/recycleritemdecoration/b;->b(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    iget-object v5, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 26
    iget-object v5, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_3

    .line 27
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v4, v5

    .line 28
    iget-object v4, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v5, v4

    .line 29
    :goto_3
    iget-object v6, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, p3, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    iget-object v4, p0, Lcom/github/magiepooh/recycleritemdecoration/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
