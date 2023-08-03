.class public Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    .line 3
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->b:I

    .line 4
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    .line 7
    sget-object v0, Lcom/qennnsad/aknkaksd/g$u;->RE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0xffffff

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->b:I

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->c:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setTextColorUseReflection(I)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCurTextColor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->c:I

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->setTextColorUseReflection(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 6
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->b:I

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->setTextColorUseReflection(I)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/StrokeTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 12
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
