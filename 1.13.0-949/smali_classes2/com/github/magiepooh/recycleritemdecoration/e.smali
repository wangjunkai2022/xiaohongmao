.class public Lcom/github/magiepooh/recycleritemdecoration/e;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "VerticalItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/magiepooh/recycleritemdecoration/e$a;
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

    sput-object v0, Lcom/github/magiepooh/recycleritemdecoration/e;->d:[I

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
    iput-object p1, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->a:Ljava/util/HashMap;

    .line 3
    iput-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p3, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcom/github/magiepooh/recycleritemdecoration/e;->d:[I

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
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/github/magiepooh/recycleritemdecoration/e;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 2
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result p4

    .line 5
    iget-object v0, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->a:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_2

    .line 6
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/github/magiepooh/recycleritemdecoration/e;->b(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gt v2, v3, :cond_4

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v4

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    invoke-direct {p0, v3, p2}, Lcom/github/magiepooh/recycleritemdecoration/e;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, v1

    .line 10
    iget-object v1, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 11
    iget-object v2, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p3, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object p2, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    .line 13
    :cond_1
    iget-object v6, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    .line 15
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v6

    .line 16
    invoke-virtual {v4, p3, v6, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    :cond_2
    invoke-direct {p0, v3, p2}, Lcom/github/magiepooh/recycleritemdecoration/e;->b(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19
    iget-object v4, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 21
    iget-object v4, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v3, v4

    .line 22
    iget-object v5, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    iget-object v3, p0, Lcom/github/magiepooh/recycleritemdecoration/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
