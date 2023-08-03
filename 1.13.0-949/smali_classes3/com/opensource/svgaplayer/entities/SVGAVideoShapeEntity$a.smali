.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;
.super Ljava/lang/Object;
.source "SVGAVideoShapeEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0014\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008(\u0010)R*\u0010\t\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R*\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R*\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u000e8\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R*\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00168\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\n\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00168\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u0017\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR*\u0010!\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0005\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008 \u0010\u0008R*\u0010\'\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\"8\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010#\u001a\u0004\u0008\u000f\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;",
        "",
        "",
        "<set-?>",
        "a",
        "I",
        "()I",
        "h",
        "(I)V",
        "fill",
        "b",
        "f",
        "m",
        "stroke",
        "",
        "c",
        "F",
        "g",
        "()F",
        "n",
        "(F)V",
        "strokeWidth",
        "",
        "d",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "i",
        "(Ljava/lang/String;)V",
        "lineCap",
        "e",
        "k",
        "lineJoin",
        "l",
        "miterLimit",
        "",
        "[F",
        "()[F",
        "j",
        "([F)V",
        "lineDash",
        "<init>",
        "()V",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private f:I

.field private g:[F
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "butt"

    .line 2
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->d:Ljava/lang/String;

    const-string v0, "miter"

    .line 3
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->g:[F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[F
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->g:[F

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->f:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->b:I

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->c:F

    return v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->a:I

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final j([F)V
    .locals 0
    .param p1    # [F
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->g:[F

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->e:Ljava/lang/String;

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->f:I

    return-void
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->b:I

    return-void
.end method

.method public final n(F)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;->c:F

    return-void
.end method
