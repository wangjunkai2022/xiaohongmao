.class final Lcom/gigamole/infinitecycleviewpager/b$g;
.super Ljava/lang/Object;
.source "InfiniteCycleManager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# static fields
.field private static final b:F = 0.5f


# instance fields
.field final synthetic a:Lcom/gigamole/infinitecycleviewpager/b;


# direct methods
.method private constructor <init>(Lcom/gigamole/infinitecycleviewpager/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$g;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/b$g;-><init>(Lcom/gigamole/infinitecycleviewpager/b;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/high16 v2, 0x3e000000    # 0.125f

    sub-float/2addr p1, v2

    float-to-double v2, p1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
