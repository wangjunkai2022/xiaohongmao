.class public final Lu4/f;
.super Ljava/lang/Object;
.source "SVGAScaleInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J.\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tR\"\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\"\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\r\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011R\"\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\r\u001a\u0004\u0008\u0019\u0010\u000f\"\u0004\u0008\u001a\u0010\u0011R\"\u0010\u001b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\r\u001a\u0004\u0008\u001c\u0010\u000f\"\u0004\u0008\u001d\u0010\u0011R\"\u0010\u001f\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lu4/f;",
        "",
        "",
        "h",
        "",
        "canvasWidth",
        "canvasHeight",
        "videoWidth",
        "videoHeight",
        "Landroid/widget/ImageView$ScaleType;",
        "scaleType",
        "g",
        "tranFx",
        "F",
        "e",
        "()F",
        "m",
        "(F)V",
        "tranFy",
        "f",
        "n",
        "scaleFx",
        "c",
        "k",
        "scaleFy",
        "d",
        "l",
        "ratio",
        "a",
        "i",
        "",
        "ratioX",
        "Z",
        "b",
        "()Z",
        "j",
        "(Z)V",
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
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lu4/f;->c:F

    .line 3
    iput v0, p0, Lu4/f;->d:F

    .line 4
    iput v0, p0, Lu4/f;->e:F

    return-void
.end method

.method private final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lu4/f;->a:F

    .line 2
    iput v0, p0, Lu4/f;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lu4/f;->c:F

    .line 4
    iput v0, p0, Lu4/f;->d:F

    .line 5
    iput v0, p0, Lu4/f;->e:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lu4/f;->f:Z

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lu4/f;->e:F

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lu4/f;->f:Z

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lu4/f;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lu4/f;->d:F

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lu4/f;->a:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lu4/f;->b:F

    return v0
.end method

