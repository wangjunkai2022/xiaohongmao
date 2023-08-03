.class public final Lcom/im/freechat/utils/AudioView;
.super Landroid/view/View;
.source "AudioView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioView.kt\ncom/im/freechat/utils/AudioView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1851#2,2:90\n37#3:86\n36#3,3:87\n*S KotlinDebug\n*F\n+ 1 AudioView.kt\ncom/im/freechat/utils/AudioView\n*L\n49#1:82\n49#1:83,3\n64#1:90,2\n55#1:86\n55#1:87,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010*\u001a\u00020)\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010+\u0012\u0008\u0008\u0002\u0010-\u001a\u00020\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007J\u0012\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016R.\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u00060"
    }
    d2 = {
        "Lcom/im/freechat/utils/AudioView;",
        "Landroid/view/View;",
        "",
        "t",
        "duration",
        "",
        "a",
        "",
        "pos",
        "setCurPos",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "Lkotlin/Function1;",
        "Lkotlin/jvm/functions/Function1;",
        "getOnSeek",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSeek",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onSeek",
        "",
        "b",
        "[Ljava/lang/Integer;",
        "getArray",
        "()[Ljava/lang/Integer;",
        "setArray",
        "([Ljava/lang/Integer;)V",
        "array",
        "Landroid/graphics/Paint;",
        "c",
        "Landroid/graphics/Paint;",
        "paint",
        "d",
        "F",
        "curPercent",
        "e",
        "I",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:[Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Landroid/graphics/Paint;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/utils/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/utils/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p1, Lcom/im/freechat/utils/AudioView$a;->a:Lcom/im/freechat/utils/AudioView$a;

    iput-object p1, p0, Lcom/im/freechat/utils/AudioView;->a:Lkotlin/jvm/functions/Function1;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 p2, -0x1000000

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iput-object p1, p0, Lcom/im/freechat/utils/AudioView;->c:Landroid/graphics/Paint;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 7
    iput p1, p0, Lcom/im/freechat/utils/AudioView;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/utils/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2
    invoke-static {p1}, Lkotlin/random/RandomKt;->Random(I)Lkotlin/random/Random;

    move-result-object p1

    .line 3
    iput p2, p0, Lcom/im/freechat/utils/AudioView;->e:I

    .line 4
    new-instance p2, Lkotlin/ranges/IntRange;

    invoke-static {}, Lcom/im/freechat/utils/a;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p2, v1, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 7
    invoke-virtual {p1, v2}, Lkotlin/random/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v1

    sub-int v5, v4, v3

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    add-int/lit8 v4, v3, 0x2

    :cond_0
    sub-int v5, v4, v3

    const/4 v6, -0x2

    if-ge v5, v6, :cond_1

    add-int/lit8 v3, v3, -0x2

    goto :goto_1

    :cond_1
    move v3, v4

    .line 8
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Integer;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Integer;

    .line 10
    iput-object p1, p0, Lcom/im/freechat/utils/AudioView;->b:[Ljava/lang/Integer;

    return-void
.end method

.method public final getArray()[Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/AudioView;->b:[Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOnSeek()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/AudioView;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-static {}, Lcom/im/freechat/utils/a;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 3
    iget-object v3, p0, Lcom/im/freechat/utils/AudioView;->c:Landroid/graphics/Paint;

    int-to-float v4, v1

    iget v5, p0, Lcom/im/freechat/utils/AudioView;->d:F

    invoke-static {}, Lcom/im/freechat/utils/a;->a()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    const/16 v5, 0x96

    goto :goto_1

    :cond_1
    const/16 v5, 0x32

    :goto_1
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object v3, p0, Lcom/im/freechat/utils/AudioView;->b:[Ljava/lang/Integer;

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lcom/im/freechat/utils/a;->c(I)F

    move-result v3

    mul-float v1, v1, v3

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/im/freechat/utils/a;->c(I)F

    move-result v1

    :goto_2
    if-eqz p1, :cond_0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 5
    invoke-static {v3}, Lcom/im/freechat/utils/a;->b(F)F

    move-result v3

    invoke-static {v5}, Lcom/im/freechat/utils/a;->c(I)F

    move-result v6

    mul-float v6, v6, v4

    add-float v8, v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/im/freechat/utils/a;->b(F)F

    move-result v3

    invoke-static {v5}, Lcom/im/freechat/utils/a;->c(I)F

    move-result v5

    mul-float v4, v4, v5

    add-float v10, v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v11, v3, v1

    iget-object v12, p0, Lcom/im/freechat/utils/AudioView;->c:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/im/freechat/utils/AudioView;->a:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Lcom/im/freechat/utils/AudioView;->e:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setArray([Ljava/lang/Integer;)V
    .locals 0
    .param p1    # [Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/utils/AudioView;->b:[Ljava/lang/Integer;

    return-void
.end method

.method public final setCurPos(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/im/freechat/utils/AudioView;->d:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOnSeek(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/utils/AudioView;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method
