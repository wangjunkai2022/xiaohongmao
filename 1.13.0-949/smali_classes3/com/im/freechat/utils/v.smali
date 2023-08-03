.class public final Lcom/im/freechat/utils/v;
.super Ljava/lang/Object;
.source "UiUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiUtils.kt\ncom/im/freechat/utils/UiUtilsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,68:1\n13608#2,3:69\n*S KotlinDebug\n*F\n+ 1 UiUtils.kt\ncom/im/freechat/utils/UiUtilsKt\n*L\n31#1:69,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0001\u001aE\u0010\r\u001a\u00020\u0004*\u00020\u00062\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00012\u0008\u0008\u0002\u0010\n\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a<\u0010\u0010\u001a\u00020\u0004*\u00020\u00062\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00012\u0008\u0008\u0002\u0010\n\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0001\u001a\u0016\u0010\u0013\u001a\u00020\u0004*\u00020\u00062\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroid/view/View;",
        "",
        "visible",
        "keepInLayout",
        "",
        "h",
        "Landroid/widget/TextView;",
        "",
        "resId",
        "left",
        "top",
        "right",
        "bottom",
        "c",
        "(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZ)V",
        "color",
        "f",
        "",
        "title",
        "a",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bg_profile"

    const-string v3, "drawable"

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/im/freechat/utils/v;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZ)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/im/freechat/utils/v;->e(ZLjava/lang/Integer;)I

    move-result p2

    invoke-static {p3, p1}, Lcom/im/freechat/utils/v;->e(ZLjava/lang/Integer;)I

    move-result p3

    invoke-static {p4, p1}, Lcom/im/freechat/utils/v;->e(ZLjava/lang/Integer;)I

    move-result p4

    invoke-static {p5, p1}, Lcom/im/freechat/utils/v;->e(ZLjava/lang/Integer;)I

    move-result p1

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/4 p7, 0x0

    goto :goto_0

    :cond_1
    move p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v1

    move p6, v2

    move p7, v0

    invoke-static/range {p2 .. p7}, Lcom/im/freechat/utils/v;->c(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZ)V

    return-void
.end method

.method private static final e(ZLjava/lang/Integer;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static final f(Landroid/widget/TextView;IZZZZ)V
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "compoundDrawables"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    if-eqz v4, :cond_4

    if-nez v3, :cond_0

    if-nez p2, :cond_3

    :cond_0
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    if-nez p3, :cond_3

    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    if-nez p4, :cond_3

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    if-eqz p5, :cond_4

    .line 3
    :cond_3
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static synthetic g(Landroid/widget/TextView;IZZZZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/im/freechat/utils/v;->f(Landroid/widget/TextView;IZZZZ)V

    return-void
.end method

.method public static final h(Landroid/view/View;ZZ)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic i(Landroid/view/View;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/im/freechat/utils/v;->h(Landroid/view/View;ZZ)V

    return-void
.end method
