.class public Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0x0

.field private static final PADDING:I = 0x5


# instance fields
.field private SHADOWS_COLORS:[I

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private drawShadows:Z

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private lineColorStr:Ljava/lang/String;

.field private lineWidth:I

.field private recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

.field private scroller:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

.field scrollingListener:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

.field private visibleItems:I

.field private wheelBackground:I

.field private wheelForeground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 38
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->SHADOWS_COLORS:[I

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    const/4 v2, 0x5

    .line 40
    iput v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    .line 41
    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemHeight:I

    .line 42
    sget v2, Lcom/lljjcoder/style/citypickerview/R$drawable;->wheel_bg:I

    iput v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelBackground:I

    .line 43
    sget v2, Lcom/lljjcoder/style/citypickerview/R$drawable;->wheel_val:I

    iput v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelForeground:I

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawShadows:Z

    .line 45
    iput-boolean v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    .line 46
    new-instance v1, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    .line 47
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 48
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->clickingListeners:Ljava/util/List;

    const-string v1, "#C7C7C7"

    .line 50
    iput-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineColorStr:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineWidth:I

    .line 52
    new-instance v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$1;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListener:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller$ScrollingListener;

    .line 53
    new-instance v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$2;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 54
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->initData(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        -0x10060607
        -0x30060607
        0x3ff9f9f9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    new-array v0, p2, [I

    .line 20
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->SHADOWS_COLORS:[I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    const/4 v1, 0x5

    .line 22
    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    .line 23
    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemHeight:I

    .line 24
    sget v1, Lcom/lljjcoder/style/citypickerview/R$drawable;->wheel_bg:I

    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelBackground:I

    .line 25
    sget v1, Lcom/lljjcoder/style/citypickerview/R$drawable;->wheel_val:I

    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelForeground:I

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawShadows:Z

    .line 27
    iput-boolean v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    .line 28
    new-instance v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->clickingListeners:Ljava/util/List;

    const-string v0, "#C7C7C7"

    .line 32
    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineColorStr:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineWidth:I

    .line 34
    new-instance p2, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$1;

    invoke-direct {p2, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$1;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListener:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller$ScrollingListener;

    .line 35
    new-instance p2, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$2;

    invoke-direct {p2, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$2;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 36
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->initData(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        -0x10060607
        -0x30060607
        0x3ff9f9f9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p3, p2, [I

    .line 2
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->SHADOWS_COLORS:[I

    const/4 p3, 0x0

    .line 3
    iput p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    .line 5
    iput p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemHeight:I

    .line 6
    sget v0, Lcom/lljjcoder/style/citypickerview/R$drawable;->wheel_bg:I

    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelBackground:I

    .line 7
    sget v0, Lcom/lljjcoder/style/citypickerview/R$drawable;->wheel_val:I

    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelForeground:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawShadows:Z

    .line 9
    iput-boolean p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    .line 10
    new-instance p3, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    invoke-direct {p3, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    .line 11
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 12
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 13
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->clickingListeners:Ljava/util/List;

    const-string p3, "#C7C7C7"

    .line 14
    iput-object p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineColorStr:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineWidth:I

    .line 16
    new-instance p2, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$1;

    invoke-direct {p2, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$1;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListener:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller$ScrollingListener;

    .line 17
    new-instance p2, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$2;

    invoke-direct {p2, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView$2;-><init>(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    iput-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 18
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->initData(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        -0x10060607
        -0x30060607
        0x3ff9f9f9
    .end array-data
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$202(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;I)I
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scroller:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

    return-object p0
.end method

.method private addViewItem(IZ)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private buildViewForMeasuring()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    iget v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    new-instance v3, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;

    invoke-direct {v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->createItemsLayout()V

    .line 4
    :goto_0
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    .line 5
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->initResourcesIfNecessary()V

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 6
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, -0xa

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    return p1
.end method

.method private createItemsLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    .line 2
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result p1

    .line 3
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    div-int/2addr v0, p1

    .line 4
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    sub-int/2addr v1, v0

    .line 5
    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 6
    iget v3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    rem-int/2addr v3, p1

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    const/4 v3, 0x0

    .line 8
    :cond_0
    iget-boolean v4, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    if-gez v1, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    .line 9
    :cond_3
    rem-int/2addr v1, v2

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    .line 10
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-lt v1, v2, :cond_6

    .line 11
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 12
    :cond_8
    :goto_1
    iget v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    .line 13
    iget v3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    if-eq v1, v3, :cond_9

    .line 14
    invoke-virtual {p0, v1, v6}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(IZ)V

    goto :goto_2

    .line 15
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    mul-int v0, v0, p1

    sub-int/2addr v2, v0

    .line 16
    iput v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le v2, p1, :cond_a

    .line 18
    iget p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    :cond_a
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 3
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getLineColorStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getLineColorStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getLineColorStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getLineWidth()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getLineWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    .line 9
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    const/4 v3, 0x0

    sub-int v2, v0, v1

    int-to-float v6, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-object v2, p1

    move v4, v6

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 3
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getVisibleItems()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getVisibleItems()I

    move-result v0

    div-int/2addr v0, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 4
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 5
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 7
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemHeight:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemHeight:I

    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    mul-int v1, v1, p1

    mul-int/lit8 p1, p1, 0x0

    div-int/lit8 p1, p1, 0x32

    sub-int/2addr v1, p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemHeight:I

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 3
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 5
    :cond_2
    rem-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    invoke-virtual {v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemsRange()Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v2

    mul-int v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4
    :cond_1
    iget v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-double v3, v1

    int-to-double v1, v2

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-int v1, v3

    .line 7
    :cond_3
    new-instance v2, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;

    invoke-direct {v2, v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;-><init>(II)V

    return-object v2
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2

    new-instance p1, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListener:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller$ScrollingListener;

    invoke-direct {p1, v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;-><init>(Landroid/content/Context;Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller$ScrollingListener;)V

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scroller:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    :cond_2
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    .line 2
    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layout(II)V
    .locals 2

    add-int/lit8 p1, p1, -0xa

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemsRange()Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v4, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    iget v5, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    invoke-virtual {v4, v1, v5, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;)I

    move-result v1

    .line 4
    iget v4, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    if-eq v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 5
    :goto_0
    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->createItemsLayout()V

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    .line 7
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;->getFirst()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;->getCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 8
    :cond_4
    :goto_3
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;->getFirst()I

    move-result v5

    if-le v1, v5, :cond_6

    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;->getLast()I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 9
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    sub-int/2addr v1, v3

    :goto_4
    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;->getFirst()I

    move-result v5

    if-lt v1, v5, :cond_7

    .line 10
    invoke-direct {p0, v1, v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 11
    :cond_5
    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    .line 13
    :cond_7
    :goto_5
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    .line 14
    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_6
    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 15
    iget v5, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 16
    :cond_9
    iput v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    return v4
.end method

.method private updateView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->calculateLayoutWidth(II)I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->layout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelClickedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawShadows()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawShadows:Z

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    return v0
.end method

.method public getLineColorStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineColorStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineWidth:I

    return v0
.end method

.method public getViewAdapter()Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;->clearAll()V

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->recycle:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;

    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->firstItem:I

    new-instance v2, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;

    invoke-direct {v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lljjcoder/style/citypickerview/widget/wheel/ItemsRange;)I

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isCyclic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;

    .line 2
    invoke-interface {v1, p0, p1, p2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;->onChanged(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelClickedListener;

    .line 2
    invoke-interface {v1, p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelClickedListener;->onItemClicked(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelScrollListener;

    .line 2
    invoke-interface {v1, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelScrollListener;->onScrollingFinished(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelScrollListener;

    .line 2
    invoke-interface {v1, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelScrollListener;->onScrollingStarted(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->updateView()V

    .line 4
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawShadows:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p0, p4, p5}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->buildViewForMeasuring()V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 8
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getViewAdapter()Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 10
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->notifyClickListenersAboutClick(I)V

    .line 12
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scroller:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public removeChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelClickedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getItemHeight()I

    move-result v0

    mul-int p1, p1, v0

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    sub-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scroller:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    if-eqz v1, :cond_7

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 4
    :cond_2
    rem-int/2addr p1, v0

    .line 5
    :cond_3
    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    if-eq p1, v1, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    sub-int p2, p1, v1

    .line 6
    iget-boolean v3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    if-eqz v3, :cond_5

    .line 7
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scroll(II)V

    goto :goto_2

    .line 10
    :cond_6
    iput v2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scrollingOffset:I

    .line 11
    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->currentItem:I

    .line 12
    invoke-virtual {p0, v1, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->notifyChangingListeners(II)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->isCyclic:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setDrawShadows(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->drawShadows:Z

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scroller:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setLineColorStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineColorStr:Ljava/lang/String;

    return-void
.end method

.method public setLineWidth(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->lineWidth:I

    return-void
.end method

.method public setShadowColor(III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->SHADOWS_COLORS:[I

    return-void
.end method

.method public setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->viewAdapter:Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->visibleItems:I

    return-void
.end method

.method public setWheelBackground(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelBackground:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setWheelForeground(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelForeground:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->wheelForeground:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->scroller:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelScroller;->stopScrolling()V

    return-void
.end method
