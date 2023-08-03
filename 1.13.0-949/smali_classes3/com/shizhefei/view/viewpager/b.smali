.class public Lcom/shizhefei/view/viewpager/b;
.super Ljava/lang/Object;
.source "RecycleBin.java"


# instance fields
.field private a:[Landroid/view/View;

.field private b:[I

.field private c:[Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/View;

    .line 2
    iput-object v1, p0, Lcom/shizhefei/view/viewpager/b;->a:[Landroid/view/View;

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/shizhefei/view/viewpager/b;->b:[I

    return-void
.end method

.method private c()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/viewpager/b;->a:[Landroid/view/View;

    array-length v0, v0

    .line 2
    iget v1, p0, Lcom/shizhefei/view/viewpager/b;->d:I

    .line 3
    iget-object v2, p0, Lcom/shizhefei/view/viewpager/b;->c:[Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 4
    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int v7, v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    add-int/lit8 v9, v6, -0x1

    .line 6
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static d(Landroid/util/SparseArray;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 6
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a(Landroid/view/View;II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shizhefei/view/viewpager/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p3, p0, Lcom/shizhefei/view/viewpager/b;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/viewpager/b;->c:[Landroid/util/SparseArray;

    aget-object p3, v0, p3

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method b(II)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shizhefei/view/viewpager/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shizhefei/view/viewpager/b;->e:Landroid/util/SparseArray;

    invoke-static {p2, p1}, Lcom/shizhefei/view/viewpager/b;->d(Landroid/util/SparseArray;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/viewpager/b;->c:[Landroid/util/SparseArray;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 4
    aget-object p2, v0, p2

    invoke-static {p2, p1}, Lcom/shizhefei/view/viewpager/b;->d(Landroid/util/SparseArray;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method e()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/viewpager/b;->a:[Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/shizhefei/view/viewpager/b;->b:[I

    .line 3
    iget v2, p0, Lcom/shizhefei/view/viewpager/b;->d:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/shizhefei/view/viewpager/b;->e:Landroid/util/SparseArray;

    .line 5
    array-length v5, v0

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_4

    .line 6
    aget-object v3, v0, v5

    if-eqz v3, :cond_3

    .line 7
    aget v6, v1, v5

    const/4 v7, 0x0

    .line 8
    aput-object v7, v0, v5

    const/4 v8, -0x1

    .line 9
    aput v8, v1, v5

    .line 10
    invoke-virtual {p0, v6}, Lcom/shizhefei/view/viewpager/b;->g(I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 11
    iget-object v4, p0, Lcom/shizhefei/view/viewpager/b;->c:[Landroid/util/SparseArray;

    aget-object v4, v4, v6

    .line 12
    :cond_2
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v3, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/shizhefei/view/viewpager/b;->c()V

    return-void
.end method

.method public f(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 1
    new-array v0, p1, [Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/shizhefei/view/viewpager/b;->d:I

    .line 4
    aget-object p1, v0, v1

    iput-object p1, p0, Lcom/shizhefei/view/viewpager/b;->e:Landroid/util/SparseArray;

    .line 5
    iput-object v0, p0, Lcom/shizhefei/view/viewpager/b;->c:[Landroid/util/SparseArray;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have a viewTypeCount < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected g(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
