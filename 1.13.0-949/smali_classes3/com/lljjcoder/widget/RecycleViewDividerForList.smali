.class public Lcom/lljjcoder/widget/RecycleViewDividerForList;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecycleViewDividerForList.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mLastLineShow:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDividerHeight:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mLastLineShow:Z

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u53c2\u6570\uff01"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput p2, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mOrientation:I

    .line 6
    sget-object p2, Lcom/lljjcoder/widget/RecycleViewDividerForList;->ATTRS:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/lljjcoder/widget/RecycleViewDividerForList;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDividerHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/lljjcoder/widget/RecycleViewDividerForList;-><init>(Landroid/content/Context;I)V

    .line 22
    iput p3, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDividerHeight:I

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object p1, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDividerHeight:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mLastLineShow:Z

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u53c2\u6570\uff01"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iput p2, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mOrientation:I

    .line 14
    iput-boolean p3, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mLastLineShow:Z

    .line 15
    sget-object p2, Lcom/lljjcoder/widget/RecycleViewDividerForList;->ATTRS:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-boolean v4, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mLastLineShow:Z

    xor-int/lit8 v4, v4, 0x1

    sub-int v4, v2, v4

    if-ge v3, v4, :cond_2

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 8
    iget v5, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDividerHeight:I

    add-int/2addr v5, v4

    .line 9
    iget-object v6, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v6, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v6, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    :cond_0
    iget-object v12, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_1

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    int-to-float v11, v5

    move-object v7, p1

    .line 13
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 7
    iget v5, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDividerHeight:I

    add-int/2addr v5, v4

    .line 8
    iget-object v6, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v6, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v6, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_0
    iget-object v12, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_1

    int-to-float v8, v4

    int-to-float v9, v0

    int-to-float v10, v5

    int-to-float v11, v1

    move-object v7, p1

    .line 12
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget p2, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mDividerHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget p3, p0, Lcom/lljjcoder/widget/RecycleViewDividerForList;->mOrientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/lljjcoder/widget/RecycleViewDividerForList;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lljjcoder/widget/RecycleViewDividerForList;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method
