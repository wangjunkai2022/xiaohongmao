.class public Lcom/lljjcoder/style/citylist/sortlistview/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "G"

    const-string v7, "H"

    const-string v8, "I"

    const-string v9, "J"

    const-string v10, "K"

    const-string v11, "L"

    const-string v12, "M"

    const-string v13, "N"

    const-string v14, "O"

    const-string v15, "P"

    const-string v16, "Q"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "V"

    const-string v22, "W"

    const-string v23, "X"

    const-string v24, "Y"

    const-string v25, "Z"

    const-string v26, "#"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->choose:I

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->choose:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->choose:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 3
    iget v1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->choose:I

    .line 4
    iget-object v2, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->onTouchingLetterChangedListener:Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sget-object v3, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    .line 6
    sget v0, Lcom/lljjcoder/style/citypickerview/R$drawable;->sidebar_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eq v1, p1, :cond_3

    if-ltz p1, :cond_3

    .line 7
    sget-object v0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    if-eqz v2, :cond_0

    .line 8
    aget-object v0, v0, p1

    invoke-interface {v2, v0}, Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 10
    sget-object v1, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :cond_1
    iput p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->choose:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->choose:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 4
    sget-object v2, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v0, v2

    const/4 v2, 0x0

    .line 5
    :goto_0
    sget-object v3, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const/16 v4, 0x21

    const/16 v5, 0x41

    const/16 v6, 0x62

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    iget-object v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->choose:I

    if-ne v2, v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const-string v5, "#000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 13
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-int v4, v0, v2

    add-int/2addr v4, v0

    int-to-float v4, v4

    .line 14
    sget-object v5, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 15
    iget-object v3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->onTouchingLetterChangedListener:Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    return-void
.end method
