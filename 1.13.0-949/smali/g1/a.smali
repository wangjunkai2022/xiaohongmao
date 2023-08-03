.class public Lg1/a;
.super Ljava/lang/Object;
.source "MiddlewareUtils.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;Landroid/net/Uri;)Li1/c$a;
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/PointF;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p8    # Landroid/net/Uri;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentAttribution",
            "shortcutAttribution",
            "dataSourceExtras",
            "viewportDimensions",
            "scaleType",
            "focusPoint",
            "imageExtras",
            "callerContext",
            "mainUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Landroid/graphics/PointF;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/net/Uri;",
            ")",
            "Li1/c$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Li1/c$a;

    invoke-direct {v0}, Li1/c$a;-><init>()V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Li1/c$a;->g:I

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iput p3, v0, Li1/c$a;->h:I

    .line 4
    :cond_0
    iput-object p4, v0, Li1/c$a;->i:Ljava/lang/Object;

    if-eqz p5, :cond_1

    .line 5
    iget p3, p5, Landroid/graphics/PointF;->x:F

    iput p3, v0, Li1/c$a;->j:F

    .line 6
    iget p3, p5, Landroid/graphics/PointF;->y:F

    iput p3, v0, Li1/c$a;->k:F

    .line 7
    :cond_1
    iput-object p7, v0, Li1/c$a;->e:Ljava/lang/Object;

    .line 8
    iput-object p8, v0, Li1/c$a;->f:Landroid/net/Uri;

    .line 9
    iput-object p2, v0, Li1/c$a;->c:Ljava/util/Map;

    .line 10
    iput-object p6, v0, Li1/c$a;->d:Ljava/util/Map;

    .line 11
    iput-object p1, v0, Li1/c$a;->b:Ljava/util/Map;

    .line 12
    iput-object p0, v0, Li1/c$a;->a:Ljava/util/Map;

    return-object v0
.end method
