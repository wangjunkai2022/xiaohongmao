.class public abstract Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;
.super Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0xa7a7a8

.field public static final DEFAULT_TEXT_SIZE:I = 0x12

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private padding:I

.field private textColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelAdapter;-><init>()V

    const v0, -0xa7a7a8

    .line 4
    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textColor:I

    const/16 v0, 0x12

    .line 5
    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textSize:I

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->padding:I

    .line 7
    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 8
    iput p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    .line 9
    iput p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    const-string p2, "layout_inflater"

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/widget/TextView;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "AbstractWheelAdapter"

    const-string v0, "You must supply a resource ID for a TextView"

    .line 4
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 3
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->padding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4
    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, p1, p2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    :cond_0
    iget p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 3
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_1
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_3

    .line 1
    invoke-interface {p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-nez p2, :cond_0

    .line 2
    iget p2, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    iget p3, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 5
    :cond_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0, p3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_2
    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemResource()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->padding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method public setEmptyItemResource(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->padding:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->textSize:I

    return-void
.end method
