.class public final Lcom/qennnsad/aknkaksd/util/j1$d;
.super Landroid/text/style/CharacterStyle;
.source "Spans.kt"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\tR\u0014\u0010\u0010\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/j1$d;",
        "Landroid/text/style/CharacterStyle;",
        "Landroid/text/style/UpdateAppearance;",
        "Landroid/text/TextPaint;",
        "tp",
        "",
        "updateDrawState",
        "",
        "a",
        "I",
        "startColor",
        "b",
        "endColor",
        "c",
        "lineWidth",
        "d",
        "lineHeight",
        "<init>",
        "(IIII)V",
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
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->a:I

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->b:I

    .line 4
    iput p3, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->c:I

    .line 5
    iput p4, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->d:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 9
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "tp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->c:I

    int-to-float v4, v1

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->d:I

    int-to-float v5, v1

    .line 3
    iget v6, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->a:I

    iget v7, p0, Lcom/qennnsad/aknkaksd/util/j1$d;->b:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    .line 4
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
