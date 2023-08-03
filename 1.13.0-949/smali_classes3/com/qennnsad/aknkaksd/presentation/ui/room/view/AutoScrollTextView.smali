.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;
.super Landroid/widget/TextView;
.source "AutoScrollTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field public g:Z

.field private h:Landroid/graphics/Paint;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->a:F

    .line 3
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b:F

    .line 4
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    .line 5
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->d:F

    .line 6
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->e:F

    .line 7
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->f:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->h:Landroid/graphics/Paint;

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->i:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->a:F

    .line 14
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b:F

    .line 15
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    .line 16
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->d:F

    .line 17
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->e:F

    .line 18
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->f:F

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->h:Landroid/graphics/Paint;

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->i:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->a:F

    .line 25
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b:F

    .line 26
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    .line 27
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->d:F

    .line 28
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->e:F

    .line 29
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->f:F

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->h:Landroid/graphics/Paint;

    const-string p1, ""

    .line 32
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->i:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b()V

    return-void
.end method

.method private b()V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/WindowManager;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->h:Landroid/graphics/Paint;

    const-string v1, "#FFD700"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->i:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->a:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b:F

    .line 8
    :cond_0
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->a:F

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    .line 9
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->b:F

    add-float v1, v0, p1

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->e:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->f:F

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->d:F

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->d()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c()V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->i:Ljava/lang/String;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->e:F

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->d:F

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    add-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    .line 4
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->f:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 5
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->a:F

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->step:F

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    .line 6
    iget-boolean p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->isStarting:Z

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->c:F

    iput v0, v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->step:F

    .line 4
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;->g:Z

    iput-boolean v0, v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->isStarting:Z

    return-object v1
.end method