.method public final g(FFFFLandroid/widget/ImageView$ScaleType;)V
    .locals 9
    .param p5    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-eqz v1, :cond_8

    cmpg-float v1, p2, v0

    if-eqz v1, :cond_8

    cmpg-float v1, p3, v0

    if-eqz v1, :cond_8

    cmpg-float v0, p4, v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lu4/f;->h()V

    sub-float v0, p1, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v2, p2, p4

    div-float/2addr v2, v1

    div-float v3, p3, p4

    div-float v4, p1, p2

    div-float v5, p2, p4

    div-float v6, p1, p3

    .line 2
    sget-object v7, Lu4/e;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p5

    aget p5, v7, p5

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p5, :pswitch_data_0

    .line 3
    iput v6, p0, Lu4/f;->e:F

    .line 4
    iput-boolean v8, p0, Lu4/f;->f:Z

    .line 5
    iput v6, p0, Lu4/f;->c:F

    .line 6
    iput v6, p0, Lu4/f;->d:F

    goto/16 :goto_0

    .line 7
    :pswitch_0
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lu4/f;->e:F

    cmpl-float p1, v6, v5

    if-lez p1, :cond_1

    const/4 v7, 0x1

    .line 8
    :cond_1
    iput-boolean v7, p0, Lu4/f;->f:Z

    .line 9
    iput v6, p0, Lu4/f;->c:F

    .line 10
    iput v5, p0, Lu4/f;->d:F

    goto/16 :goto_0

    :pswitch_1
    cmpl-float p5, v3, v4

    if-lez p5, :cond_2

    .line 11
    iput v6, p0, Lu4/f;->e:F

    .line 12
    iput-boolean v8, p0, Lu4/f;->f:Z

    .line 13
    iput v6, p0, Lu4/f;->c:F

    .line 14
    iput v6, p0, Lu4/f;->d:F

    mul-float p4, p4, v6

    sub-float/2addr p2, p4

    .line 15
    iput p2, p0, Lu4/f;->b:F

    goto/16 :goto_0

    .line 16
    :cond_2
    iput v5, p0, Lu4/f;->e:F

    .line 17
    iput-boolean v7, p0, Lu4/f;->f:Z

    .line 18
    iput v5, p0, Lu4/f;->c:F

    .line 19
    iput v5, p0, Lu4/f;->d:F

    mul-float p3, p3, v5

    sub-float/2addr p1, p3

    .line 20
    iput p1, p0, Lu4/f;->a:F

    goto/16 :goto_0

    :pswitch_2
    cmpl-float p1, v3, v4

    if-lez p1, :cond_3

    .line 21
    iput v6, p0, Lu4/f;->e:F

    .line 22
    iput-boolean v8, p0, Lu4/f;->f:Z

    .line 23
    iput v6, p0, Lu4/f;->c:F

    .line 24
    iput v6, p0, Lu4/f;->d:F

    goto/16 :goto_0

    .line 25
    :cond_3
    iput v5, p0, Lu4/f;->e:F

    .line 26
    iput-boolean v7, p0, Lu4/f;->f:Z

    .line 27
    iput v5, p0, Lu4/f;->c:F

    .line 28
    iput v5, p0, Lu4/f;->d:F

    goto/16 :goto_0

    :pswitch_3
    cmpl-float p5, v3, v4

    if-lez p5, :cond_4

    .line 29
    iput v6, p0, Lu4/f;->e:F

    .line 30
    iput-boolean v8, p0, Lu4/f;->f:Z

    .line 31
    iput v6, p0, Lu4/f;->c:F

    .line 32
    iput v6, p0, Lu4/f;->d:F

    mul-float p4, p4, v6

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 33
    iput p2, p0, Lu4/f;->b:F

    goto :goto_0

    .line 34
    :cond_4
    iput v5, p0, Lu4/f;->e:F

    .line 35
    iput-boolean v7, p0, Lu4/f;->f:Z

    .line 36
    iput v5, p0, Lu4/f;->c:F

    .line 37
    iput v5, p0, Lu4/f;->d:F

    mul-float p3, p3, v5

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 38
    iput p1, p0, Lu4/f;->a:F

    goto :goto_0

    :pswitch_4
    cmpg-float p5, p3, p1

    if-gez p5, :cond_5

    cmpg-float p5, p4, p2

    if-gez p5, :cond_5

    .line 39
    iput v0, p0, Lu4/f;->a:F

    .line 40
    iput v2, p0, Lu4/f;->b:F

    goto :goto_0

    :cond_5
    cmpl-float p5, v3, v4

    if-lez p5, :cond_6

    .line 41
    iput v6, p0, Lu4/f;->e:F

    .line 42
    iput-boolean v8, p0, Lu4/f;->f:Z

    .line 43
    iput v6, p0, Lu4/f;->c:F

    .line 44
    iput v6, p0, Lu4/f;->d:F

    mul-float p4, p4, v6

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 45
    iput p2, p0, Lu4/f;->b:F

    goto :goto_0

    .line 46
    :cond_6
    iput v5, p0, Lu4/f;->e:F

    .line 47
    iput-boolean v7, p0, Lu4/f;->f:Z

    .line 48
    iput v5, p0, Lu4/f;->c:F

    .line 49
    iput v5, p0, Lu4/f;->d:F

    mul-float p3, p3, v5

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 50
    iput p1, p0, Lu4/f;->a:F

    goto :goto_0

    :pswitch_5
    cmpl-float p5, v3, v4

    if-lez p5, :cond_7

    .line 51
    iput v5, p0, Lu4/f;->e:F

    .line 52
    iput-boolean v7, p0, Lu4/f;->f:Z

    .line 53
    iput v5, p0, Lu4/f;->c:F

    .line 54
    iput v5, p0, Lu4/f;->d:F

    mul-float p3, p3, v5

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 55
    iput p1, p0, Lu4/f;->a:F

    goto :goto_0

    .line 56
    :cond_7
    iput v6, p0, Lu4/f;->e:F

    .line 57
    iput-boolean v8, p0, Lu4/f;->f:Z

    .line 58
    iput v6, p0, Lu4/f;->c:F

    .line 59
    iput v6, p0, Lu4/f;->d:F

    mul-float p4, p4, v6

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 60
    iput p2, p0, Lu4/f;->b:F

    goto :goto_0

    .line 61
    :pswitch_6
    iput v0, p0, Lu4/f;->a:F

    .line 62
    iput v2, p0, Lu4/f;->b:F

    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Lu4/f;->e:F

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lu4/f;->f:Z

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, Lu4/f;->c:F

    return-void
.end method

.method public final l(F)V
    .locals 0

    iput p1, p0, Lu4/f;->d:F

    return-void
.end method

.method public final m(F)V
    .locals 0

    iput p1, p0, Lu4/f;->a:F

    return-void
.end method

.method public final n(F)V
    .locals 0

    iput p1, p0, Lu4/f;->b:F

    return-void
.end method
