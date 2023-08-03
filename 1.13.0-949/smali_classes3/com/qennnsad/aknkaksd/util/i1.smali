.class public Lcom/qennnsad/aknkaksd/util/i1;
.super Ljava/lang/Object;
.source "SensorUtils.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final h:I = 0x1f4


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/SensorManager;

.field private c:J

.field private d:F

.field private e:F

.field private f:F

.field private g:Lcom/qennnsad/aknkaksd/data/bean/register/SenList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->b:Landroid/hardware/SensorManager;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->g:Lcom/qennnsad/aknkaksd/data/bean/register/SenList;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/i1;->a:Landroid/content/Context;

    const-string v0, "sensor"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/i1;->b:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->g:Lcom/qennnsad/aknkaksd/data/bean/register/SenList;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/i1;->b:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->d:F

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->e:F

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->f:F

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/qennnsad/aknkaksd/util/i1;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->c:J

    .line 4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 6
    aget v1, p1, v1

    const/4 v4, 0x2

    .line 7
    aget p1, p1, v4

    .line 8
    iget v4, p0, Lcom/qennnsad/aknkaksd/util/i1;->d:F

    sub-float v4, v0, v4

    .line 9
    iget v5, p0, Lcom/qennnsad/aknkaksd/util/i1;->e:F

    sub-float v5, v1, v5

    .line 10
    iget v6, p0, Lcom/qennnsad/aknkaksd/util/i1;->f:F

    sub-float v6, p1, v6

    .line 11
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/i1;->d:F

    .line 12
    iput v1, p0, Lcom/qennnsad/aknkaksd/util/i1;->e:F

    .line 13
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/i1;->f:F

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    mul-float v6, v6, v6

    add-float/2addr v4, v6

    float-to-double v0, v4

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    .line 15
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/i1;->g:Lcom/qennnsad/aknkaksd/data/bean/register/SenList;

    new-instance v2, Lcom/qennnsad/aknkaksd/data/bean/register/Node;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/data/bean/register/Node;-><init>(Ljava/lang/Double;)V

    invoke-virtual {p1, v2}, Lcom/qennnsad/aknkaksd/data/bean/register/SenList;->add(Lcom/qennnsad/aknkaksd/data/bean/register/Node;)V

    return-void
.end method
