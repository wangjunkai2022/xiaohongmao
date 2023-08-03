.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;
.super Landroid/text/style/CharacterStyle;
.source "LinearGradientForegroundSpan.kt"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B7\u0008\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0010\u001a\u00020\r\u0012\u0008\u0008\u0001\u0010\u0012\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;",
        "Landroid/text/style/CharacterStyle;",
        "Landroid/text/style/UpdateAppearance;",
        "Landroid/text/TextPaint;",
        "tp",
        "",
        "updateDrawState",
        "",
        "a",
        "Ljava/lang/String;",
        "containingText",
        "b",
        "textToStyle",
        "",
        "c",
        "I",
        "startColorInt",
        "d",
        "endColorInt",
        "",
        "e",
        "F",
        "knownWidth",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IIF)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "containingText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textToStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;-><init>(Ljava/lang/String;Ljava/lang/String;IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "containingText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textToStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->c:I

    .line 6
    iput p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->d:I

    .line 7
    iput p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->e:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/high16 p5, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;-><init>(Ljava/lang/String;Ljava/lang/String;IIF)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 11
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->e:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->b:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    .line 4
    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->e:F

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v2

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 6
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->e:F

    sub-float/2addr v0, v4

    goto :goto_3

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->a:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 9
    invoke-virtual {p1, v1, v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v0

    .line 10
    :goto_3
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    add-float v6, v4, v0

    const/4 v7, 0x0

    .line 11
    iget v8, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->c:I

    .line 12
    iget v9, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;->d:I

    .line 13
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
