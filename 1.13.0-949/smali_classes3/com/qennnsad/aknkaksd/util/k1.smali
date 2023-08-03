.class public final Lcom/qennnsad/aknkaksd/util/k1;
.super Ljava/lang/Object;
.source "TextMeasurementUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/k1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextMeasurementUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextMeasurementUtil.kt\ncom/qennnsad/aknkaksd/util/TextMeasurementUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1549#2:177\n1620#2,3:178\n1549#2:181\n1620#2,3:182\n*S KotlinDebug\n*F\n+ 1 TextMeasurementUtil.kt\ncom/qennnsad/aknkaksd/util/TextMeasurementUtil\n*L\n21#1:177\n21#1:178,3\n33#1:181\n33#1:182,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0008J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u0008J\u0016\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/k1;",
        "",
        "",
        "text",
        "Lcom/qennnsad/aknkaksd/util/k1$a;",
        "params",
        "Landroid/text/StaticLayout;",
        "d",
        "Landroid/widget/TextView;",
        "textView",
        "c",
        "",
        "h",
        "",
        "f",
        "g",
        "e",
        "i",
        "line",
        "",
        "b",
        "content",
        "a",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/util/k1;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/k1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/k1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/k1;->a:Lcom/qennnsad/aknkaksd/util/k1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Landroid/widget/TextView;)Landroid/text/StaticLayout;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    .line 4
    invoke-static {v1, v2, v3, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    const-string v2, "obtain(\n                \u2026iew.hyphenationFrequency)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    :cond_0
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    :cond_1
    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 13
    :cond_2
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    const-string v0, "{\n            val builde\u2026builder.build()\n        }"

    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    new-instance v0, Landroid/text/StaticLayout;

    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    .line 19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    .line 21
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v8

    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final d(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)Landroid/text/StaticLayout;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->v()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->x()I

    move-result v4

    invoke-static {p1, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->n()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->s()F

    move-result v1

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->t()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->q()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->o()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->p()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const-string v1, "obtain(text, 0, text.len\u2026ams.hyphenationFrequency)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->r()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->w()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    :cond_1
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 10
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->u()Landroid/text/TextDirectionHeuristic;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    const-string p2, "{\n            val builde\u2026builder.build()\n        }"

    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance v8, Landroid/text/StaticLayout;

    .line 14
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->v()Landroid/text/TextPaint;

    move-result-object v2

    .line 15
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->x()I

    move-result v3

    .line 16
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->n()Landroid/text/Layout$Alignment;

    move-result-object v4

    .line 17
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->t()F

    move-result v5

    .line 18
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->s()F

    move-result v6

    .line 19
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/k1$a;->q()Z

    move-result v7

    move-object v0, v8

    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object p1, v8

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/util/k1$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/k1;->d(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)F
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/util/k1$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/k1;->d(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)Landroid/text/StaticLayout;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    return p1
.end method

.method public final e(Landroid/widget/TextView;)I
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/k1;->c(Landroid/widget/TextView;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/util/k1$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/k1;->d(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    return p1
.end method

.method public final g(Landroid/widget/TextView;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/k1;->c(Landroid/widget/TextView;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    invoke-interface {v3, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final h(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/util/k1$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/qennnsad/aknkaksd/util/k1$a;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/k1;->d(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-interface {v2, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final i(Landroid/widget/TextView;)Lcom/qennnsad/aknkaksd/util/k1$a;
    .locals 16
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "textView"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v15, v2, v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v8

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v9

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v5

    move v10, v5

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v3

    move v11, v3

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v3

    move v12, v3

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_3

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    const/16 v3, 0x1d

    const/4 v4, 0x0

    if-lt v2, v3, :cond_4

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    move-object v14, v1

    goto :goto_4

    :cond_4
    move-object v14, v4

    :goto_4
    if-eqz v0, :cond_5

    .line 11
    new-instance v1, Lcom/qennnsad/aknkaksd/util/k1$a;

    .line 12
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const-string v2, "layout.paint"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    const-string v0, "layout.alignment"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    .line 14
    invoke-direct/range {v4 .. v15}, Lcom/qennnsad/aknkaksd/util/k1$a;-><init>(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;FFZIIIZLandroid/text/TextDirectionHeuristic;I)V

    :cond_5
    return-object v4
.end method
